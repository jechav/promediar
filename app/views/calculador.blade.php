@extends('layouts.base')

@section('cabecera')
<title>Calculadora</title>
{{ HTML::script('js/jquery.min.js') }}
{{ HTML::script('js/bootstrap-select.js') }}
{{ HTML::style('css/bootstrap-select.css') }}

<!-- Include all compiled plugins (below), or include individual files as needed -->

@parent
{{ HTML::script('js/bootstrap.min.js') }}
{{ HTML::style('css/calculadora.css') }}


<script type="text/javascript">
    $(window).on('load', function() {

        $('.selectpicker').selectpicker({
            'selectedText': 'cat'
        });

        // $('.selectpicker').selectpicker('hide');
    });
</script>
@stop

@section('cuerpo')

<div class="navbar navbar-inverse navbar-fixed-top" role="navigation">
    <div class="container-fluid">
        <div class="navbar-header">
            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
                <span class="sr-only">Toggle navigation</span>
            </button>
            <a class="navbar-brand" href="#">Calculadora</a>
            {{ HTML::image('ico/logotipo.png', "Imagen no encontrada", array('id' => 'logo', 'title' => 'logo', 'height'=>'20px', 'style'=>'margin-top: 15px; display:block;')) }}
        </div>
        <div class="navbar-collapse collapse">
            <ul class="nav navbar-nav navbar-right">
                <li><a href="{{url('/')}}">Inicio</a></li>
                <li><a href="#">Opciones</a></li>
                <li><a href="#">Mi perfil</a></li>
                <li><a href="#">Ayuda</a></li>
                <li><a href="#">Salir</a></li>
            </ul>
        </div>
    </div>
</div>

<div class="container-fluid">
    <div class="row">
        <!--SIDEBAR-->
        <div class="col-sm-3 col-md-2 sidebar">
            <ul class="nav nav-sidebar">
                <li><h4 class="text-info " style="padding-left: 10px;">Acceso Rápido</h4></li>
                <li><a href="#">Semestre I</a></li>
                <li><a href="#">Semestre II</a></li>
                <li><a href="#">Semestre III</a></li>
                <li><a href="#">Semestre IV</a></li>
                <li><a href="#">Semestre V</a></li>
                <li><a href="#">Semestre VI</a></li>
                <li><a href="#">Semestre VII</a></li>
                <li><a href="#">Semestre VIII</a></li>
                <li><a href="#">Semestre IX</a></li>
                <li><a href="#">Semestre X</a></li>

            </ul>
            <ul class="nav nav-sidebar">
                <li><a href="">Mas Informacion</a></li>
                <li><a data-toggle="modal" href="#generar-semestre">Agregar Semestre</a></li>
                <li><a href="">Guardar</a></li>
            </ul>
        </div>
        <!--FIN SIDEBAR-->

        <!--CONTENIDO--> 
        <div class="col-sm-9 col-sm-offset-3 col-md-10 col-md-offset-2 main">
            <h1 class="page-header">Codigo: </h1>

            <div class="row placeholders">
                <div class="col-xs-6 col-sm-3 placeholder">
                    <img data-src="holder.js/50x50/text: /sky" class="img-responsive" alt="Generic placeholder thumbnail">
                    <h4>Ganadas</h4>
                    <span class="text-muted">??</span>
                </div>
                <div class="col-xs-6 col-sm-3 placeholder">
                    <img data-src="holder.js/50x50/text: /industrial" class="img-responsive" alt="Generic placeholder thumbnail">
                    <h4>Pendientes</h4>
                    <span class="text-muted">??</span>
                </div>
                <div class="col-xs-6 col-sm-3 placeholder">
                    <img data-src="holder.js/50x50/text: /lava" class="img-responsive" alt="Generic placeholder thumbnail">
                    <h4>Perdidas</h4>
                    <span class="text-muted">??</span>
                </div>
                <div class="col-xs-6 col-sm-3 placeholder">
                    <img data-src="holder.js/50x50/text: /gray" class="img-responsive" alt="Generic placeholder thumbnail">
                    <h4>Con errores</h4>
                    <span class="text-muted">??</span>
                </div>
            </div>

            <!--SEMESTRES--> 
            <div class="table-responsive panel panel-primary">
                <div class="panel-heading">
                    <h3 class="panel-title">Semestre I</h3>
                </div>
                <table class="table table-hover">
                    <thead>
                        <tr>
                            <th>Materia</th>
                            <th>Definitiva</th>
                            <th>Creditos</th>
                            <th>Corte 1</th>
                            <th>Corte 2</th>
                            <th>Corte 3</th>
                            <th>Estado</th>
                            <th>Calcular</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td>Materia 1</td>
                            <td>
                                <input id="mat1-def" class="form-control input-sm" maxlength="3" type="number" />
                                <div class="onoffswitch">
                                    <input type="checkbox" name="onoffswitch" class="onoffswitch-checkbox" id="myonoffswitch" checked>
                                    <label class="onoffswitch-label" for="myonoffswitch">
                                        <span class="onoffswitch-inner"></span>
                                        <span class="onoffswitch-switch"></span>
                                    </label>
                                </div>
                            </td>
                            <td><span id="mat1-creditos">4</span></td>
                            <td><input id="mat1-seg1"class="form-control input-sm" maxlength="3" type="number" /></td>
                            <td><input id="mat1-seg2"class="form-control input-sm" maxlength="3" type="number" /></td>
                            <td><input id="mat1-seg3"class="form-control input-sm" maxlength="3" type="number" /></td>
                            <td><span class="label label-danger">Perdida</span></td>
                            <td><button type="button"><span class="glyphicon glyphicon-cog"></span></button></td>
                        </tr>
                    </tbody>
                </table>
            </div>
            <!--FIN SEMESTRES--> 
        </div>
        <!--FIN CONTENIDO--> 

    </div>
