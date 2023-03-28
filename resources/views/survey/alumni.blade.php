@extends('layouts.landing')
@section('content')
    <div class="bg-primary p-3">
        <div class="card">
            <div class="card-header" style="background-color: rgb(255, 255, 255)">
                <h4 class="card-title text-dark m-2">Form Survey Tracer Study Alumni</h4>
                <p class="card-category m-2">Formulir pengisisan untuk Alumni yang {{ $karir }}</p>
            </div>
            <div class="card-body">

                <form action="" method="POST">
                    @csrf
                    <div id="survey"></div>
                    <br>
                    <br>
                </form>

            </div>
        </div>
    </div>
    </div>
@endsection
