<?php

namespace Controllers;

use Models\TodoModel;

class TodoController extends CoreController
{
    public function index()
    {
        $this->smarty->display('todo/list.tpl');
    }

    public function ajaxData()
    {
        $rowList = [
            0 => 'todo',
            1 => 'completed'
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
            $resultPart = [
                0 => $item['todo'],
                1 => $item['completed'] ? 'Yes' : 'No'
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