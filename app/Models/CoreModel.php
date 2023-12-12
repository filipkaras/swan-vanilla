<?php

namespace Models;

use Dibi;

class CoreModel
{
    protected $database;

    function __construct()
    {
        $env = parse_ini_file('.env');

        try {
            $this->database = new Dibi\Connection([
                'driver' => 'mysqli',
                'host' => $env['database.hostname'],
                'username' => $env['database.username'],
                'password' => $env['database.password'],
                'database' => $env['database.database']
            ]);
        } catch (Dibi\Exception $e) {
            die($e->getMessage());
        }
    }
}