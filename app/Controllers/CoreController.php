<?php

namespace Controllers;

use Smarty;

class CoreController
{
    protected $smarty;

    public function __construct()
    {
        $this->smarty = new Smarty();
        $this->smarty->setTemplateDir(__DIR__ . '/../Views');
        $this->smarty->setCompileDir(__DIR__ . '/../../writable/smarty/compile');
        $this->smarty->setCacheDir(__DIR__ . '/../../writable/smarty/cache');
    }
}