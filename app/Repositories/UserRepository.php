<?php

namespace App\Repositories;

use App\Models\UserModel;
use Nette\Forms\Form;

class UserRepository extends Repository
{
    public function generateForm(): void
    {
        $this->form->addText('username', 'Username')
            ->addRule(FORM::Filled, 'Please enter username');

        $this->form->addPassword('password', 'Password')
            ->addRule(FORM::Filled, 'Please enter password');

        $this->form->addSubmit('submit', 'Login');
    }

    public function processFormSubmit($values, ?int $id = null): bool
    {
        $userModel = new UserModel();
        if (!$user = $userModel->verifyCredentials($values->username, $values->password)) return false;

        unset($user['password']);
        $_SESSION['user'] =  $user;
        return true;
    }

    public function getDefaults($id): array
    {
        return [];
    }
}