<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class CI_DB_mongodb_driver extends CI_DB_query_builder {

    /**
     * Database driver
     * @var string
     */
    public $dbdriver = 'mongodb';

    /**
     * MongoDB Connection instance
     * @var MongoDB\Driver\Manager
     */
    protected $_mongo_connection;

    /**
     * Current database 
     * @var string
     */
    protected $_current_db;

    /**
     * Current collection
     * @var string
     */
    protected $_collection;

    // --------------------------------------------------------------------

    /**
     * Class constructor
     * @param array $params
     */
    public function __construct($params)
    {
        parent::__construct($params);

        if (!empty($this->port)) {
            $this->hostname .= ':'.$this->port;
        }
    }

    // --------------------------------------------------------------------

    /**
     * Database connection
     *
     * @param bool $persistent
     * @return bool
     */
    public function db_connect($persistent = FALSE)
    {
        try {
            $dsn = "mongodb://{$this->hostname}";
            
            $options = array(
                'connectTimeoutMS' => 60000,
                'retryWrites' => true
            );
            
            if (!empty($this->username) && !empty($this->password)) {
                $options['username'] = $this->username;
                $options['password'] = $this->password;
            }
            
            $this->_mongo_connection = new MongoDB\Driver\Manager($dsn, $options);
            
            if ($this->database !== '') {
                $this->db_select($this->database);
            }
            
            return TRUE;
            
        } catch (MongoDB\Driver\Exception\Exception $e) {
            log_message('error', $e->getMessage());
            return FALSE;
        }
    }

    // --------------------------------------------------------------------

    /**
     * Execute the query
     *
     * @param string $sql
     * @return mixed
     */
    protected function _execute($sql)
    {
        $command = new MongoDB\Driver\Command(['ping' => 1]);
        
        try {
            $cursor = $this->_mongo_connection->executeCommand($this->database, $command);
            return $cursor;
        } catch (MongoDB\Driver\Exception\Exception $e) {
            log_message('error', $e->getMessage());
            return FALSE;
        }
    }

    // --------------------------------------------------------------------

    /**
     * Platform-specific query string escaping
     *
     * @param string $str
     * @return string
     */
    protected function _escape_str($str)
    {
        return $str;
    }

    // --------------------------------------------------------------------

    /**
     * "Smart" Escape String
     *
     * @param string $str
     * @return string
     */
    public function escape_str($str)
    {
        return $str;
    }

    // --------------------------------------------------------------------

    /**
     * Get the query builder result
     * Converts QB arrays into MongoDB query
     *
     * @return MongoDB\Driver\Cursor
     */
    public function get($table = '', $limit = null, $offset = null)
    {
        if ($table !== '') {
            $this->_collection = $table;
        }

        // Build MongoDB query from QB arrays
        $filter = array();
        foreach ($this->qb_where as $where) {
            if (isset($where['condition'])) {
                list($field, $value) = $this->_process_where_condition($where['condition']);
                $filter[$field] = $value;
            }
        }

        $options = array();
        
        // Handle limit and offset
        if ($limit !== null) {
            $options['limit'] = $limit;
        }
        if ($offset !== null) {
            $options['skip'] = $offset;
        }

        // Handle projections (SELECT fields)
        if (!empty($this->qb_select)) {
            $options['projection'] = array();
            foreach ($this->qb_select as $field) {
                $options['projection'][$field] = 1;
            }
        }

        try {
            $query = new MongoDB\Driver\Query($filter, $options);
            $cursor = $this->_mongo_connection->executeQuery(
                $this->database . '.' . $this->_collection,
                $query
            );

            // Reset QB
            $this->_reset_select();

            // Return a result object that matches CI's expectations
            return new CI_DB_mongodb_result($cursor);

        } catch (MongoDB\Driver\Exception\Exception $e) {
            log_message('error', $e->getMessage());
            return FALSE;
        }
    }

    // --------------------------------------------------------------------

    /**
     * Process WHERE condition for MongoDB
     *
     * @param string $condition
     * @return array [field, value]
     */
    protected function _process_where_condition($condition)
    {
        // Remove any AND, OR prefixes
        $condition = preg_replace('/^(AND|OR)\s+/i', '', trim($condition));
        
        // Split into field and value
        if (preg_match('/^(.+?)\s*(=|!=|<|>|<=|>=)\s*(.+)$/', $condition, $matches)) {
            $field = trim($matches[1]);
            $operator = $matches[2];
            $value = trim($matches[3], ' \'"');
            
            switch ($operator) {
                case '=':
                    return array($field, $value);
                case '!=':
                    return array($field, array('$ne' => $value));
                case '<':
                    return array($field, array('$lt' => $value));
                case '>':
                    return array($field, array('$gt' => $value));
                case '<=':
                    return array($field, array('$lte' => $value));
                case '>=':
                    return array($field, array('$gte' => $value));
            }
        }
        
        return array($condition, true);
    }
}