<?php

namespace App\Controllers;

use Smarty;

abstract class AuthController extends CoreController
{
    protected object $user;

    public function __construct()
    {
        parent::__construct();

        if (empty($_SESSION['user'])) {
            redirect('/auth/signIn');
        }

        $this->user = $_SESSION['user'];
    }
}