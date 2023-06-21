@extends('layouts.landing')
@section('content')
    <div class="bg-primary p-3">
        <div class="card">
            <div class="card-body">
                <div style="height:75vh">
                    <canvas id="dashboardChart"></canvas>
                </div>
            </div>
        </div>
    </div>

    <div class="bg-primary p-3">
        <div class="card">
            <div class="card-header bg-white">
                <div class="">Diagram Alumni - Prodi</div>
            </div>
            <div class="card-body">
                <nav>
                    <div class="nav nav-tabs" id="nav-tab" role="tablist">
                        <a class="nav-link active" id="d3-farmasi" data-bs-toggle="tab" data-bs-target="#nav-d3-farmasi"
                            type="button" role="tab" value="D3 Farmasi">
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
                                <canvas id="D3Farmasi"></canvas>
                            </div>
                            <div class="col">
                                <div id="D3FarmasiStat"></div>
                            </div>
                        </div>
                    </div>
                    <div class="tab-pane fade" id="nav-d3-tlm" role="tabpanel">
                        <div class="row mt-4">
                            <div class="col responden-line">
                                <canvas id="D3TLM"></canvas>
                            </div>
                            <div class="col">
                                <div id="D3TLMStat"></div>
                            </div>
                        </div>
                    </div>
                    <div class="tab-pane fade" id="nav-s1-farmasi" role="tabpanel">
                        <div class="row mt-4">
                            <div class="col responden-line">
                                <canvas id="S1Farmasi"></canvas>
                            </div>
                            <div class="col">
                                <div id="S1FarmasiStat"></div>
                            </div>
                        </div>
                    </div>
                    <div class="tab-pane fade" id="nav-s1-ars" role="tabpanel">
                        <div class="row mt-4">
                            <div class="col responden-line">
                                <canvas id="S1ARS"></canvas>
                            </div>
                            <div class="col">
                                <div id="S1ARSStat"></div>
                            </div>
                        </div>
                    </div>
                    <div class="tab-pane fade" id="nav-s1-gizi" role="tabpanel">
                        <div class="row mt-4">
                            <div class="col responden-line">
                                <canvas id="S1Gizi"></canvas>
                            </div>
                            <div class="col">
                                <div id="S1GiziStat"></div>
                            </div>
                        </div>
                    </div>
                    <div class="tab-pane fade" id="nav-s1-hukum" role="tabpanel">
                        <div class="row mt-4">
                            <div class="col responden-line">
                                <canvas id="S1Hukum"></canvas>
                            </div>
                            <div class="col">
                                <div id="S1HukumStat"></div>
                            </div>
                        </div>
                    </div>
                    <div class="tab-pane fade" id="nav-s1-manajemen" role="tabpanel">
                        <div class="row mt-4">
                            <div class="col responden-line">
                                <canvas id="respondenProdiS1Manajemen"></canvas>
                            </div>
                            <div class="col">
                                <div id="S1ManajemenStat"></div>
                            </div>
                        </div>
                    </div>
                    <div class="tab-pane fade" id="nav-s1-pgsd" role="tabpanel">
                        <div class="row mt-4">
                            <div class="col responden-line">
                                <canvas id="S1PGSD"></canvas>
                            </div>
                            <div class="col">
                                <div id="S1PGSDStat"></div>
                            </div>
                        </div>
                    </div>
                    <div class="tab-pane fade" id="nav-apoteker" role="tabpanel">
                        <div class="row mt-4">
                            <div class="col responden-line">
                                <canvas id="ProfesiApoteker"></canvas>
                            </div>
                            <div class="col">
                                <div id="ProfesiApotekerStat"></div>
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
                <div class="">Data Responden Alumni Yang Mengisi</div>
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
                                        <td>{{ $data->kategori }}</td>
                                        <td>{{ $data->alumni3 }}</td>
                                        <td>{{ $data->alumni4 }}</td>
                                        <td>{{ $data->alumni5 }}</td>
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
