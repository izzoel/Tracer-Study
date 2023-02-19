@extends('layouts.landing')
@section('content')
    <div class="bg-primary p-3">
        <div class="card">
            <div class="card-header" style="background-color: rgb(255, 255, 255)">
                <h4 class="card-title text-dark m-2">Form Survey Tracer Study Alumni</h4>
                <p class="card-category m-2">Formulir Pengisisan ...</p>
            </div>
            <div class="card-body">

                <form action="" method="POST" class="needs-validation" novalidate>
                    @csrf

                    {{-- {{ $survey_alumni }} --}}
                    @foreach ($survey_alumni as $survey)
                        <div class="row">
                            <div class="col-auto" style="width: 3.5rem">
                                {{ $survey->no }}.
                            </div>
                            <div class="col-auto">
                                {{ $survey->survey }}
                                {{ $survey->wajib }}
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-auto" style="width: 3.5rem"></div>
                            <div class="col-auto">
                                <div class="form-check form-check-inline">
                                    <label class="form-check-label">
                                        <input class="form-check-input" type="radio" name="" id=""
                                            value="checkedValue">
                                    </label>{{ $survey->pilihan }}
                                </div>
                                <div class="form-check form-check-inline">
                                    <label class="form-check-label">
                                        <input class="form-check-input" type="radio" name="" id=""
                                            value="checkedValue">
                                    </label>Belum
                                </div>

                            </div>
                        </div>
                    @endforeach

                    <button type="submit" id="kirim" class="btn btn-primary float-right ">Kirim <i
                            class="fa fa-sign-out"></i></button>


                </form>
            </div>
        </div>
    </div>
@endsection
