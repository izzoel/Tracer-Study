@extends('layouts.landing')
@section('content')
    <div class="bg-primary p-3">
        <div class="card">
            <div class="card-header" style="background-color: rgb(255, 255, 255)">
                <h4 class="card-title text-dark m-2">Form Survey Tracer Study Lulusan</h4>
                <p class="card-category m-2">Formulir Pengisisan ...</p>
            </div>
            <div class="card-body">

                <nav>
                    <div class="nav nav-tabs" id="nav-tab" role="tablist">
                        <a class="nav-link active" id="nav-profil-pengguna-lulusan-tab" data-bs-toggle="tab"
                            data-bs-target="#nav-profil-pengguna-lulusan" type="button" role="tab">
                            <span id="tab-title">Profil Pengguna Lulusan</span>
                        </a>
                        <a class="nav-link" id="nav-aspek-integritas-tab" data-bs-toggle="tab"
                            data-bs-target="#nav-aspek-integritas" type="button" role="tab"
                            aria-controls="nav-aspek-integritas" aria-selected="false">
                            <span id="tab-title">Aspek Integritas</span>
                        </a>
                        <a class="nav-link" id="nav-aspek-profesionalisme-tab" data-bs-toggle="tab"
                            data-bs-target="#nav-aspek-profesionalisme" type="button" role="tab"
                            aria-controls="nav-aspek-profesionalisme" aria-selected="false">
                            <span id="tab-title">Aspek Profesionalisme</span>
                        </a>
                        <a class="nav-link" id="nav-aspek-kemampuan-berbahasa-asing-tab" data-bs-toggle="tab"
                            data-bs-target="#nav-aspek-kemampuan-berbahasa-asing" type="button" role="tab"
                            aria-controls="nav-aspek-kemampuan-berbahasa-asing" aria-selected="false">
                            <span id="tab-title">Aspek Kemampuan Berbahasa Asing</span>
                        </a>
                        <a class="nav-link" id="nav-aspek-penggunaan-teknologi-tab" data-bs-toggle="tab"
                            data-bs-target="#nav-aspek-penggunaan-teknologi" type="button" role="tab"
                            aria-controls="nav-aspek-penggunaan-teknologi" aria-selected="false">
                            <span id="tab-title">Aspek Penggunaan Teknologi</span>
                        </a>
                        <a class="nav-link" id="nav-aspek-komunikasi-tab" data-bs-toggle="tab"
                            data-bs-target="#nav-aspek-komunikasi" type="button" role="tab"
                            aria-controls="nav-aspek-komunikasi" aria-selected="false">
                            <span id="tab-title">Aspek Komunikasi</span>
                        </a>
                        <a class="nav-link" id="nav-aspek-kerjasama-tim-tab" data-bs-toggle="tab"
                            data-bs-target="#nav-aspek-kerjasama-tim" type="button" role="tab"
                            aria-controls="nav-aspek-kerjasama-tim" aria-selected="false">
                            <span id="tab-title">Aspek Kerjasama Tim</span>
                        </a>
                        <a class="nav-link" id="nav-aspek-pengembangan-diri-tab" data-bs-toggle="tab"
                            data-bs-target="#nav-aspek-pengembangan-diri" type="button" role="tab"
                            aria-controls="nav-aspek-pengembangan-diri" aria-selected="false">
                            <span id="tab-title">Aspek Pengembangan Diri</span>
                        </a>
                    </div>
                </nav>

                <div class="tab-content" id="nav-tabContent">
                    <div class="tab-pane fade show active" id="nav-profil-pengguna-lulusan" role="tabpanel">
                        <form action="" method="POST">
                            @csrf
                            <div id="formulir_profil_pengguna_lulusan"></div>
                            <br>
                            <br>
                        </form>
                    </div>

                    <div class="tab-pane fade" id="nav-aspek-integritas" role="tabpanel">
                        <form action="" method="POST">
                            @csrf
                            <div id="formulir_aspek_integritas"></div>
                            <br>
                            <br>
                        </form>
                    </div>

                    <div class="tab-pane fade" id="nav-aspek-profesionalisme" role="tabpanel">
                        <form action="" method="POST">
                            @csrf
                            <div id="formulir_aspek_profesionalisme"></div>
                            <br>
                            <br>
                        </form>
                    </div>

                    <div class="tab-pane fade" id="nav-aspek-kemampuan-berbahasa-asing" role="tabpanel">
                        <form action="" method="POST">
                            @csrf
                            <div id="formulir_aspek_kemampuan_berbahasa_asing"></div>
                            <br>
                            <br>
                        </form>
                    </div>

                    <div class="tab-pane fade" id="nav-aspek-penggunaan-teknologi" role="tabpanel">
                        <form action="" method="POST">
                            @csrf
                            <div id="formulir_aspek_penggunaan_teknologi"></div>
                            <br>
                            <br>
                        </form>
                    </div>

                    <div class="tab-pane fade" id="nav-aspek-komunikasi" role="tabpanel">
                        <form action="" method="POST">
                            @csrf
                            <div id="formulir_aspek_komunikasi"></div>
                            <br>
                            <br>
                        </form>
                    </div>

                    <div class="tab-pane fade" id="nav-aspek-kerjasama-tim" role="tabpanel">
                        <form action="" method="POST">
                            @csrf
                            <div id="formulir_aspek_kerjasama_tim"></div>
                            <br>
                            <br>
                        </form>
                    </div>

                    <div class="tab-pane fade" id="nav-aspek-pengembangan-diri" role="tabpanel">
                        <form action="" method="POST">
                            @csrf
                            <div id="formulir_aspek_pengembangan_diri"></div>
                            <br>
                            <br>
                        </form>
                    </div>

                </div>





            </div>
        </div>
    </div>


    <!-- Modal Form Lulusan-->
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
