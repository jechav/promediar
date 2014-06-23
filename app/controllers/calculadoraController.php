<?php

class calculadoraController extends BaseController
{
	public function mostrarInicio()
	{
		return View::make('calculador');
	}

}