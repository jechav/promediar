@extends('layouts.base')

@section('cabecera')
<title>Calculadora</title>
{{ HTML::style('css/calculadora.css') }}
@stop

@section('cuerpo')

<!-- Modal de registro-->
<div class="modal fade" id="myModal">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                <h4 class="modal-title">Saca Promedios Unimag</h4>
            </div>
            <div class="modal-body">
                <div class="container">
                    <form class="form-signin" role="form" action="controller/login.php" method="post">
                        <h2 class="form-signin-heading">Ingresa tus datos</h2>
                        <div class="input-group">
                            <span class="input-group-addon"></span>
                            <input type="text" class="form-control" placeholder="Codigo" required autofocus>
                        </div>
                        <div class="input-group">
                            <span class="input-group-addon"></span>
                            <input type="password" class="form-control" placeholder="Contraseña" required >
                        </div>
                        <label class="checkbox">
                            <input type="checkbox" value="remember-me"> Recuerdame
                        </label>
                        <button id="btsubmit" type="submit" class="btn btn-primary" >Ahi vamos</button>
                    </form>
                </div>
            </div>
            <div class="modal-footer">

                <button type="button" class="btn btn-default" data-dismiss="modal">Cancelar</button>
            </div>
        </div>
    </div>
</div>

@parent
{{ HTML::script('js/docs.min.js') }}

<script type="text/javascript">

</script>
@stop
