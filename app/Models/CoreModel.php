<?php

namespace App\Models;

use App\Traits\Database;
use Dibi\Connection;

class CoreModel
{
    use Database;
    protected Connection $database;

    public function __construct()
    {
        $this->database = $this->connect();
    }
}