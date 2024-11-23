<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class CI_DB_mongodb_result extends CI_DB_result {

    /**
     * Number of rows in the result set
     *
     * @return int
     */
    public function num_rows()
    {
        if (is_array($this->result_id)) {
            return count($this->result_id);
        }
        
        return iterator_count($this->result_id);
    }

    // --------------------------------------------------------------------

    /**
     * Number of fields in the result set
     *
     * @return int
     */
    public function num_fields()
    {
        // Get first document to count fields
        $first = $this->_fetch_assoc();
        return is_array($first) ? count($first) : 0;
    }

    // --------------------------------------------------------------------

    /**
     * Fetch Field Names
     *
     * @return array
     */
    public function list_fields()
    {
        // Get first document to extract field names
        $first = $this->_fetch_assoc();
        return is_array($first) ? array_keys($first) : [];
    }

    // --------------------------------------------------------------------

    /**
     * Field data
     *
     * @return array
     */
    public function field_data()
    {
        $first = $this->_fetch_assoc();
        if (!is_array($first)) {
            return [];
        }

        $retval = [];
        foreach ($first as $key => $value) {
            $field = new stdClass();
            $field->name = $key;
            $field->type = gettype($value);
            $field->max_length = null; // MongoDB is schema-less
            $retval[] = $field;
        }

        return $retval;
    }

    // --------------------------------------------------------------------

    /**
     * Free the result
     *
     * @return void
     */
    public function free_result()
    {
        if (is_object($this->result_id)) {
            unset($this->result_id);
        }
    }

    // --------------------------------------------------------------------

    /**
     * Data Seek
     *
     * @param int $n
     * @return bool
     */
    public function data_seek($n = 0)
    {
        if (is_array($this->result_id)) {
            return TRUE;
        }
        
        return $this->result_id->rewind();
    }

    // --------------------------------------------------------------------

    /**
     * Result - associative array
     *
     * @return array
     */
    protected function _fetch_assoc()
    {
        if (is_array($this->result_id)) {
            $result = current($this->result_id);
            next($this->result_id);
            return $result;
        }
        
        if ($this->result_id->valid()) {
            $result = $this->result_id->current();
            $this->result_id->next();
            return (array)$result;
        }
        
        return NULL;
    }

    // --------------------------------------------------------------------

    /**
     * Result - object
     *
     * @param string $class_name
     * @return object
     */
    protected function _fetch_object($class_name = 'stdClass')
    {
        $row = $this->_fetch_assoc();
        if ($row !== NULL) {
            $object = new $class_name();
            foreach ($row as $key => $value) {
                $object->$key = $value;
            }
            return $object;
        }
        return NULL;
    }
}