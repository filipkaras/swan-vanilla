<?php

namespace Controllers;

use Smarty;

class CoreController
{
    protected $smarty;
    private $flashMessages;

    public function __construct()
    {
        session_start();

        $flashMessages = $_SESSION['flash_messages'] ?? [];
        if (isset($_SESSION['flash_messages'])) {
            unset($_SESSION['flash_messages']);
        }

        $this->smarty = new Smarty();
        $this->smarty->setTemplateDir(__DIR__ . '/../Views');
        $this->smarty->setCompileDir(__DIR__ . '/../../writable/smarty/compile');
        $this->smarty->setCacheDir(__DIR__ . '/../../writable/smarty/cache');

        $this->smarty->assign('flashMessages', $flashMessages);
    }

    public function flashMessage($type, $msg)
    {
        $this->flashMessages[] = [$type => $msg];
        $_SESSION['flash_messages'] = $this->flashMessages;
    }
}