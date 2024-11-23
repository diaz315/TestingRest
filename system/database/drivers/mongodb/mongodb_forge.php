<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class CI_DB_mongodb_forge extends CI_DB_forge {

    /**
     * CREATE DATABASE statement
     *
     * @var string
     */
    protected $_create_database = false;

    /**
     * DROP DATABASE statement
     *
     * @var string
     */
    protected $_drop_database = false;

    // --------------------------------------------------------------------

    /**
     * Create database
     *
     * @param string $db_name
     * @return bool
     */
    public function create_database($db_name)
    {
        // MongoDB creates databases automatically when collections are created
        try {
            $command = new MongoDB\Driver\Command(['create' => 'dummy_collection']);
            $this->db->_mongo_connection->executeCommand($db_name, $command);
            return TRUE;
        } catch (MongoDB\Driver\Exception\Exception $e) {
            return FALSE;
        }
    }

    // --------------------------------------------------------------------

    /**
     * Drop database
     *
     * @param string $db_name
     * @return bool
     */
    public function drop_database($db_name)
    {
        try {
            $command = new MongoDB\Driver\Command(['dropDatabase' => 1]);
            $this->db->_mongo_connection->executeCommand($db_name, $command);
            return TRUE;
        } catch (MongoDB\Driver\Exception\Exception $e) {
            return FALSE;
        }
    }

    // --------------------------------------------------------------------

    /**
     * Create Table
     *
     * @param string $table
     * @param array $fields
     * @param mixed $primary_keys
     * @param mixed $keys
     * @param bool $if_not_exist
     * @return bool
     */
    public function create_table($table, $fields = array(), $primary_keys = FALSE, $keys = FALSE, $if_not_exist = FALSE)
    {
        try {
            // MongoDB collections are schema-less but we can create validators
            $validator = $this->_build_validator($fields);
            
            $options = [
                'validator' => $validator,
                'validationLevel' => 'moderate'
            ];

            $command = new MongoDB\Driver\Command([
                'create' => $table,
                'validator' => $validator
            ]);

            $this->db->_mongo_connection->executeCommand($this->db->database, $command);

            // Create indexes if specified
            if ($keys !== FALSE) {
                $this->_process_indexes($table, $keys);
            }

            return TRUE;
        } catch (MongoDB\Driver\Exception\Exception $e) {
            return FALSE;
        }
    }

    // --------------------------------------------------------------------

    /**
     * Build validator schema from fields
     *
     * @param array $fields
     * @return array
     */
    protected function _build_validator($fields)
    {
        $properties = [];
        
        foreach ($fields as $field_name => $field) {
            if (is_array($field)) {
                $properties[$field_name] = $this->_get_mongo_type($field['type']);
            }
        }

        return ['$jsonSchema' => [
            'bsonType' => 'object',
            'required' => array_keys($properties),
            'properties' => $properties
        ]];
    }

    // --------------------------------------------------------------------

    /**
     * Get MongoDB type from SQL type
     *
     * @param string $sql_type
     * @return string
     */
    protected function _get_mongo_type($sql_type)
    {
        $type_map = [
            'INT' => ['bsonType' => 'int'],
            'BIGINT' => ['bsonType' => 'long'],
            'VARCHAR' => ['bsonType' => 'string'],
            'TEXT' => ['bsonType' => 'string'],
            'DATE' => ['bsonType' => 'date'],
            'DATETIME' => ['bsonType' => 'date'],
            'BOOLEAN' => ['bsonType' => 'bool'],
            'FLOAT' => ['bsonType' => 'double'],
            'DOUBLE' => ['bsonType' => 'double']
        ];

        return isset($type_map[strtoupper($sql_type)]) 
            ? $type_map[strtoupper($sql_type)]
            : ['bsonType' => 'string'];
    }
}