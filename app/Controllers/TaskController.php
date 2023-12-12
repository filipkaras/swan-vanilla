<?php

namespace Controllers;

use Models\TaskModel;

class TaskController extends CoreController
{
    public function index()
    {
        $taskModel = new TaskModel();
        $tasks = $taskModel->getTasks();

        $this->smarty->assign('tasks', $tasks);
        $this->smarty->display('task/list.tpl');
    }
}