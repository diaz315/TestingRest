<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class CI_DB_mongodb_utility extends CI_DB_utility {

    /**
     * List collections
     *
     * @return array
     */
    public function list_collections()
    {
        try {
            $collections = [];
            foreach ($this->db->_database->listCollections() as $collection) {
                $collections[] = $collection->getName();
            }
            return $collections;
        } catch (MongoDB\Driver\Exception\Exception $e) {
            log_message('error', $e->getMessage());
            return array();
        }
    }

    /**
     * Export/Backup Database
     *
     * @param array $params
     * @return mixed
     */
    protected function _backup($params = array())
    {
        // MongoDB provides mongodump utility for backups
        // This method could implement system calls to mongodump
        // However, it's generally better to use MongoDB's native tools
        return FALSE;
    }
}