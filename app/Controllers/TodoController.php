<?php

namespace App\Controllers;

use App\Models\TodoModel;
use App\Repositories\TodoRepository;
use Nette\Forms\Form;
use Nette\Forms\Rendering\BootstrapFormRenderer;

class TodoController extends CoreController
{
    private object $user;
    private TodoRepository $todoRepository;

    public function __construct()
    {
        parent::__construct();

        if (empty($_SESSION['user'])) {
            redirect('/auth/signIn');
        }

        $this->user = $_SESSION['user'];

        $this->todoRepository = new TodoRepository($this->user);
    }

    public function index(): void
    {
        $this->smarty->display('todo/list.tpl');
    }

    public function complete($id = null): void
    {
        if (!$id) redirect('/todos');

        $todoModel = new TodoModel();
        if ($todoModel->completeTodo($id)) {
            $this->flashMessage(MSG_SUCCESS, 'To-do was successfully completed.');
        } else {
            $this->flashMessage(MSG_ERROR, 'Error occurred, could not complete to-do.');
        }

        redirect('/todos');
    }

    public function reopen($id = null): void
    {
        if (!$id) redirect('/todos');

        $todoModel = new TodoModel();
        if ($todoModel->reopenTodo($id)) {
            $this->flashMessage(MSG_SUCCESS, 'To-do was successfully reopened.');
        } else {
            $this->flashMessage(MSG_ERROR, 'Error occurred, could not reopen to-do.');
        }

        redirect('/todos');
    }

    public function create($id = null): void
    {
        $result = $this->todoRepository->processForm($id);

        if ($result === false) {
            $this->flashMessage(MSG_ERROR, 'Could not save to-do.');
            redirect('/todos');
        }
        elseif ($result === true) {
            $this->flashMessage(MSG_SUCCESS, 'To-do was saved successfully.');
            redirect('/todos');
        }

        $this->smarty->assign('edit', $id != null);
        $this->smarty->assign('form', $this->todoRepository->form);

        $this->smarty->display('todo/form.tpl');
    }

    public function ajaxData(): void
    {
        $this->todoRepository->getAjaxData();
    }
}