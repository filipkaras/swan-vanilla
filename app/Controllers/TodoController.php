<?php

namespace Controllers;

use Models\TodoModel;

class TodoController extends CoreController
{
    public function index()
    {
        $todoModel = new TodoModel();
        $todos = $todoModel->getTodos();

        $this->smarty->assign('todos', $todos);
        $this->smarty->display('todo/list.tpl');
    }
}