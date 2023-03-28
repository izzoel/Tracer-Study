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

    <!-- Modal Edit Lulusan-->
    {{-- @foreach ($form_lulusan as $data)
        @php
            $pilihan = explode(';', $data->pilihan);
            $edit_other = count($pilihan) + 1;
            
        @endphp
        <div class="modal fade" id="modal_edit_{{ $data->no }}" tabindex="-1">
            <div class="modal-dialog modal-xl">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title">Edit Pertanyaan</h5>
                    </div>
                    <form action="{{ route('edit_lulusan', $data->id) }}" method="POST">
                        @csrf
                        <div class="modal-body">
                            Preview :
                            <hr>
                            <table class="table">
                                <tbody>
                                    <tr>
                                        <td class="col-auto">
                                            <div class="input-group input-group-sm mb-1">
                                                <input type="number" class="form-control mb-0" name="no"
                                                    value="{{ $data->no }}" style="min-width: 100%;width: 1rem">
                                            </div>
                                        <td>
                                            <div class="form-group">
                                                <div class="form-floating">
                                                    <textarea class="form-control" id="pertanyaan" name="pertanyaan" placeholder="pertanyaan" required
                                                        style="height: 100px">{{ $data->survey }}</textarea>
                                                    <label for="pertanyaan" class="text-secondary">Pertanyaan</label>
                                                </div>
                                            </div>


                                        </td>

                                        <td>
                                            <div class="form-check form-switch form-check-inline mb-1">
                                                <input class="form-check-input" type="checkbox"
                                                    id="edit_pilihan_{{ $data->no }}" name="pilihan"
                                                    {{ $data->pilihan != null ? 'checked' : '' }}>
                                                <label class="form-check-label text-dark"
                                                    for="edit_pilihan_{{ $data->no }}">Pilihan</label>
                                            </div>

                                            <div class="form-check form-switch form-check-inline mb-1" id="gandaOpsi">
                                                <input class="form-check-input" type="checkbox" name="ganda"
                                                    id="edit_ganda_{{ $data->no }}"
                                                    {{ $data->ganda != 0 ? 'checked' : '' }}>
                                                <label class="form-check-label text-dark"
                                                    for="edit_ganda_{{ $data->no }}">Ganda</label>
                                            </div>
                                            @if ($data->pilihan != null)
                                                @php
                                                    $i = 0;
                                                @endphp
                                                @foreach ($pilihan as $item)
                                                    <div
                                                        class="input-group input-group-sm mb-1 editOpsi{{ $data->no }}">
                                                        <label class="input-group-text " id="opsi"
                                                            data-edit="{{ $loop->iteration }}"
                                                            data-lab="{{ $loop->iteration }}">{{ $loop->iteration }}.</label>
                                                        <input type="text" class="form-control mb-0" name="opsi[]"
                                                            value="{{ $item }}" required>
                                                    </div>
                                                    @php
                                                        $i += 1;
                                                    @endphp
                                                @endforeach
                                                @if ($data->other != 0)
                                                    <div class="input-group input-group-sm mb-1 editOpsi{{ $data->no }}"
                                                        id="opsiList{{ $data->no }}">
                                                        <label class="input-group-text" data-edit="{{ $i + 1 }}"
                                                            data-lab="{{ $i + 1 }}">{{ $i + 1 }}.</label>
                                                        <input type="text" class="form-control mb-0" placeholder="..."
                                                            disabled>
                                                        <input type="hidden" name="other" value="other">
                                                    </div>
                                                @endif
                                            @endif

                                            <div id="editRow{{ $data->no }}"></div>
                                            <div class="pull-right buttonList{{ $data->no }}">
                                                <a class="btn-sm btn-primary" id="queOpsi{{ $data->no }}"
                                                    onclick="otherOpsi{{ $data->no }}()" role="button">&quest;</a>
                                                <a class="btn-sm btn-primary" id="addOpsi{{ $data->no }}"
                                                    onclick="editOpsi{{ $data->no }}()" role="button">&plus;</a>
                                                <a class="btn-sm btn-primary" id="rmvOpsi{{ $data->no }}"
                                                    onclick="removeOpsi{{ $data->no }}()" role="button">&minus;</a>
                                            </div>
                                        </td>
                                        <td>
                                            <div class="form-check form-switch">
                                                <input class="form-check-input" type="checkbox" id="wajib"
                                                    name="wajib" checked>
                                                <label class="form-check-label text-dark" for="wajib">wajib</label>
                                            </div>
                                        </td>
                                    </tr>

                                </tbody>
                            </table>

                        </div>


                        <div class="modal-footer">
                            <button type="submit" class="btn btn-primary me-4">Save</button>
                        </div>

                    </form>
                </div>
            </div>
        </div>
    @endforeach --}}
@endsection
