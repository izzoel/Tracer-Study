@extends('layouts.landing')
@section('content')
    <div class="bg-primary p-3">
        <div class="card">
            <div class="card-body">
                <div style="height:75vh">
                    <canvas id="myChart"></canvas>
                </div>
            </div>
        </div>
    </div>

    <div class="bg-primary p-3">
        <div class="card">
            <div class="card-header bg-white">
                <div class="">Diagram Responden Alumni - Prodi</div>
            </div>
            <div class="card-body">
                <nav>
                    <div class="nav nav-tabs" id="nav-tab" role="tablist">
                        <a class="nav-link active" id="d3-farmasi" data-bs-toggle="tab" data-bs-target="#nav-d3-farmasi"
                            type="button" role="tab">
                            <span id="tab-title">D3 Farmasi</span>
                        </a>
                        <a class="nav-link" id="d3-tlm" data-bs-toggle="tab" data-bs-target="#nav-d3-tlm" type="button"
                            role="tab">
                            <span id="tab-title">D3 TLM</span>
                        </a>
                        <a class="nav-link" id="s1-farmasi" data-bs-toggle="tab" data-bs-target="#nav-s1-farmasi"
                            type="button" role="tab">
                            <span id="tab-title">S1 Farmasi</span>
                        </a>
                        <a class="nav-link" id="s1-ars" data-bs-toggle="tab" data-bs-target="#nav-s1-ars" type="button"
                            role="tab">
                            <span id="tab-title">S1 ARS</span>
                        </a>
                        <a class="nav-link" id="s1-gizi" data-bs-toggle="tab" data-bs-target="#nav-s1-gizi" type="button"
                            role="tab">
                            <span id="tab-title">S1 Gizi</span>
                        </a>
                        <a class="nav-link" id="s1-hukum" data-bs-toggle="tab" data-bs-target="#nav-s1-hukum"
                            type="button" role="tab">
                            <span id="tab-title">S1 Hukum</span>
                        </a>
                        <a class="nav-link" id="s1-manajemen" data-bs-toggle="tab" data-bs-target="#nav-s1-manajemen"
                            type="button" role="tab">
                            <span id="tab-title">S1 Manajemen</span>
                        </a>
                        <a class="nav-link" id="s1-pgsd" data-bs-toggle="tab" data-bs-target="#nav-s1-pgsd" type="button"
                            role="tab">
                            <span id="tab-title">S1 PGSD</span>
                        </a>
                        <a class="nav-link" id="apoteker" data-bs-toggle="tab" data-bs-target="#nav-apoteker"
                            type="button" role="tab">
                            <span id="tab-title">Profesi Apoteker</span>
                        </a>
                    </div>
                </nav>
                <div class="tab-content" id="nav-tabContent">
                    <div class="tab-pane fade  show active" id="nav-d3-farmasi" role="tabpanel">
                        <div class="row mt-4">
                            <div class="col responden-line">
                                <canvas id="respondenProdiD3Farmasi"></canvas>
                                <button onclick="download()">.png</button>
                            </div>
                            <div class="col">
                                Total Responden D3 Farmasi :
                            </div>
                        </div>
                    </div>
                    <div class="tab-pane fade" id="nav-d3-tlm" role="tabpanel">
                        <div class="row mt-4">
                            <div class="col responden-line">
                                <canvas id="respondenProdiD3Tlm"></canvas>
                            </div>
                            <div class="col">
                                Total Responden D3 TLM :
                            </div>
                        </div>
                    </div>
                    <div class="tab-pane fade" id="nav-s1-farmasi" role="tabpanel">
                        <div class="row mt-4">
                            <div class="col responden-line">
                                <canvas id="respondenProdiS1Farmasi"></canvas>
                            </div>
                            <div class="col">
                                Total Responden S1 Farmasi :
                            </div>
                        </div>
                    </div>
                    <div class="tab-pane fade" id="nav-s1-ars" role="tabpanel">
                        <div class="row mt-4">
                            <div class="col responden-line">
                                <canvas id="respondenProdiS1Ars"></canvas>
                            </div>
                            <div class="col">
                                Total Responden S1 ARS :
                            </div>
                        </div>
                    </div>
                    <div class="tab-pane fade" id="nav-s1-gizi" role="tabpanel">
                        <div class="row mt-4">
                            <div class="col responden-line">
                                <canvas id="respondenProdiS1Gizi"></canvas>
                            </div>
                            <div class="col">
                                Total Responden S1 Gizi :
                            </div>
                        </div>
                    </div>
                    <div class="tab-pane fade" id="nav-s1-hukum" role="tabpanel">
                        <div class="row mt-4">
                            <div class="col responden-line">
                                <canvas id="respondenProdiS1Hukum"></canvas>
                            </div>
                            <div class="col">
                                Total Responden S1 Hukum :
                            </div>
                        </div>
                    </div>
                    <div class="tab-pane fade" id="nav-s1-manajemen" role="tabpanel">
                        <div class="row mt-4">
                            <div class="col responden-line">
                                <canvas id="respondenProdiS1Manajemen"></canvas>
                            </div>
                            <div class="col">
                                Total Responden S1 Manajemen :
                            </div>
                        </div>
                    </div>
                    <div class="tab-pane fade" id="nav-s1-pgsd" role="tabpanel">
                        <div class="row mt-4">
                            <div class="col responden-line">
                                <canvas id="respondenProdiS1Pgsd"></canvas>
                            </div>
                            <div class="col">
                                Total Responden S1 PGSD :
                            </div>
                        </div>
                    </div>
                    <div class="tab-pane fade" id="nav-apoteker" role="tabpanel">
                        <div class="row mt-4">
                            <div class="col responden-line">
                                <canvas id="respondenProdiApoteker"></canvas>
                            </div>
                            <div class="col">
                                Total Responden Apoteker :
                            </div>
                        </div>
                    </div>

                </div>
            </div>
        </div>
    </div>



    <div class="bg-primary p-3">
        <div class="card">
            <div class="card-header bg-white">
                <div class="">Diagram informasi lowongan pekerjaan</div>
            </div>
            <div class="card-body">
                <div class="row">
                    <div class="col mb-5">
                        <canvas id="diagInfoLowonganFF"></canvas>
                    </div>
                    <div class="col mb-5">
                        <canvas id="diagInfoLowonganSaintek"></canvas>
                    </div>
                    <div class="col mb-5">
                        <canvas id="diagInfoLowonganFISH"></canvas>
                    </div>
                </div>
            </div>
        </div>
    </div>


    <div class="bg-primary p-3">
        <div class="row">
            <div class="col">
                <div class="card">
                    <div class="card-header bg-white">
                        <div class="">Diagram masa tunggu dapat pekerjaan</div>
                    </div>
                    <div class="card-body">
                        <div class="" style="height:55vh">
                            <canvas id="diagMasaTunggu"></canvas>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col">
                <div class="card">
                    <div class="card-header bg-white">
                        <div class="">Diagram masa tunggu dapat pekerjaan</div>
                    </div>
                    <div class="card-body">
                        <div class="" style="height:55vh">
                            <canvas id="diagRelevansiPekerjaan"></canvas>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <div class="bg-primary p-3">
        <div class="card">
            <div class="card-header bg-white">
                <div class="">Data Responden Alumni</div>
            </div>
            <div class="card-body">
                <div class="row">
                    <div class="col">
                        <table class="table table-sm table-striped table-hover table-bordered p-0" style="width: 100%"
                            id="tbl_alumni">
                            <thead border="1">
                                <tr class="p-0">
                                    <th>Nama</th>
                                    <th>Prodi</th>
                                    <th>Kategori</th>
                                    <th>Jenis Kelamin</th>
                                    <th>Kontak</th>
                                    <th>Email</th>
                                </tr>
                            </thead>
                            <tbody>
                                @foreach ($data_alumni as $data)
                                    <tr>
                                        {{-- @for ($i = 1; $i < $loop->count + 1; $i++)
                                            <td class="p-1">{{ $data['bank' . $i] }}</td>
                                        @endfor --}}
                                        <td>{{ $data->nama }}</td>
                                        <td>{{ $data->prodi }}</td>
                                        <td> {{ $data->kategori }}</td>
                                        <td> {{ $data->alumni3 }}</td>
                                        <td> {{ $data->alumni4 }}</td>
                                        <td> {{ $data->alumni5 }}</td>
                                    </tr>
                                @endforeach
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </div>

    {{-- <div class="bg-primary p-3">
        <div class="card">
            <div class="card-header bg-white">
                <div class="">Data Responden Alumni</div>
            </div>
            <div class="card-body">
                <div class="row">
                    <div class="col">

                        <table class="table table-sm table-striped table-hover table-bordered p-0" style="width: 100%"
                            id="tbl_alumni">
                            <thead border="1">
                                <tr class="p-0">
                                    <th>Nama</th>
                                    <th>Angkatan</th>
                                    <th>Prodi</th>
                                </tr>
                            </thead>
                            <tbody>
                                @foreach ($data_alumni as $data)
                                    <tr>
                                        @for ($i = 1; $i < $loop->count + 1; $i++)
                                            <td class="p-1">{{ $data['bank' . $i] }}</td>
                                        @endfor
                                    </tr>
                                @endforeach
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>  --}}

    {{-- </div> --}}
    {{-- 
    <div class="bg-primary p-3">
        <div class="card">
            <div class="card-header bg-white">
                <div class="">Diagram informasi lowongan pekerjaan</div>
            </div>
            <div class="card-body">
                <div class="row">
                    <div class="col mb-5">
                        <canvas id="diagInfoLowonganFF"></canvas>
                    </div>
                    <div class="col mb-5">
                        <canvas id="diagInfoLowonganSaintek"></canvas>
                    </div>
                    <div class="col mb-5">
                        <canvas id="diagInfoLowonganFISH"></canvas>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <div class="bg-primary p-3">
        <div class="card">
            <div class="card-header bg-white">
                <div class="">Diagram masa tunggu dapat pekerjaan</div>
            </div>
            <div class="card-body">
                <div class="row">
                    <div class="col mb-5" style="height:35vh">
                        <canvas id="diagMasaTunggu"></canvas>
                    </div>
                </div>
            </div>
        </div>
    </div>



    <div class="bg-primary p-3">
        <div class="card">
            <div class="card-header bg-white">
                <div class="">Data Responden Alumni</div>
            </div>
            <div class="card-body">
                <div class="row">
                    <div class="col">

                        <table class="table table-sm table-striped table-hover table-bordered p-0" style="width: 100%"
                            id="tbl_alumni">
                            <thead border="1">
                                <tr class="p-0">
                                    <th>Nama</th>
                                    <th>Angkatan</th>
                                    <th>Prodi</th>
                                </tr>
                            </thead>
                            <tbody>
                                @foreach ($data_alumni as $data)
                                    <tr>
                                        @for ($i = 1; $i < $loop->count + 1; $i++)
                                            <td class="p-1">{{ $data['bank' . $i] }}</td>
                                        @endfor
                                    </tr>
                                @endforeach
                            </tbody>
                        </table>
                    </div>
                </div>
            </div> --}}

    {{-- </div> --}}
    {{-- </div> --}}
@endsection
