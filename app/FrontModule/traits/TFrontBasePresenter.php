<?php


namespace App\FrontModule\Traits;


trait TFrontBasePresenter
{

	protected function createComponentNavigation()
	{
		$control = parent::createComponentNavigation();

		$control->setLattePath(__DIR__ . '/../components/Navigation/NavigationControl.latte');

		return $control;
	}

	protected function createComponentPageNavigation()
	{
		$control = parent::createComponentPageNavigation();

		$control->setLattePath(__DIR__ . '/../components/PageNavigation/PageNavigationControl.latte');

		return $control;
	}

	protected function createComponentContactForm()
	{
		$control = parent::createComponentContactForm();

		$control->setLattePath(__DIR__ . '/../components/ContactForm/ContactFormControl.latte');

		return $control;
	}


}