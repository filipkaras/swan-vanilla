<?php

namespace Controllers;

use Models\TodoModel;

class TodoController extends CoreController
{
    public function index()
    {
        $this->smarty->display('todo/list.tpl');
    }

    public function complete($id = null)
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

    public function reopen($id = null)
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

    public function ajaxData()
    {
        $rowList = [
            0 => 'id',
            1 => 'todo',
            2 => 'completed'
        ];

        $offset = $_GET['iDisplayStart'];
        $limit = $_GET['iDisplayLength'];

        $sortRow = $rowList[$_GET['iSortCol_0']];
        $sortDir = $_GET['sSortDir_0'];
        $sEcho = $_GET['sEcho'];

        $todoModel = new TodoModel();
        $data = $todoModel->getTodos(false, $_GET['sSearch'], $limit, $offset, $sortRow, $sortDir);
        $count = $todoModel->getTodos(true, $_GET['sSearch']);
        $countTotal = $todoModel->getTodos(true);

        $result = [];
        foreach ($data as $item) {

            if ($item['completed']) {
                $menu = '<a title="Reopen" onclick="return confirm(\'Are you sure you want to re-open task ' . ($item['id']) . '?\');" href="/todo/reopen/' . $item['id'] . '"><i class="bi bi-arrow-clockwise"></i></a>';
            } else {
                $menu = '<a title="Mark complete" onclick="return confirm(\'Are you sure you want to complete task ' . ($item['id']) . '?\');" href="/todo/complete/' . $item['id'] . '"><i class="bi bi-check2"></i></a>';
            }

            $resultPart = [
                0 => $item['id'],
                1 => $item['todo'],
                2 => $item['completed'] ? 'Yes' : 'No',
                3 => $menu
            ];
            $result[] = $resultPart;
        }

        echo json_encode(array(
            'iTotalRecords' => $countTotal,
            'iTotalDisplayRecords' => $count,
            'sEcho' => $sEcho,
            'aaData' => $result
        ));
    }
}