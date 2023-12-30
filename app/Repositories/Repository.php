<?php

namespace App\Repositories;

use Nette\Forms\Form;
use Nette\Forms\Rendering\BootstrapFormRenderer;

abstract class Repository implements RepositoryInterface
{
    public Form $form;

    public function __construct()
    {
        $this->form = new Form();

        $this->form->setRenderer(new BootstrapFormRenderer());

        $this->generateForm();
    }

    public function processForm(?int $id = null): bool|null
    {
        if ($this->form->isSubmitted())
        {
            if ($this->form->isValid())
            {
                return $this->processFormSubmit($this->form->getValues(), $id);
            }
        } elseif ($id) {
            $this->form->setDefaults($this->getDefaults($id));
        }

        return null;
    }
}