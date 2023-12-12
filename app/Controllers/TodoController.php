<?php

namespace Controllers;

use Models\TodoModel;
use Nette\Forms\Form;
use Nette\Forms\Rendering\BootstrapFormRenderer;

class TodoController extends CoreController
{
    private $form;

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

    function create()
    {
        $this->form = $this->generateForm();
        $this->processForm();

        $this->smarty->assign('edit', false);
        $this->smarty->assign('form', $this->form);

        $this->smarty->display('todo/form.tpl');
    }

    function update($id = null)
    {
        if (!$id) redirect('/todos');

        $this->form = $this->generateForm();
        $this->processForm($id);

        $this->smarty->assign('edit', true);
        $this->smarty->assign('form', $this->form);

        $this->smarty->display('todo/form.tpl');
    }

    function generateForm()
    {
        $form = new Form('todo');

        $form->setRenderer(new BootstrapFormRenderer());

        $form->addText('todo', 'To-do');

        $form->addCheckbox('completed', 'Completed');

        $form->addSubmit('save', 'Save');

        return $form;
    }

    function processForm($id = null)
    {
        if ($this->form->isSubmitted())
        {
            if ($this->form->isValid())
            {
                $this->save($this->form->getValues(), $id);
            }
        } elseif ($id) {
            $todoModel = new TodoModel();
            $this->form->setDefaults($todoModel->getTodo($id));
        }
    }

    function save($values, $id = null)
    {
        foreach ($values as $key => $value) if ($value === '') $values[$key] = null;

        $todoModel = new TodoModel();
        if ($id) {
            $todoModel->updateTodo($id, $values);
            $this->flashMessage(MSG_SUCCESS, 'To-do was updated successfully.');
        } else {
            $todoModel->createTodo($values);
            $this->flashMessage(MSG_SUCCESS, 'To-do was added successfully.');
        }

        redirect('/todos');
    }

    public function ajaxData()
    {
        $rowList = [
            0 => 'id',
            1 => 'created',
            2 => 'todo',
            3 => 'completed'
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

            $menu = '<a title="Update" href="/todo/update/' . $item['id'] . '"><i class="bi bi-pencil me-2"></i></a>';
            if ($item['completed']) {
                $menu .= '<a title="Reopen" onclick="return confirm(\'Are you sure you want to re-open task ' . ($item['id']) . '?\');" href="/todo/reopen/' . $item['id'] . '"><i class="bi bi-arrow-clockwise"></i></a>';
            } else {
                $menu .= '<a title="Mark complete" onclick="return confirm(\'Are you sure you want to complete task ' . ($item['id']) . '?\');" href="/todo/complete/' . $item['id'] . '"><i class="bi bi-check2-circle"></i></a>';
            }

            $resultPart = [
                0 => $item['id'],
                1 => date('j.n.Y H:i:s', strtotime($item['created'])),
                2 => $item['todo'],
                3 => $item['completed'] ? 'Yes' : 'No',
                4 => $menu
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