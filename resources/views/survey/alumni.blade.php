@extends('layouts.landing')
@section('content')
    <div class="bg-primary p-3">
        <div class="card">
            <div class="card-header" style="background-color: rgb(255, 255, 255)">
                <h4 class="card-title text-dark m-2">Form Survey Tracer Study Alumni</h4>
                <p class="card-category m-2">Formulir Pengisisan ...</p>
            </div>
            <div class="card-body">
                <form action="{{ route('alumni_submit') }}" method="POST" id="myForm">
                    @csrf

                    <!-- SmartWizard html -->
                    <div id="smartwizard" class="mt-5">
                        <ul class="nav">
                            <li class="nav-item">
                                <a class="nav-link" href="#step-1">
                                    <div class="num">1</div>
                                    Profil Responden
                                </a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="#step-2">
                                    <span class="num">2</span>
                                    Profil Pendidikan Alumni
                                </a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="#step-3">
                                    <span class="num">3</span>
                                    Profil Karir Alumni <br>
                                    (Bekerja)
                                </a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link " href="#step-4">
                                    <span class="num">4</span>
                                    Profil Karir Alumni <br>
                                    (Berwirausaha)
                                </a>
                            </li>
                        </ul>
                        <div class="card-body">

                            <div class="tab-content">

                                <div id="step-1" class="tab-pane" role="tabpanel" aria-labelledby="step-1">

                                    @foreach ($form_alumni->take(1) as $data)
                                        <table class="table table-borderless responsive">
                                            <tbody>
                                                <tr>
                                                    <td class="align-top" style="min-width: 5%;width: 5%">
                                                        {{ $data->no }}.&nbsp;</td>
                                                    <td class="text-break " style="min-width: 100%;width: 40rem">
                                                        {{ $data->survey }}
                                                        @if ($data->wajib == 1)
                                                            <span class="ms-0 ps-0 me-0 pe-0 text-danger">*</span>
                                                        @endif
                                                    </td>
                                                    <td>
                                                        @auth
                                                            <a class="btn-sm btn-primary bg-secondary"
                                                                href="{{ route('delete_alumni', $data->id) }}" role="button"><i
                                                                    class="fa fa-trash"></i></a>
                                                            <a class="btn-sm btn-primary" href="#" role="button"
                                                                data-bs-toggle="modal"
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
                                                            <input type="text" class="form-control mb-1"
                                                                name="bank{{ $data->no }}"
                                                                {{ $data->wajib == 1 ? 'required' : '' }}>
                                                        @else
                                                            @foreach (explode(';', $data->pilihan) as $info)
                                                                <div class="form-check mb-0">
                                                                    <input
                                                                        class="form-check-input gandaOpsi{{ $data->no }}"
                                                                        type="{{ $type }}"
                                                                        id="{{ $data->no . $loop->iteration }}"
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
                                                                            type="{{ $type }}"
                                                                            id="other{{ $loop->iteration }}"
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
                                                    <td class="d-none d-lg-block" style="width: 200px"></td>
                                                </tr>
                                            </tbody>
                                        </table>
                                    @endforeach



                                </div>
                                {{-- <div id="step-2" class="tab-pane" role="tabpanel" aria-labelledby="step-2">
                                        @foreach ($form_alumni->skip(15)->take(13) as $data)
                                            <table class="table table-borderless responsive">
                                                <tbody>
                                                    <tr>
                                                        <td class="align-top" style="min-width: 5%;width: 5%">
                                                            {{ $data->no }}.&nbsp;</td>
                                                        <td class="text-break " style="min-width: 100%;width: 40rem">
                                                            {{ $data->survey }}
                                                            @if ($data->wajib == 1)
                                                                <span class="ms-0 ps-0 me-0 pe-0 text-danger">*</span>
                                                            @endif
                                                        </td>
                                                        <td>
                                                            @auth
                                                                <a class="btn-sm btn-primary bg-secondary"
                                                                    href="{{ route('delete_alumni', $data->id) }}"
                                                                    role="button"><i class="fa fa-trash"></i></a>
                                                                <a class="btn-sm btn-primary" href="#" role="button"
                                                                    data-bs-toggle="modal"
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
                                                                <input type="text" class="form-control mb-1"
                                                                    name="bank{{ $data->no }}"
                                                                    {{ $data->wajib == 1 ? 'required' : '' }}>
                                                            @else
                                                                @foreach (explode(';', $data->pilihan) as $info)
                                                                    <div class="form-check mb-0">
                                                                        <input
                                                                            class="form-check-input gandaOpsi{{ $data->no }}"
                                                                            type="{{ $type }}"
                                                                            id="{{ $data->no . $loop->iteration }}"
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
                                                                        <div
                                                                            class="col-auto form-check ms-2 ps-1 me-0 pe-0">
                                                                            <input
                                                                                class="form-check-input otherOpsiName{{ $data->no }} gandaOpsi{{ $data->no }}"
                                                                                type="{{ $type }}"
                                                                                id="other{{ $loop->iteration }}"
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
                                                        <td class="d-none d-lg-block" style="width: 200px"></td>
                                                    </tr>
                                                </tbody>
                                            </table>
                                        @endforeach
                                    </div>
                                    <div id="step-3" class="tab-pane" role="tabpanel" aria-labelledby="step-3">
                                        @foreach ($form_alumni->skip(28)->take(26) as $data)
                                            <table class="table table-borderless responsive">
                                                <tbody>
                                                    <tr>
                                                        <td class="align-top" style="min-width: 5%;width: 5%">
                                                            {{ $data->no }}.&nbsp;</td>
                                                        <td class="text-break " style="min-width: 100%;width: 40rem">
                                                            {{ $data->survey }}
                                                            @if ($data->wajib == 1)
                                                                <span class="ms-0 ps-0 me-0 pe-0 text-danger">*</span>
                                                            @endif
                                                        </td>
                                                        <td>
                                                            @auth
                                                                <a class="btn-sm btn-primary bg-secondary"
                                                                    href="{{ route('delete_alumni', $data->id) }}"
                                                                    role="button"><i class="fa fa-trash"></i></a>
                                                                <a class="btn-sm btn-primary" href="#" role="button"
                                                                    data-bs-toggle="modal"
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
                                                                <input type="text" class="form-control mb-1"
                                                                    name="bank{{ $data->no }}"
                                                                    {{ $data->wajib == 1 ? 'required' : '' }}>
                                                            @else
                                                                @foreach (explode(';', $data->pilihan) as $info)
                                                                    <div class="form-check mb-0">
                                                                        <input
                                                                            class="form-check-input gandaOpsi{{ $data->no }}"
                                                                            type="{{ $type }}"
                                                                            id="{{ $data->no . $loop->iteration }}"
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
                                                                        <div
                                                                            class="col-auto form-check ms-2 ps-1 me-0 pe-0">
                                                                            <input
                                                                                class="form-check-input otherOpsiName{{ $data->no }} gandaOpsi{{ $data->no }}"
                                                                                type="{{ $type }}"
                                                                                id="other{{ $loop->iteration }}"
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
                                                        <td class="d-none d-lg-block" style="width: 200px"></td>
                                                    </tr>
                                                </tbody>
                                            </table>
                                        @endforeach
                                    </div>
                                    <div id="step-4" class="tab-pane" role="tabpanel" aria-labelledby="step-4">
                                        @foreach ($form_alumni->skip(54) as $data)
                                            <table class="table table-borderless responsive">
                                                <tbody>
                                                    <tr>
                                                        <td class="align-top" style="min-width: 5%;width: 5%">
                                                            {{ $data->no }}.&nbsp;</td>
                                                        <td class="text-break " style="min-width: 100%;width: 40rem">
                                                            {{ $data->survey }}
                                                            @if ($data->wajib == 1)
                                                                <span class="ms-0 ps-0 me-0 pe-0 text-danger">*</span>
                                                            @endif
                                                        </td>
                                                        <td>
                                                            @auth
                                                                <a class="btn-sm btn-primary bg-secondary"
                                                                    href="{{ route('delete_alumni', $data->id) }}"
                                                                    role="button"><i class="fa fa-trash"></i></a>
                                                                <a class="btn-sm btn-primary" href="#" role="button"
                                                                    data-bs-toggle="modal"
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
                                                                <input type="text" class="form-control mb-1"
                                                                    name="bank{{ $data->no }}"
                                                                    {{ $data->wajib == 1 ? 'required' : '' }}>
                                                            @else
                                                                @foreach (explode(';', $data->pilihan) as $info)
                                                                    <div class="form-check mb-0">
                                                                        <input
                                                                            class="form-check-input gandaOpsi{{ $data->no }}"
                                                                            type="{{ $type }}"
                                                                            id="{{ $data->no . $loop->iteration }}"
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
                                                                        <div
                                                                            class="col-auto form-check ms-2 ps-1 me-0 pe-0">
                                                                            <input
                                                                                class="form-check-input otherOpsiName{{ $data->no }} gandaOpsi{{ $data->no }}"
                                                                                type="{{ $type }}"
                                                                                id="other{{ $loop->iteration }}"
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
                                                        <td class="d-none d-lg-block" style="width: 200px"></td>
                                                    </tr>
                                                </tbody>
                                            </table>
                                        @endforeach
                                    </div> --}}

                            </div>


                        </div>

                        <!-- Include optional progressbar HTML -->
                        <div class="progress">
                            <div class="progress-bar" role="progressbar" style="width: 0%" aria-valuenow="0"
                                aria-valuemin="0" aria-valuemax="100"></div>
                        </div>
                        <input id="submit-hidden" type="submit" style="display: none">
                </form>
            </div>
        </div>
    </div>
    </div>
@endsection
