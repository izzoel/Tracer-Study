@extends('layouts.landing')
@section('content')
    <div class="bg-primary p-3">
        <div class="card">
            <div class="card-header" style="background-color: rgb(255, 255, 255)">
                <h4 class="card-title text-dark m-2">Form Survey Tracer Study Alumni</h4>
                <p class="card-category m-2">Formulir Pengisisan ...</p>
            </div>
            <div class="card-body">
                {{-- <form action="{{ route('alumni_submit') }}" method="POST" id="myForm">
                    @csrf

                    <!-- SmartWizard html -->
                    <nav>
                        <div class="nav nav-pills nav-fill" id="nav-tab" role="tablist">
                            <a class="nav-link active" id="step1-tab" data-toggle="tab" href="#step1">Step 1</a>
                            <a class="nav-link" id="step2-tab" data-toggle="tab" href="#step2">Step 2</a>
                            <a class="nav-link" id="step3-tab" data-toggle="tab" href="#step3">Step 3</a>
                        </div>
                    </nav>
                    <div class="tab-content py-4" id="nav-tabContent">
                        <div class="tab-pane fade show active" id="step1">
                            <h4>Step 1</h4>
                            <div class="mb-3">
                                <label for="first_name">Required field 1</label>
                                <input type="text" class="form-control" id="first_name" required>
                            </div>
                            <div class="mb-3">
                                <label for="first_name">Required field 2</label>
                                <input type="text" class="form-control" id="first_name" required>
                            </div>
                            <div class="mb-3">
                                <label for="first_name">Optional field</label>
                                <input type="text" class="form-control" id="first_name">
                            </div>
                        </div>
                        <div class="tab-pane fade" id="step2">
                            <h4>Step 2</h4>
                            <div class="mb-3">
                                <label for="first_name">Required field 1</label>
                                <input type="text" class="form-control" id="first_name" required>
                            </div>
                            <div class="mb-3">
                                <label for="first_name">Optional field</label>
                                <input type="text" class="form-control" id="first_name">
                            </div>
                            <div class="mb-3">
                                <label for="first_name">Required field 2</label>
                                <textarea rows="5" class="form-control" required></textarea>
                            </div>
                        </div>
                        <div class="tab-pane fade" id="step3">
                            <h4>Step 3</h4>
                            <div class="mb-3">
                                <label for="first_name">Required field 1</label>
                                <input type="text" class="form-control-plaintext" value="Lorem ipsum dolor sit amet"
                                    id="first_name">
                            </div>
                            <div class="mb-3">
                                <label for="first_name">Optional field</label>
                                <input type="text" class="form-control-plaintext" value="Lorem ipsum dolor sit amet"
                                    id="first_name">
                            </div>
                            <div class="mb-3">
                                <label for="first_name">Required field 2</label>
                                <input type="text" class="form-control-plaintext" value="Lorem ipsum dolor sit amet"
                                    id="first_name">
                            </div>
                        </div>
                    </div>

                    <div class="row justify-content-between">
                        <div class="col-auto"><button type="button" class="btn btn-secondary"
                                data-enchanter="previous">Previous</button></div>
                        <div class="col-auto">
                            <button type="button" class="btn btn-primary" data-enchanter="next">Next</button>
                            <button type="submit" class="btn btn-primary" data-enchanter="finish">Finish</button>
                        </div>
                    </div>
                </form> --}}

                <form action="" method="post" id="myForm">
                    <nav>
                        <div class="nav nav-pills nav-fill" id="nav-tab" role="tablist">
                            <a class="nav-link active" id="step1-tab" data-bs-toggle="tab" href="#step1">
                                Profil Responden
                            </a>
                            <a class="nav-link" id="step2-tab" data-bs-toggle="tab" href="#step2">
                                Profil Karir Alumni <br>
                                (Belum Bekerja)
                            </a>
                            <a class="nav-link" id="step3-tab" data-bs-toggle="tab" href="#step3">
                                Profil Karir Alumni <br>
                                (Bekerja)
                            </a>
                            <a class="nav-link" id="step4-tab" data-bs-toggle="tab" href="#step4">
                                Profil Karir Alumni <br>
                                (Berwirausaha)
                            </a>
                            <a class="nav-link" id="step5-tab" data-bs-toggle="tab" href="#step5">
                                Lanjut Pendidikan<br>
                            </a>
                        </div>
                    </nav>
                    <div class="tab-content py-4">
                        <div class="tab-pane fade show active" id="step1">
                            @foreach ($form_alumni->take(14) as $data)
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
                                                            <input class="form-check-input gandaOpsi{{ $data->no }}"
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
                        <div class="tab-pane fade" id="step2">
                            @foreach ($form_alumni_belum_bekerja as $data)
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
                                                            <input class="form-check-input gandaOpsi{{ $data->no }}"
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
                        <div class="tab-pane fade" id="step3">
                            @foreach ($form_alumni_sudah_bekerja as $data)
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
                                                            <input class="form-check-input gandaOpsi{{ $data->no }}"
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
                        <div class="tab-pane fade" id="step4">
                            @foreach ($form_alumni_wirausaha as $data)
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
                                                            <input class="form-check-input gandaOpsi{{ $data->no }}"
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
                        <div class="tab-pane fade" id="step5">
                            @foreach ($form_alumni_pendidikan as $data)
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
                                                            <input class="form-check-input gandaOpsi{{ $data->no }}"
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
                    </div>
                    <div class="row justify-content-between">
                        <div class="col-auto"><button type="button" class="btn btn-secondary"
                                data-enchanter="previous">Previous</button></div>
                        <div class="col-auto">
                            <button type="button" class="btn btn-primary" data-enchanter="next">Next</button>
                            <button type="submit" class="btn btn-primary" data-enchanter="finish">Finish</button>
                        </div>
                    </div>
                </form>

            </div>
        </div>
    </div>
    </div>
@endsection
