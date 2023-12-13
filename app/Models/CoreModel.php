<?php

namespace Models;

use Dibi\Connection;
use Dibi\Exception;

class CoreModel
{
    protected Connection $database;

    function __construct()
    {
        $env = parse_ini_file('.env');

        try {
            $this->database = new Connection([
                'driver' => 'mysqli',
                'host' => $env['database.hostname'],
                'username' => $env['database.username'],
                'password' => $env['database.password'],
                'database' => $env['database.database']
            ]);
        } catch (Exception $e) {
            die($e->getMessage());
        }
    }
}