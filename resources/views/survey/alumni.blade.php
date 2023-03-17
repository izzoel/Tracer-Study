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
                    {{-- @foreach ($form_alumni as $data)
                        <table class="table table-borderless responsive ">
                            <tbody>
                                <tr>
                                    <td class="align-top" style="min-width: 5%;width: 5%">{{ $data->no }}.&nbsp;
                                    </td>
                                    <td class="text-break ">
                                        {{ $data->survey }}
                                        @if ($data->wajib == 1)
                                            <span class="ms-0 ps-0 me-0 pe-0 text-danger">*</span>
                                        @endif
                                    </td>
                                    <td style="min-width: 5rem;width: 5rem">
                                        @auth
                                            <a class="btn-sm btn-primary bg-secondary" id="destroy{{ $data->id }}"
                                                href="{{ route('delete_alumni_belum_bekerja', $data->id) }}" role="button"><i
                                                    class="fa fa-trash"></i></a>
                                            <a class="btn-sm btn-primary" id="edit{{ $data->id }}"role="button"
                                                data-bs-toggle="modal" data-bs-target="#modal_edit_{{ $data->no }}"><i
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
                                                        <div class="input-group input-group-sm mb-1">
                                                            <input type="text" class="form-control"
                                                                data-other="other{{ $loop->iteration }}"
                                                                id="otherOpsi{{ $data->no }}">
                                                        </div>
                                                    </div>
                                                </div>
                                            @endif
                                        @endif
                                    </td>
                                    <td class="d-none d-lg-block">

                                    </td>
                                </tr>

                            </tbody>
                        </table>
                    @endforeach --}}
                    @auth
                        <a class="btn-sm btn-primary" id="tambah" href="#" role="button" data-bs-toggle="modal"
                            data-bs-target="#modal_form_belum_bekerja">&plus;</a>

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
    </div>
@endsection
