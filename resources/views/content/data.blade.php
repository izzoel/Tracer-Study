@extends('layouts.landing')
@section('content')
    <div class="bg-primary p-3">
        <div class="card">
            <div class="card-header" style="background-color: rgb(255, 255, 255)">
                <h4 class="card-title text-dark m-2">Data User Alumni</h4>
                <p class="card-category m-2">Data User Alumni Universitas Borneo Lestari</p>
            </div>
            <div class="card-body">
                <a class="btn-sm btn-primary" onclick="modalUserAlumni()" data-bs-toggle="modal">+ Data User Baru</a>
                <div id="userAlumni"></div>
            </div>
        </div>
    </div>


    <div class="modal fade" id="modal_data_alumni" tabindex="-1">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title">Tambah Data User Alumni</h5>
                </div>
                <form id="userTambah">
                    @csrf
                    <div class="modal-body">
                        <div class="row">
                            <div class="col ">
                                <div class="form-check">
                                    <input class="form-check-input" type="radio" name="input_data_user_alumni"
                                        id="input_data_user_alumni" checked>
                                    <label class="form-check-label text-dark" for="input_data_user_alumni">
                                        Input Data User
                                    </label>
                                </div>
                            </div>
                            <div class="col">
                                <div class="form-check">
                                    <input class="form-check-input" type="radio" name="input_data_user_alumni"
                                        id="import_data_user_alumni">
                                    <label class="form-check-label text-dark" for="import_data_user_alumni">
                                        Import Excel
                                    </label>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col">
                                <div class="form-group dataUserAlumni">

                                </div>
                            </div>
                        </div>

                    </div>
                    <div class="modal-footer">
                        <button type="submit" id="save" class="btn btn-primary me-4">Save</button>
                    </div>
                </form>
            </div>
        </div>
    </div>
@endsection
