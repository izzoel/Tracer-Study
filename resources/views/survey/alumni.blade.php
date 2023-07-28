@extends('layouts.landing')
@section('content')
    <div class="bg-primary p-3">
        <div class="card">
            <div class="card-header" style="background-color: rgb(255, 255, 255)">
                <h4 class="card-title text-dark m-2">Form Survey Tracer Study Alumni</h4>
                <p class="card-category m-2">Formulir pengisisan untuk Alumni yang {{ $kategori }}</p>
            </div>
            <div class="card-body">

                <form id="alumni-submit" action="{{ route('alumni_submit') }}" method="POST">
                    @csrf
                    <input type="hidden" name="nama" value="{{ $nama }}">
                    <input type="hidden" name="nim" value="{{ $nim }}">
                    <input type="hidden" name="prodi" value="{{ $prodi }}">
                    <input type="hidden" name="kategori" value="{{ $kategori }}">
                    <input type="hidden" name="angkatan" value="{{ $angkatan }}">
                    <div class="row">
                        <div class="col-2">Nama</div>
                        <div class="col-auto">:</div>
                        <div class="col" style="color:#FF5733">{{ $nama }}</div>
                        <div class="col-auto"></div>
                    </div>
                    <div class="row">
                        <div class="col-2">NIM</div>
                        <div class="col-auto">:</div>
                        <div class="col" style="color:#FF5733">{{ $nim }}</div>
                        <div class="col-auto"></div>
                    </div>
                    <div class="row">
                        <div class="col-2">Program Studi</div>
                        <div class="col-auto">:</div>
                        <div class="col" style="color:#FF5733">{{ $prodi }}</div>
                        <div class="col-auto"></div>
                    </div>
                    <div class="row">
                        <div class="col-2">angkatan</div>
                        <div class="col-auto">:</div>
                        <div class="col" style="color:#FF5733">{{ $angkatan }}</div>
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
