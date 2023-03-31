@extends('layouts.landing')
@section('content')
    <div class="bg-primary p-3">
        <div class="card">
            <div class="card-header" style="background-color: rgb(255, 255, 255)">
                <h4 class="card-title text-dark m-2">Form Survey Tracer Study Alumni</h4>
                <p class="card-category m-2">Formulir pengisisan untuk Alumni yang {{ $kategori }}</p>
            </div>
            <div class="card-body">

                <form action="{{ route('alumni_submit') }}" method="POST">
                    @csrf
                    {{-- <h5>Nama : --}}
                    {{--     <span class="badge rounded-pill p-1 text-light"
                            style="background: #FF5733">{{ $nama }}</span> --}}
                    {{-- <span class="badge text-light" style="background: #FF5733">Light</span> --}}
                    {{-- </h5> --}}
                    {{-- <input type="hidden" value="{{ $nim }}"> --}}
                    <input type="hidden" name="nama" value="{{ $nama }}">
                    <input type="hidden" name="nim" value="{{ $nim }}">
                    <input type="hidden" name="kategori" value="{{ $kategori }}">
                    <div class="row">
                        <div class="" style="min-width:5%;width:5%">Nama</div>
                        <div class="col-auto">:</div>
                        <div class="col" id="nama" style="color:#FF5733">{{ $nama }}</div>
                        <div class="col-auto"></div>
                    </div>
                    <div class="row">
                        <div class="" style="min-width:5%;width:5%">NIM</div>
                        <div class="col-auto">:</div>
                        <div class="col" id="nim" style="color:#FF5733">{{ $nim }}</div>
                        <div class="col-auto"></div>
                    </div>
                    <br>

                    <div id="survey"></div>
                    <button type="submit" class="btn btn-primary float-end">Kirim</button>
                    <br>
                    <br>
                </form>

            </div>
        </div>
    </div>
    </div>
@endsection
