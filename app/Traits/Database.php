<?php

namespace App\Traits;

use Dibi\Connection;
use Dibi\Exception;

trait Database {
    protected function connect()
    {
        $env = parse_ini_file('.env');

        try {
            return new Connection([
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