</div>

<!-- Modal de registro-->
<div class="modal fade" id="generar-semestre">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                <h4 class="modal-title">Agregar Nuevo semestre</h4>
            </div>
            <div class="modal-body">
                <form class="form-signin" role="form" action="controller/login.php" method="post">
                    <h2 class="form-signin-heading">Seleccione una Materia</h2>
                    <div class="input-group">
                        <label for="id_select">Programa</label>
                        <select id="id_select" class="selectpicker"  data-live-search="true">
                            <option>Todas</option>
                            <option>Ingenieria de Sistemas</option>
                            <option>Ingenieria Electrónica</option>
                            <option>Ingenieria Civil</option>
                            <option>Ingenieria Pesquera</option>
                            <option>Ingenieria Ambiental</option>
                            <option>Medicina</option>
                            <option>Enfermeria</option>
                        </select>
                        <label for="id_select">Asignatura</label>
                        <select id="id_select" class="selectpicker"  data-live-search="true">
                            <option data-subtext="">Nada</option>
                            <option data-subtext="Creditos 2">MECANICA DE FLUIDOS</option>
                            <option data-subtext="Creditos 2">HIDRAULICA</option>
                            <option data-subtext="Creditos 2">PLANTAS DE POTABILIZACION</option>
                            <option data-subtext="Creditos 2">MECANICA</option>

                        </select>
                    </div>
                    <button id="btsubmit" disabled="" class="btn btn-primary" >Agregar</button>
                </form>
                <div class="table-responsive panel panel-primary">
                    <div class="panel-heading">
                        <h3 class="panel-title">Semestre</h3>
                    </div>
                    <table class="table table-hover">
                        <thead>
                            <tr>
                                <th>Materia</th>
                                <th>Creditos</th>
                                <th></th>
                            </tr>
                        </thead>
                        <tbody>
                            <tr>
                                <td>Materia 1</td>
                                <td>??</td>
                                <td><button type="button"><span class="glyphicon glyphicon-remove"></span></button></td>
                            </tr>


                        </tbody>
                    </table>
                </div>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-primary" >Guardar</button>
                <button type="button" class="btn btn-default" data-dismiss="modal">Cancelar</button>
            </div>
        </div>
    </div>
</div>

{{ HTML::script('js/docs.min.js') }}

<script type="text/javascript">

    var defaultText = '??';

    function endEdit(e) {
        var input = $(e.target),
                label = input && input.prev();

        label.text(input.val() === '' ? defaultText : input.val());
        input.hide();
        label.show();
    }

    $('.clickedit').hide()
            .focusout(endEdit)
            .keyup(function(e) {
                if ((e.which && e.which == 13) || (e.keyCode && e.keyCode == 13)) {
                    endEdit(e);
                    return false;
                } else {
                    return true;
                }
            })
            .prev().click(function() {
        $(this).hide();
        $(this).next().show().focus();
    });

</script>
@stop
