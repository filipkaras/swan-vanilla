<?php

namespace App\Repositories;

use App\Models\TodoModel;
use Nette\Forms\Form;

class TodoRepository extends Repository
{
    private object $user;

    public function __construct(object $user)
    {
        parent::__construct();

        $this->user = $user;
    }

    public function generateForm(): void
    {
        $this->form->addText('todo', 'To-do *')
            ->addRule(FORM::Filled, 'Please enter to-do')
            ->addRule(FORM::MaxLength, 'Max length of to-do is 100 characters', 100);

        $this->form->addTextArea('description', 'Description');

        $this->form->addCheckbox('completed', 'Completed');

        $this->form->addSubmit('save', 'Save');
    }

    public function processForm(?int $id = null): bool|null
    {
        $todoModel = new TodoModel();
        if (!$todoModel->canUpdateTask($id, $this->user['id'])) {
            http_response_code(403);
            die('Forbidden');
        }

        return parent::processForm($id);
    }

    public function processFormSubmit($values, ?int $id = null): bool
    {
        foreach ($values as $key => $value) if ($value === '') $values[$key] = null;

        $values['user_id'] = $this->user['id'];

        $todoModel = new TodoModel();
        if ($id) {
            $todoModel->updateTodo($id, $values);
        } else {
            $todoModel->createTodo($values);
        }

        return true;
    }

    public function getDefaults($id): array
    {
        $todoModel = new TodoModel();
        return $todoModel->getTodo($id);
    }

    public function getAjaxData()
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
        $data = $todoModel->getTodos($this->user['id'], false, $_GET['sSearch'], $limit, $offset, $sortRow, $sortDir);
        $count = $todoModel->getTodos($this->user['id'], true, $_GET['sSearch']);
        $countTotal = $todoModel->getTodos($this->user['id'], true);

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