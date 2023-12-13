<?php

namespace App\Controllers;

use App\Models\UserModel;
use Nette\Forms\Form;
use Nette\Forms\Rendering\BootstrapFormRenderer;

class UserController extends CoreController
{
    private Form $form;

    public function signIn(): void
    {
        $this->form = $this->generateForm();
        $this->processForm();

        $this->smarty->assign('form', $this->form);

        $this->smarty->display('auth/sign-in.tpl');
    }

    public function signOut(): void
    {
        $_SESSION['user'] = null;

        redirect('/auth/signIn');
    }

    private function generateForm(): Form
    {
        $form = new Form('sign-in');

        $form->setRenderer(new BootstrapFormRenderer());

        $form->addText('username', 'Username')
             ->addRule(FORM::Filled, 'Please enter username');

        $form->addPassword('password', 'Password')
             ->addRule(FORM::Filled, 'Please enter password');

        $form->addSubmit('submit', 'Login');

        return $form;
    }

    private function processForm(): void
    {
        if ($this->form->isSubmitted())
        {
            if ($this->form->isValid())
            {
                $this->verifyCredentials($this->form->getValues());
            }
        }
    }

    private function verifyCredentials($values): void
    {
        $userModel = new UserModel();
        $user = $userModel->verifyCredentials($values->username, $values->password);

        if ($user) {
            unset($user['password']);
            $_SESSION['user'] =  $user;
            redirect('/todos');
        } else {
            $this->flashMessage(MSG_ERROR, 'Invalid credentials.');
            redirect('/auth/signIn');
        }
    }
}