<?php

namespace App\Controllers;

use App\Models\TodoModel;
use App\Repositories\TodoRepository;

class TodoController extends AuthController
{
    private TodoRepository $todoRepository;

    public function __construct()
    {
        parent::__construct();

        $this->todoRepository = new TodoRepository($this->user);
    }

    public function index(): void
    {
        $this->smarty->display('todo/list.tpl');
    }

    public function complete($id = null, $complete = true): void
    {
        if (!$id) redirect('/todos');

        $todoModel = new TodoModel();
        if ($todoModel->complete($id, $complete)) {
            $this->flashMessage(MSG_SUCCESS, 'To-do was successfully ' . ($complete ? 'completed' : 'reopened') . '.');
        } else {
            $this->flashMessage(MSG_ERROR, 'Error occurred, could not ' . ($complete ? 'complete' : 'reopen') . ' to-do.');
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