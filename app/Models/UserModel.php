<?php

namespace Models;

use Dibi\Row;

class UserModel extends CoreModel
{
    public function verifyCredentials($username, $password): array|Row|null
    {
        return $this->database->select('*')->from('users')->where('username = %s', $username)->where('password = %s', md5($password))->fetch();
    }
}