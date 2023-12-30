<?php

namespace App\Controllers;

use Nette\Forms\Form;
use App\Repositories\UserRepository;

class UserController extends CoreController
{
    private UserRepository $userRepository;

    public function __construct()
    {
        parent::__construct();

        $this->userRepository = new UserRepository();
    }

    public function signIn(): void
    {
        $result = $this->userRepository->processForm();

        if ($result === false) {
            $this->flashMessage(MSG_ERROR, 'Invalid credentials.');
            redirect('/auth/signIn');
        }
        elseif ($result === true) {
            redirect('/todos');
        }

        $this->smarty->assign('form', $this->userRepository->form);

        $this->smarty->display('auth/sign-in.tpl');
    }

    public function signOut(): void
    {
        $_SESSION['user'] = null;

        redirect('/auth/signIn');
    }
}