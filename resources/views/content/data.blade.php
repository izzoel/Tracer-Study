@extends('layouts.landing')
@section('content')
    <div class="bg-primary p-3">
        <div class="card">
            <div class="card-header" style="background-color: rgb(255, 255, 255)">
                <h4 class="card-title text-dark m-2">Data User Alumni</h4>
                <p class="card-category m-2">Data User Alumni Universitas Borneo Lestari</p>
            </div>
            <div class="card-body">
                <a class="btn-sm btn-primary" onclick="addUserAlumni()" data-bs-toggle="modal">+ Data User Baru</a>
                <div id="userAlumni"></div>
            </div>
        </div>
    </div>

    {{-- tambah user alumni --}}
    <div class="modal fade" id="add_data_alumni" tabindex="-1">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title">Tambah Data User Alumni</h5>
                </div>

                <div class="modal-body">
                    <div class="row">
                        <div class="col ">
                            <div class="form-check">
                                <input class="form-check-input" type="radio" name="input_data_user_alumni" id="input_data_user_alumni" value="input" checked>
                                <label class="form-check-label text-dark" for="input_data_user_alumni">
                                    Input Data User
                                </label>
                            </div>
                        </div>
                        <div class="col">
                            <div class="form-check">
                                <input class="form-check-input" type="radio" name="input_data_user_alumni" id="import_data_user_alumni">
                                <label class="form-check-label text-dark" for="import_data_user_alumni">
                                    Import Excel
                                </label>
                            </div>


                        </div>
                    </div>

                    <form id="userTambah" action="{{ route('import_user_alumni') }}" method="post" enctype="multipart/form-data">
                        @csrf
                        <div class="row">
                            <div class="col">
                                <div class="form-group dataUserAlumni"></div>
                            </div>
                            <a id="template" class="link-primary fs-6" href="{{ asset('template/Template Import User Alumni.xlsx') }}" download="Template Import User Alumni.xlsx">
                                <i class="fa fa-download"></i> Template Import User Alumni.xlsx
                            </a>
                        </div>
                    </form>

                </div>
                <div class="modal-footer">
                    <button type="submit" id="save" onclick="ajaxTambah()" class="btn btn-primary me-4">Save</button>
                    <button type="submit" id="import" onclick="submitFile()" class="btn btn-primary me-4">Import</button>
                </div>

            </div>
        </div>
    </div>


    {{-- edit user alumni --}}
    <div class="modal fade" id="edit_data_alumni" tabindex="-1">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title">Edit User Alumni</h5>
                </div>

                <form id="userEdit">
                    <div class="modal-body">

                        @csrf
                        <div class="row">
                            <div class="col">
                                <div class="form-group editUserAlumni"></div>
                            </div>
                        </div>

                    </div>
                    <div class="modal-footer">
                        <button type="submit" id="save" onclick="ajaxUpdate()" class="btn btn-primary me-4">Save</button>
                    </div>
                </form>

            </div>
        </div>
    </div>
@endsection
