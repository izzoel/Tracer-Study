@extends('layouts.landing')
@section('content')
    <div class="bg-primary p-3">
        <div class="card">
            <div class="card-header" style="background-color: rgb(255, 255, 255)">
                <h4 class="card-title text-dark m-2">Form Survey Tracer Study Lulusan</h4>
                <p class="card-category m-2">Formulir Pengisisan ...</p>
            </div>
            <div class="card-body">
                <form action="{{ route('lulusan_submit') }}" method="POST">
                    @csrf
                    @foreach ($form_lulusan as $data)
                        <table class="table table-borderless responsive ">
                            <tbody>
                                <tr>
                                    <td class="align-top" style="min-width: 5%;width: 5%">{{ $data->no }}.&nbsp;</td>
                                    <td class="text-break " style="min-width: 100%;width: 40rem">
                                        {{ $data->survey }}
                                        @if ($data->wajib == 1)
                                            <span class="ms-0 ps-0 me-0 pe-0 text-danger">*</span>
                                        @endif
                                    </td>
                                    <td>
                                        @auth
                                            <a class="btn-sm btn-primary bg-secondary"
                                                href="{{ route('delete_lulusan', $data->id) }}" role="button"><i
                                                    class="fa fa-trash"></i></a>
                                            <a class="btn-sm btn-primary" href="#" role="button" data-bs-toggle="modal"
                                                data-bs-target="#modal_edit_{{ $data->no }}"><i
                                                    class="fa fa-pencil"></i></a>
                                        @endauth
                                    </td>
                                </tr>
                                <tr>
                                    <td>
                                    </td>
                                    <td class="col">
                                        @if ($data->ganda == 1)
                                            @php
                                                $type = 'checkbox';
                                                $array = '[]';
                                            @endphp
                                        @else
                                            @php
                                                $type = 'radio';
                                                $array = '';
                                            @endphp
                                        @endif

                                        @if ($data->pilihan == '')
                                            <input type="text" class="form-control mb-1" name="bank{{ $data->no }}"
                                                {{ $data->wajib == 1 ? 'required' : '' }}>
                                        @else
                                            @foreach (explode(';', $data->pilihan) as $info)
                                                <div class="form-check mb-0">
                                                    <input class="form-check-input gandaOpsi{{ $data->no }}"
                                                        type="{{ $type }}" id="{{ $data->no . $loop->iteration }}"
                                                        @if ($data->wajib == 1 && $data->ganda != 1) {{ 'required' }} 
                                                        @elseif($data->wajib == 1 && $data->ganda == 1)
                                                         {{ '' }} @endif
                                                        name="bank{{ $data->no }}{{ $array }}"
                                                        value="{{ $info }}">
                                                    <label class="form-check-label text-dark"
                                                        for="{{ $data->no . $loop->iteration }}">
                                                        {{ $info }}
                                                    </label>
                                                </div>
                                            @endforeach

                                            @if ($data->other)
                                                <div class="row input-other">
                                                    <div class="col-auto form-check ms-2 ps-1 me-0 pe-0">
                                                        <input
                                                            class="form-check-input otherOpsiName{{ $data->no }} gandaOpsi{{ $data->no }}"
                                                            type="{{ $type }}" id="other{{ $loop->iteration }}"
                                                            name="bank{{ $data->no }}{{ $array }}">
                                                    </div>

                                                    <div class="col ms-0 ps-0">
                                                        <div class="input-group input-group-sm mb-1"
                                                            style="min-width: 100%;width: 3rem">
                                                            <input type="text" class="form-control"
                                                                data-other="other{{ $loop->iteration }}"
                                                                id="otherOpsi{{ $data->no }}">
                                                        </div>
                                                    </div>
                                                </div>
                                            @endif
                                        @endif
                                    </td>
                                    <td class="d-none d-lg-block" style="width: 200px">

                                    </td>
                                </tr>

                            </tbody>
                        </table>
                    @endforeach
                    @auth
                        <a class="btn-sm btn-primary" href="#" role="button" data-bs-toggle="modal"
                            data-bs-target="#modal_form">&plus;</a>

                    @endauth
                    @guest
                        <button type="submit" class="btn btn-primary position-relative top-50 start-50">Kirim</button>
                    @endguest
                    <br>
                    <br>
                </form>
            </div>
        </div>
    </div>


    <!-- Modal Form Lulusan-->
    <div class="modal fade" id="modal_form" tabindex="-1">
        <div class="modal-dialog modal-xl">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title">Tambah Pertanyaan</h5>
                </div>
                <form action="{{ route('add_lulusan') }}" method="POST">
                    @csrf
                    <div class="modal-body">
                        Preview :
                        <hr>
                        <table class="table">
                            <tbody>
                                <tr>
                                    <td class="col-auto">
                                        {{ $no_urut + 1 }}.
                                        <input type="hidden" name="no" value="{{ $no_urut + 1 }}">
                                    </td>
                                    <td>
                                        <div class="form-group">
                                            <div class="form-floating">
                                                <textarea class="form-control" id="pertanyaan" name="pertanyaan" placeholder="pertanyaan" required
                                                    style="height: 100px"></textarea>
                                                <label for="pertanyaan" class="text-secondary">Pertanyaan</label>
                                            </div>
                                        </div>
                                    </td>

                                    <div class="d-none d-lg-block">
                                        <td>
                                            <div class="form-check form-switch form-check-inline mb-1">
                                                <input class="form-check-input" type="checkbox" role="switch"
                                                    id="pilihan" name="pilihan">
                                                <label class="form-check-label text-dark" for="pilihan">Pilihan</label>
                                            </div>

                                            <div class="form-check form-switch form-check-inline mb-1" id="gandaOpsi">
                                                <input class="form-check-input" type="checkbox" name="ganda"
                                                    id="ganda">
                                                <label class="form-check-label text-dark" for="ganda">Ganda</label>
                                            </div>

                                            <div class="input-group input-group-sm mb-1 addOpsi" id="opsiList">
                                                <label class="input-group-text" id="opsi" data-lab="1">1.</label>
                                                <input type="text" class="form-control mb-0 inputOpsi" name="opsi[]">
                                            </div>

                                            <div id="newRow"></div>
                                            <div class="pull-right buttonList">
                                                <a class="btn-sm btn-primary" id="queOpsi" onclick="otherOpsi()"
                                                    role="button">&quest;</a>
                                                <a class="btn-sm btn-primary" id="addOpsi" onclick="addOpsi()"
                                                    role="button">&plus;</a>
                                                <a class="btn-sm btn-primary" id="rmvOpsi" onclick="removeOpsi()"
                                                    role="button">&minus;</a>
                                            </div>
                                        </td>
                                    </div>



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


    <!-- Modal Edit Lulusan-->
    @foreach ($form_lulusan as $data)
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
                                                {{-- <input type="hidden" value="{{ $data->id }}" name="id"> --}}
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
                                                {{-- loop = {{ $i }} --}}
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
    @endforeach
@endsection
