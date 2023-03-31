@extends('layouts.landing')
@section('content')
    <div class="bg-primary p-3">
        <div class="card">
            <div class="card-header" style="background-color: rgb(255, 255, 255)">
                <h4 class="card-title text-dark m-2">Form Survey Tracer Study Pengguna Lulusan</h4>
                <p class="card-category m-2">Formulir pengisisan untuk Pengguna Lulusan</p>
            </div>
            <div class="card-body">
                <form action="{{ route('lulusan_submit') }}" method="POST">
                    @csrf
                    <div id="survey">
                        @foreach ($form_lulusan as $data)
                            @php
                                $i = $loop->iteration;
                            @endphp
                            <table class="table table-borderless responsive ">
                                <tbody>
                                    <tr>
                                        <td class="align-top" style="min-width: 5%;width: 5%">{{ $loop->iteration }}.&nbsp;
                                        </td>
                                        <td class="text-break ">
                                            {{ $data->survey }}
                                            @if ($data->wajib == 1)
                                                <span class="ms-0 ps-0 me-0 pe-0 text-danger">*</span>
                                            @endif
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
                                                <input type="text" class="form-control mb-1"
                                                    name="bank{{ $i }}"
                                                    {{ $data->wajib == 1 ? 'required' : '' }}>
                                            @else
                                                @foreach (explode(';', $data->pilihan) as $info)
                                                    <div class="form-check mb-0">
                                                        <input class="form-check-input gandaOpsi{{ $i }}"
                                                            type="{{ $type }}"
                                                            id="{{ $i . '-' . $loop->iteration }}"
                                                            @if ($data->wajib == 1 && $data->ganda != 1) {{ 'required' }} 
                                                        @elseif($data->wajib == 1 && $data->ganda == 1)
                                                         {{ '' }} @endif
                                                            name="bank{{ $i }}{{ $array }}"
                                                            value="{{ $info }}">
                                                        <label class="form-check-label text-dark"
                                                            for="{{ $i . '-' . $loop->iteration }}">
                                                            {{ $info }}
                                                        </label>
                                                    </div>
                                                @endforeach

                                                @if ($data->other)
                                                    <div class="row input-other">
                                                        <div class="col-auto form-check ms-2 ps-1 me-0 pe-0">
                                                            <input
                                                                class="form-check-input otherOpsiName{{ $loop->iteration }} gandaOpsi{{ $loop->iteration }}"
                                                                type="{{ $type }}"
                                                                id="other{{ $loop->iteration }}"
                                                                name="bank{{ $loop->iteration }}{{ $array }}">
                                                        </div>

                                                        <div class="col ms-0 ps-0">
                                                            <div class="input-group input-group-sm mb-1">
                                                                <input type="text" class="form-control"
                                                                    data-other="other{{ $loop->iteration }}"
                                                                    id="otherOpsi{{ $loop->iteration }}">
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
                        @endforeach
                        <button type="submit" class="btn btn-primary float-end">Kirim</button>
                    </div>
                    <br>
                    <br>
                </form>
            </div>
        </div>
    </div>
    </div>
@endsection
