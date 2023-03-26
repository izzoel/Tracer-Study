@extends('layouts.landing')
@section('content')
    <div class="bg-primary p-3">
        <div class="card">
            <div class="card-header" style="background-color: rgb(255, 255, 255)">
                <h4 class="card-title text-dark m-2">Form Survey Tracer Study Alumni</h4>
                <p class="card-category m-2">Formulir Pengisisan ...</p>
            </div>
            <div class="card-body">

                <nav>
                    <div class="nav nav-tabs" id="nav-tab" role="tablist">
                        <a class="nav-link active" id="nav-belum-bekerja-tab" data-bs-toggle="tab"
                            data-bs-target="#nav-belum-bekerja" type="button" role="tab">
                            <span id="tab-title">Belum Bekerja</span>
                        </a>
                        <a class="nav-link" id="nav-sudah-bekerja-tab" data-bs-toggle="tab"
                            data-bs-target="#nav-sudah-bekerja" type="button" role="tab"
                            aria-controls="nav-sudah-bekerja" aria-selected="false">
                            <span id="tab-title">Sudah Bekerja</span>
                        </a>
                        <a class="nav-link" id="nav-berwirausaha-tab" data-bs-toggle="tab"
                            data-bs-target="#nav-berwirausaha" type="button" role="tab"
                            aria-controls="nav-berwirausaha" aria-selected="false">
                            <span id="tab-title">Berwirausaha</span>
                        </a>
                        <a class="nav-link" id="nav-lanjut-pendidikan-tab" data-bs-toggle="tab"
                            data-bs-target="#nav-lanjut-pendidikan" type="button" role="tab"
                            aria-controls="nav-lanjut-pendidikan" aria-selected="false">
                            <span id="tab-title">Lanjut Pendidikan</span>
                        </a>
                    </div>
                </nav>
                <div class="tab-content" id="nav-tabContent">
                    <div class="tab-pane fade show active" id="nav-belum-bekerja" role="tabpanel"
                        aria-labelledby="nav-belum-bekerja-tab">
                        <form action="" method="POST">
                            @csrf
                            <div id="formulir_belum_bekerja"></div>
                            <br>
                            <br>
                        </form>
                    </div>
                    <div class="tab-pane fade" id="nav-sudah-bekerja" role="tabpanel"
                        aria-labelledby="nav-sudah-bekerja-tab">
                        <form action="" method="POST">
                            @csrf
                            <div id="formulir_sudah_bekerja"></div>
                            <br>
                            <br>
                        </form>
                    </div>
                    <div class="tab-pane fade" id="nav-berwirausaha" role="tabpanel" aria-labelledby="nav-berwirausaha-tab">
                        <form action="" method="POST">
                            @csrf
                            <div id="formulir_berwirausaha"></div>
                            <br>
                            <br>
                        </form>
                    </div>
                    <div class="tab-pane fade" id="nav-lanjut-pendidikan" role="tabpanel"
                        aria-labelledby="nav-lanjut-pendidikan-tab">
                        <form action="" method="POST">
                            @csrf
                            <div id="formulir_lanjut_pendidikan"></div>
                            <br>
                            <br>
                        </form>
                    </div>
                </div>

            </div>
        </div>
    </div>

    <!-- Modal Tambah-->
    <div class="modal fade" id="modal_form_tambah" tabindex="-1">
        <div class="modal-dialog modal-xl">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title">Tambah Pertanyaan</h5>
                </div>
                <form id="formTambah">
                    @csrf
                    <div class="modal-body">
                        Preview :
                        <hr>
                        <table class="table modTambah">
                        </table>

                    </div>
                    <div class="modal-footer">
                        <button type="submit" id="save" class="btn btn-primary me-4">Save</button>
                    </div>
                </form>
            </div>
        </div>
    </div>

    <!-- Modal Edit-->
    <div class="modal fade modal_edit" id="modal_edit" tabindex="-1">
        <div class="modal-dialog modal-xl">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title">Edit Pertanyaan</h5>
                </div>
                <form id="formEdit">
                    @csrf
                    <div class="modal-body">
                        Preview :
                        <hr>
                        <table class="table modEdit">
                        </table>

                    </div>
                    <div class="modal-footer">
                        <button type="submit" id="save" class="btn btn-primary me-4">Save</button>
                    </div>
                </form>
            </div>
        </div>
    </div>
@endsection
