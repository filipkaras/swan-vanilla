<?php

namespace Nette\Forms\Rendering;

use Nette,
    Nette\Utils\Html;

class BootstrapFormRenderer extends DefaultFormRenderer
{
    public $wrappers = array(
        'form' => array(
            'container' => null,
            'errors' => true,
            'class' => 'm-form m-form--fit m-form--label-align-right',
        ),

        'group' => [
            'container' => 'div class=form-part',
            'label' => 'div class=form-part-name',
            'description' => null,
        ],

        'error' => [
            'container' => null,
            'item' => 'div',
        ],

        'pair' => array(
            'container' => 'div class="mb-3"',
        ),

        'buttons' => array(
            'container' => 'div class="m-form__actions"',
        ),

        'control' => array(
            'class' => 'form-control m-input',
            'errorcontainer' => 'span class="help-block text-danger"',
            'erroritem' => '',
            '.submit' => 'btn btn-primary',
            '.input' => 'form-control m-input'
        ),
    );

    /**
     * Renders form begin.
     * @return string
     */
    public function renderBegin(): string
    {
        $this->counter = 0;

        foreach ($this->form->getControls() as $control) {
            $control->setOption('rendered', false);
        }

        if ($this->form->isMethod('get')) {
            $el = clone $this->form->getElementPrototype();
            $query = parse_url($el->action, PHP_URL_QUERY);
            $el->action = str_replace("?$query", '', $el->action);
            $s = '';
            foreach (preg_split('#[;&]#', $query, -1, PREG_SPLIT_NO_EMPTY) as $param) {
                $parts = explode('=', $param, 2);
                $name = urldecode($parts[0]);
                $prefix = explode('[', $name, 2)[0];
                if (!isset($this->form[$prefix])) {
                    $s .= Html::el('input', ['type' => 'hidden', 'name' => $name, 'value' => urldecode($parts[1])]);
                }
            }
            return $el->addClass($this->getValue('form class'))->startTag() . ($s ? "\n\t" . $this->getWrapper('hidden container')->setHtml($s) : '');

        } else {
            return $this->form->getElementPrototype()->addClass($this->getValue('form class'))->startTag();
        }
    }

    /**
     * Renders group of controls.
     * @param  Nette\Forms\Container|Nette\Forms\ControlGroup
     * @return string
     */
    public function renderControls($parent): string
    {
        if (!($parent instanceof Nette\Forms\Container || $parent instanceof Nette\Forms\ControlGroup)) {
            throw new Nette\InvalidArgumentException('Argument must be Nette\Forms\Container or Nette\Forms\ControlGroup instance.');
        }

        $container = $this->getWrapper('controls container');
        $container->addHtml('<div class="m-portlet__body">');

        $buttons = null;
        foreach ($parent->getControls() as $control) {
            if ($control->getOption('rendered') || $control->getOption('type') === 'hidden' || $control->getForm(false) !== $this->form) {
                // skip

            } elseif ($control->getOption('type') === 'button') {
                $buttons[] = $control;

            } else {
                if ($buttons) {
                    $container->addHtml($this->renderPairMulti($buttons));
                    $buttons = null;
                }
                $container->addHtml($this->renderPair($control));
            }
        }
        $container->addHtml('</div>');

        if ($buttons) {
            $container->addHtml('<div class="m-portlet__foot m-portlet__foot--fit"><div class="m-form__actions">');
            $container->addHtml($this->renderPairMulti($buttons));
            $container->addHtml('</div></div>');
        }

        $s = '';
        if (count($container)) {
            $s .= "\n" . $container . "\n";
        }

        return $s;
    }

    /**
     * Renders single visual row of multiple controls.
     * @param  Nette\Forms\IControl[]
     * @return string
     */
    public function renderPairMulti(array $controls): string
    {
        $s = [];
        foreach ($controls as $control) {
            if (!$control instanceof Nette\Forms\IControl) {
                throw new Nette\InvalidArgumentException('Argument must be array of Nette\Forms\IControl instances.');
            }
            $description = $control->getOption('description');
            if ($description instanceof IHtmlString) {
                $description = ' ' . $description;

            } elseif ($description != null) { // intentionally ==
                if ($control instanceof Nette\Forms\Controls\BaseControl) {
                    $description = $control->translate($description);
                }
                $description = ' ' . $this->getWrapper('control description')->setText($description);

            } else {
                $description = '';
            }

            $control->setOption('rendered', true);
            $el = $control->getControl();
            if ($el instanceof Html && $el->getName() === 'input') {
                $el->class($this->getValue("control .$el->type"), true);
            }
            $s[] = $el . $description;
        }
        $result = '';
        $result .= $this->renderLabel($control);
        $result .= $this->getWrapper('control container')->setHtml(implode(' ', $s));
        return $result;
    }

    /**
     * Renders 'control' part of visual row of controls.
     * @return Html
     */
    public function renderControl(Nette\Forms\Control $control): Html
    {
        $body = $this->getWrapper('control container');
        if ($this->counter % 2) {
            $body->class($this->getValue('control .odd'), true);
        }

        $description = $control->getOption('description');
        if ($description instanceof IHtmlString) {
            $description = ' ' . $description;

        } elseif ($description != null) { // intentionally ==
            if ($control instanceof Nette\Forms\Controls\BaseControl) {
                $description = $control->translate($description);
            }
            $description = ' ' . $this->getWrapper('control description')->setText($description);

        } else {
            $description = '';
        }

        if ($control->isRequired()) {
            $description = $this->getValue('control requiredsuffix') . $description;
        }

        $control->setOption('rendered', true);
        if ($control instanceof Nette\Forms\Controls\Checkbox) {
            $el = $control->getSeparatorPrototype()->setHtml(
                $control->getControlPart()->addClass('form-check-input') .
                $control->getLabelPart()->addClass('form-check-label ms-2')
            );
        } else {
            $el = $control->getControl();
        }
        if ($el instanceof Html && $el->getName() === 'input') {
            $el->class($this->getValue("control .$el->type"), true);
        }
        $el->addClass($this->getValue('control .input'));
        return $body->setHtml($el . $description . $this->renderErrors($control));
    }
}