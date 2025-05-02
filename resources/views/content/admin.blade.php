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
                <div class="">Diagram Informasi Alumni</div>
            </div>
            <div class="card-body">
                <nav>
                    <div class="nav nav-tabs" role="tablist">
                        <a class="main-nav nav-link active" id="FF" data-bs-toggle="tab" data-bs-target="#info-FF" type="button" role="tab">
                            <span id="tab-title-fakultas">Fakultas Farmasi</span>
                        </a>
                        <a class="main-nav nav-link" id="FIKST" data-bs-toggle="tab" data-bs-target="#info-FIKST" type="button" role="tab">
                            <span id="tab-title-fakultas">Fakultas Ilmu Kesehatan Dan Sains Teknologi</span>
                        </a>
                        <a class="main-nav nav-link" id="FISH" data-bs-toggle="tab" data-bs-target="#info-FISH" type="button" role="tab">
                            <span id="tab-title-fakultas">Fakultas Ilmu Sosial Dan Humaniora</span>
                        </a>
                    </div>
                </nav>
                <div class="tab-content" id="nav-tabContent">
                    <div class="tab-pane fade show active" id="info-FF" role="tabpanel">
                        <div class="row mt-4">
                            <nav>
                                <div class="nav nav-tabs" role="tablist">
                                    <a class="sub-nav nav-link active" id="d3-farmasi" data-bs-toggle="tab" data-bs-target="#statistik-d3-farmasi" type="button" role="tab"
                                        value="D3 Farmasi">
                                        <span id="tab-title">D3 Farmasi</span>
                                    </a>
                                    <a class="sub-nav nav-link" id="s1-farmasi" data-bs-toggle="tab" data-bs-target="#statistik-s1-farmasi" type="button" role="tab"
                                        value="S1 Farmasi">
                                        <span id="tab-title">S1 Farmasi</span>
                                    </a>
                                    <a class="sub-nav nav-link" id="profesi-apoteker" data-bs-toggle="tab" data-bs-target="#statistik-profesi-apoteker" type="button" role="tab"
                                        value="Profesi Apoteker">
                                        <span id="tab-title">Profesi Apoteker</span>
                                    </a>
                                </div>
                            </nav>
                            <div class="tab-content" id="nav-tabContent">
                                <div class="tab-pane fade show active" id="statistik-d3-farmasi" role="tabpanel">
                                    <div class="row mt-4 mb-5">
                                        <div class="col" style="height: 300px">
                                            <canvas id="D3Farmasi"></canvas>
                                        </div>
                                    </div>
                                    <div class="row mt-5 d-flex justify-content-center"">
                                        <div class="col-4">
                                            <div class="card">
                                                <div class="card-header bg-white">
                                                    <div class="">Kegiatan Setelah Lulus</div>
                                                </div>
                                                <div class="card-body">
                                                    <div class="" style="height:55vh">
                                                        <canvas id="kegiatanSetelahLulusD3Farmasi"></canvas>
                                                    </div>
                                                </div>
                                            </div>

                                        </div>
                                        <div class="col-4">
                                            <div class="card">
                                                <div class="card-header bg-white">
                                                    <div class="">Tempat Kerja</div>
                                                </div>
                                                <div class="card-body">
                                                    <div class="" style="height:55vh">
                                                        <canvas id="tempatKerjaD3Farmasi"></canvas>
                                                    </div>
                                                </div>
                                            </div>

                                        </div>
                                        <div class="col-4">
                                            <div class="card">
                                                <div class="card-header bg-white">
                                                    <div class="">Diagram Masa Tunggu Dapat Pekerjaan</div>
                                                </div>
                                                <div class="card-body">
                                                    <div class="" style="height:55vh">
                                                        <canvas id="informasiLowonganPekerjaanD3Farmasi"></canvas>
                                                    </div>
                                                </div>
                                            </div>


                                        </div>
                                    </div>
                                </div>
                                <div class="tab-pane fade" id="statistik-s1-farmasi" role="tabpanel">
                                    <div class="row mt-4 mb-5">
                                        <div class="col" style="height: 300px">
                                            <canvas id="S1Farmasi"></canvas>
                                        </div>
                                    </div>
                                    <div class="row mt-5 d-flex justify-content-center">
                                        <div class="col-4">
                                            <div class="card">
                                                <div class="card-header bg-white">
                                                    <div class="">Kegiatan Setelah Lulus</div>
                                                </div>
                                                <div class="card-body">
                                                    <div class="" style="height:55vh">
                                                        <canvas id="kegiatanSetelahLulusS1Farmasi"></canvas>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-4">
                                            <div class="card">
                                                <div class="card-header bg-white">
                                                    <div class="">Tempat Kerja</div>
                                                </div>
                                                <div class="card-body">
                                                    <div class="" style="height:55vh">
                                                        <canvas id="tempatKerjaS1Farmasi"></canvas>
                                                    </div>
                                                </div>
                                            </div>

                                        </div>
                                        <div class="col-4">
                                            <div class="card">
                                                <div class="card-header bg-white">
                                                    <div class="">Diagram Masa Tunggu Dapat Pekerjaan</div>
                                                </div>
                                                <div class="card-body">
                                                    <div class="" style="height:55vh">
                                                        <canvas id="informasiLowonganPekerjaanS1Farmasi"></canvas>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="tab-pane fade" id="statistik-profesi-apoteker" role="tabpanel">
                                    <div class="row mt-4 mb-5">
                                        <div class="col" style="height: 300px">
                                            <canvas id="ProfesiApoteker"></canvas>
                                        </div>
                                    </div>
                                    <div class="row mt-5 d-flex justify-content-center"">
                                        <div class="col-4">
                                            <div class="card">
                                                <div class="card-header bg-white">
                                                    <div class="">Kegiatan Setelah Lulus</div>
                                                </div>
                                                <div class="card-body">
                                                    <div class="" style="height:55vh">
                                                        <canvas id="kegiatanSetelahLulusProfesiApoteker"></canvas>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-4">
                                            <div class="card">
                                                <div class="card-header bg-white">
                                                    <div class="">Tempat Kerja</div>
                                                </div>
                                                <div class="card-body">
                                                    <div class="" style="height:55vh">
                                                        <canvas id="tempatKerjaProfesiApoteker"></canvas>
                                                    </div>
                                                </div>
                                            </div>

                                        </div>
                                        <div class="col-4">
                                            <div class="card">
                                                <div class="card-header bg-white">
                                                    <div class="">Diagram Masa Tunggu Dapat Pekerjaan</div>
                                                </div>
                                                <div class="card-body">
                                                    <div class="" style="height:55vh">
                                                        <canvas id="informasiLowonganPekerjaanProfesiApoteker"></canvas>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>

                        </div>
                    </div>
                    <div class="tab-pane fade" id="info-FIKST" role="tabpanel">
                        <div class="row mt-4">
                            <nav>
                                <div class="nav nav-tabs" role="tablist">
                                    <a class="sub-nav nav-link" id="d3-tlm" data-bs-toggle="tab" data-bs-target="#statistik-d3-tlm" type="button" role="tab"
                                        value="D3 TLM">
                                        <span id="tab-title">D3 TLM</span>
                                    </a>
                                    <a class="sub-nav nav-link" id="s1-tlm" data-bs-toggle="tab" data-bs-target="#statistik-s1-ars" type="button" role="tab"
                                        value="S1 ARS">
                                        <span id="tab-title">S1 ARS</span>
                                    </a>
                                    <a class="sub-nav nav-link" id="s1-gizi" data-bs-toggle="tab" data-bs-target="#statistik-s1-gizi" type="button" role="tab"
                                        value="S1 Gizi">
                                        <span id="tab-title">S1 Gizi</span>
                                    </a>
                                </div>
                            </nav>
                            <div class="tab-content" id="nav-tabContent">
                                <div class="tab-pane fade show" id="statistik-d3-tlm" role="tabpanel">
                                    <div class="row mt-4 mb-5">
                                        <div class="col" style="height: 300px">
                                            <canvas id="D3TLM"></canvas>
                                        </div>
                                    </div>
                                    <div class="row mt-5 d-flex justify-content-center"">
                                        <div class="col-4">
                                            <div class="card">
                                                <div class="card-header bg-white">
                                                    <div class="">Kegiatan Setelah Lulus</div>
                                                </div>
                                                <div class="card-body">
                                                    <div class="" style="height:55vh">
                                                        <canvas id="kegiatanSetelahLulusD3TLM"></canvas>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-4">
                                            <div class="card">
                                                <div class="card-header bg-white">
                                                    <div class="">Tempat Kerja</div>
                                                </div>
                                                <div class="card-body">
                                                    <div class="" style="height:55vh">
                                                        <canvas id="tempatKerjaD3TLM"></canvas>
                                                    </div>
                                                </div>
                                            </div>

                                        </div>
                                        <div class="col-4">
                                            <div class="card">
                                                <div class="card-header bg-white">
                                                    <div class="">Diagram Masa Tunggu Dapat Pekerjaan</div>
                                                </div>
                                                <div class="card-body">
                                                    <div class="" style="height:55vh">
                                                        <canvas id="informasiLowonganPekerjaanD3TLM"></canvas>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="tab-pane fade show" id="statistik-s1-ars" role="tabpanel">
                                    <div class="row mt-4 mb-5">
                                        <div class="col" style="height: 300px">
                                            <canvas id="S1ARS"></canvas>
                                        </div>
                                    </div>
                                    <div class="row mt-5 d-flex justify-content-center"">
                                        <div class="col-4">
                                            <div class="card">
                                                <div class="card-header bg-white">
                                                    <div class="">Kegiatan Setelah Lulus</div>
                                                </div>
                                                <div class="card-body">
                                                    <div class="" style="height:55vh">
                                                        <canvas id="kegiatanSetelahLulusD3TLM"></canvas>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-4">
                                            <div class="card">
                                                <div class="card-header bg-white">
                                                    <div class="">Tempat Kerja</div>
                                                </div>
                                                <div class="card-body">
                                                    <div class="" style="height:55vh">
                                                        <canvas id="tempatKerjaD3TLM"></canvas>
                                                    </div>
                                                </div>
                                            </div>

                                        </div>
                                        <div class="col-4">
                                            <div class="card">
                                                <div class="card-header bg-white">
                                                    <div class="">Diagram Masa Tunggu Dapat Pekerjaan</div>
                                                </div>
                                                <div class="card-body">
                                                    <div class="" style="height:55vh">
                                                        <canvas id="informasiLowonganPekerjaanTLM"></canvas>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="tab-pane fade show" id="statistik-s1-gizi" role="tabpanel">
                                    <div class="row mt-4 mb-5">
                                        <div class="col" style="height: 300px">
                                            <canvas id="S1Gizi"></canvas>
                                        </div>
                                    </div>
                                    <div class="row mt-5 d-flex justify-content-center"">
                                        <div class="col-4">
                                            <div class="card">
                                                <div class="card-header bg-white">
                                                    <div class="">Kegiatan Setelah Lulus</div>
                                                </div>
                                                <div class="card-body">
                                                    <div class="" style="height:55vh">
                                                        <canvas id="kegiatanSetelahLulusTLM"></canvas>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-4">
                                            <div class="card">
                                                <div class="card-header bg-white">
                                                    <div class="">Tempat Kerja</div>
                                                </div>
                                                <div class="card-body">
                                                    <div class="" style="height:55vh">
                                                        <canvas id="tempatKerjaTLM"></canvas>
                                                    </div>
                                                </div>
                                            </div>

                                        </div>
                                        <div class="col-4">
                                            <div class="card">
                                                <div class="card-header bg-white">
                                                    <div class="">Diagram Masa Tunggu Dapat Pekerjaan</div>
                                                </div>
                                                <div class="card-body">
                                                    <div class="" style="height:55vh">
                                                        <canvas id="informasiLowonganPekerjaanTLM"></canvas>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="tab-pane fade" id="info-FISH" role="tabpanel">
                        <div class="row mt-4">
                            <nav>
                                <div class="nav nav-tabs" role="tablist">
                                    <a class="sub-nav nav-link" id="s1-hukum" data-bs-toggle="tab" data-bs-target="#statistik-s1-hukum" type="button" role="tab"
                                        value="S1 Hukum">
                                        <span id="tab-title">S1 Hukum</span>
                                    </a>
                                    <a class="sub-nav nav-link" id="s1-manajemen" data-bs-toggle="tab" data-bs-target="#statistik-s1-manajemen" type="button" role="tab"
                                        value="S1 Manajemen">
                                        <span id="tab-title">S1 Manajemen</span>
                                    </a>
                                    <a class="sub-nav nav-link" id="s1-pgsd" data-bs-toggle="tab" data-bs-target="#statistik-s1-pgsd" type="button" role="tab"
                                        value="S1 PGSD">
                                        <span id="tab-title">S1 PGSD</span>
                                    </a>
                                </div>
                            </nav>
                            <div class="tab-content" id="nav-tabContent">
                                <div class="tab-pane fade show" id="statistik-s1-hukum" role="tabpanel">
                                    <div class="row mt-4 mb-5">
                                        <div class="col" style="height: 300px">
                                            <canvas id="S1Hukum"></canvas>
                                        </div>
                                    </div>
                                    <div class="row mt-5 d-flex justify-content-center"">
                                        <div class="col-4">
                                            <div class="card">
                                                <div class="card-header bg-white">
                                                    <div class="">Kegiatan Setelah Lulus</div>
                                                </div>
                                                <div class="card-body">
                                                    <div class="" style="height:55vh">
                                                        <canvas id="kegiatanSetelahLulus"></canvas>
                                                    </div>
                                                </div>
                                            </div>

                                        </div>
                                        <div class="col-4">
                                            <div class="card">
                                                <div class="card-header bg-white">
                                                    <div class="">Tempat Kerja</div>
                                                </div>
                                                <div class="card-body">
                                                    <div class="" style="height:55vh">
                                                        <canvas id="tempatKerja"></canvas>
                                                    </div>
                                                </div>
                                            </div>

                                        </div>
                                        <div class="col-4">
                                            <div class="card">
                                                <div class="card-header bg-white">
                                                    <div class="">Diagram Masa Tunggu Dapat Pekerjaan</div>
                                                </div>
                                                <div class="card-body">
                                                    <div class="" style="height:55vh">
                                                        <canvas id="informasiLowonganPekerjaan"></canvas>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="tab-pane fade show" id="statistik-s1-manajemen" role="tabpanel">
                                    <div class="row mt-4 mb-5">
                                        <div class="col" style="height: 300px">
                                            <canvas id="S1Manajemen"></canvas>
                                        </div>
                                    </div>
                                    <div class="row mt-5 d-flex justify-content-center"">
                                        <div class="col-4">
                                            <div class="card">
                                                <div class="card-header bg-white">
                                                    <div class="">Kegiatan Setelah Lulus</div>
                                                </div>
                                                <div class="card-body">
                                                    <div class="" style="height:55vh">
                                                        <canvas id="kegiatanSetelahLulus"></canvas>
                                                    </div>
                                                </div>
                                            </div>

                                        </div>
                                        <div class="col-4">
                                            <div class="card">
                                                <div class="card-header bg-white">
                                                    <div class="">Tempat Kerja</div>
                                                </div>
                                                <div class="card-body">
                                                    <div class="" style="height:55vh">
                                                        <canvas id="tempatKerja"></canvas>
                                                    </div>
                                                </div>
                                            </div>

                                        </div>
                                        <div class="col-4">
                                            <div class="card">
                                                <div class="card-header bg-white">
                                                    <div class="">Diagram Masa Tunggu Dapat Pekerjaan</div>
                                                </div>
                                                <div class="card-body">
                                                    <div class="" style="height:55vh">
                                                        <canvas id="informasiLowonganPekerjaan"></canvas>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="tab-pane fade show" id="statistik-s1-pgsd" role="tabpanel">
                                    <div class="row mt-4 mb-5">
                                        <div class="col" style="height: 300px">
                                            <canvas id="S1PGSD"></canvas>
                                        </div>
                                    </div>
                                    <div class="row mt-5 d-flex justify-content-center"">
                                        <div class="col-4">
                                            <div class="card">
                                                <div class="card-header bg-white">
                                                    <div class="">Kegiatan Setelah Lulus</div>
                                                </div>
                                                <div class="card-body">
                                                    <div class="" style="height:55vh">
                                                        <canvas id="kegiatanSetelahLulus"></canvas>
                                                    </div>
                                                </div>
                                            </div>

                                        </div>
                                        <div class="col-4">
                                            <div class="card">
                                                <div class="card-header bg-white">
                                                    <div class="">Tempat Kerja</div>
                                                </div>
                                                <div class="card-body">
                                                    <div class="" style="height:55vh">
                                                        <canvas id="tempatKerja"></canvas>
                                                    </div>
                                                </div>
                                            </div>

                                        </div>
                                        <div class="col-4">
                                            <div class="card">
                                                <div class="card-header bg-white">
                                                    <div class="">Diagram Masa Tunggu Dapat Pekerjaan</div>
                                                </div>
                                                <div class="card-body">
                                                    <div class="" style="height:55vh">
                                                        <canvas id="informasiLowonganPekerjaan"></canvas>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="row mt-4 pt-5">
                        <div class="col-4">
                            <div class="card">
                                <div class="card-header bg-white">
                                    <div class="">Diagram Masa Tunggu Dapat Pekerjaan</div>
                                </div>
                                <div class="card-body">
                                    <div class="" style="height:55vh">
                                        <canvas id="masaTungguDapatPekerjaan"></canvas>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-4">
                            <div class="card">
                                <div class="card-header bg-white">
                                    <div class="">Diagram Relevansi Pekerjaan</div>
                                </div>
                                <div class="card-body">
                                    <div class="" style="height:55vh">
                                        <canvas id="relevansiPekerjaan"></canvas>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-4">
                            <div class="card">
                                <div class="card-header bg-white">
                                    <div class="">Diagram Kegiatan Yang Belum Bekerja</div>
                                </div>
                                <div class="card-body">
                                    <div class="" style="height:55vh">
                                        <canvas id="kegiatanYangBelumBekerja"></canvas>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                </div>
            </div>



            <div class="p-3">
                <div class="card">
                    <div class="card-header bg-white">
                        <div class="">Data Responden Alumni Yang Mengisi <a class="btn-sm btn-primary" href="{{ route('export_alumni') }}">Export</a>
                        </div>
                    </div>
                    <div class="card-body">
                        <div class="row">
                            <div class="col">
                                <select class="form-select mb-3" id="periodeFilter" style="width:max-content;">
                                    <option value="all">-- Semua Periode --</option>
                                </select>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col">
                                <table class="table table-sm table-striped table-hover table-bordered p-0" style="width: 100%" id="tbl_alumni">
                                    <thead border="1">
                                        <tr class="p-0">
                                            <th>Nama</th>
                                            <th>NIM</th>
                                            <th>Prodi</th>
                                            <th>Angkatan</th>
                                            <th class="text-center" style="text-align: center !important;">Periode</th>
                                            <th>Kategori</th>
                                            <th>Jenis Kelamin</th>
                                            <th>Kontak</th>
                                            <th>Email</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        @foreach ($data_alumni as $data)
                                            <tr>
                                                <td>{{ $data->nama }}</td>
                                                <td>{{ $data->nim }}</td>
                                                <td>{{ $data->prodi }}</td>
                                                <td class="text-center" style="text-align: center !important;">{{ $data->angkatan }}</td>
                                                <td class="text-center" style="text-align: center !important;">{{ $data->periode }}</td>
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

                        <div class="row">
                            <div class="col">
                                <span class="btn-sm btn-primary disabled" style="pointer-events: none; background-color: #00ff59;border-color: #00ff59;margin-right:10px;"
                                    onmouseover="event.target.style.cursor='default'" onmouseout="event.target.style.cursor='default'">D3 Farmasi :
                                    {{ $count_D3Farmasi }}</span>
                                <span class="btn-sm btn-primary disabled" style="pointer-events: none; background-color: #024138;border-color: #024138;margin-right:10px;"
                                    onmouseover="event.target.style.cursor='default'" onmouseout="event.target.style.cursor='default'">D3 TLM : {{ $count_D3TLM }}</span>
                                <span class="btn-sm btn-primary disabled" style="pointer-events: none; background-color: #198754;border-color: #198754;margin-right:10px;"
                                    onmouseover="event.target.style.cursor='default'" onmouseout="event.target.style.cursor='default'">S1 Farmasi :
                                    {{ $count_S1Farmasi }}</span>
                                <span class="btn-sm btn-primary disabled" style="pointer-events: none; background-color: #104e8b;border-color: #104e8b;margin-right:10px;"
                                    onmouseover="event.target.style.cursor='default'" onmouseout="event.target.style.cursor='default'">S1 ARS :
                                    {{ $count_S1ARS }}</span>
                                <span class="btn-sm btn-primary disabled" style="pointer-events: none; background-color: #8b107d;border-color: #8b107d;margin-right:10px;"
                                    onmouseover="event.target.style.cursor='default'" onmouseout="event.target.style.cursor='default'">S1 Manajemen :
                                    {{ $count_S1Manajemen }}</span>
                                <span class="btn-sm btn-primary disabled" style="pointer-events: none; background-color: #4a93ff;border-color: #4a93ff;margin-right:10px;"
                                    onmouseover="event.target.style.cursor='default'" onmouseout="event.target.style.cursor='default'">S1 Gizi : {{ $count_S1Gizi }}</span>
                                <span class="btn-sm btn-primary disabled" style="pointer-events: none; background-color: #8a0909;border-color: #8a0909;margin-right:10px;"
                                    onmouseover="event.target.style.cursor='default'" onmouseout="event.target.style.cursor='default'">S1 Hukum :
                                    {{ $count_S1Hukum }}</span>
                                <span class="btn-sm btn-primary disabled" style="pointer-events: none; background-color: #422901;border-color: #422901;margin-right:10px;"
                                    onmouseover="event.target.style.cursor='default'" onmouseout="event.target.style.cursor='default'">S1 PGSD : {{ $count_S1PGSD }}</span>
                                <span class="btn-sm btn-primary disabled" style="pointer-events: none; background-color: #7a7a7a;border-color: #7a7a7a;margin-right:10px;"
                                    onmouseover="event.target.style.cursor='default'" onmouseout="event.target.style.cursor='default'">Profesi Apoteker :
                                    {{ $count_ProfesiApoteker }}</span>

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
                <div class="">Diagram Informasi Lulusan</div>
            </div>

            <div class="card-body">
                <nav>
                    <div class="nav nav-tabs" role="tablist">
                        <a class="main-nav nav-link active" id="L-FF" data-bs-toggle="tab" data-bs-target="#L-info-FF" type="button" role="tab">
                            <span id="L-tab-title-fakultas">Fakultas Farmasi</span>
                        </a>
                        <a class="main-nav nav-link" id="L-FIKST" data-bs-toggle="tab" data-bs-target="#L-info-FIKST" type="button" role="tab">
                            <span id="L-tab-title-fakultas">Fakultas Ilmu Kesehatan Dan Sains Teknologi</span>
                        </a>
                        <a class="main-nav nav-link" id="L-FISH" data-bs-toggle="tab" data-bs-target="#L-info-FISH" type="button" role="tab">
                            <span id="L-tab-title-fakultas">Fakultas Ilmu Sosial Dan Humaniora</span>
                        </a>
                    </div>
                </nav>


                <div class="tab-content" id="L-nav-tabContent">
                    <div class="tab-pane fade show active" id="L-info-FF" role="tabpanel">
                        <div class="row mt-4">
                            <nav>
                                <div class="nav nav-tabs" role="tablist">
                                    <a class="sub-nav nav-link active" id="L-d3-farmasi" data-bs-toggle="tab" data-bs-target="#L-statistik-d3-farmasi" type="button"
                                        role="tab" value="L-D3 Farmasi">
                                        <span id="L-tab-title">D3 Farmasi</span>
                                    </a>
                                    <a class="sub-nav nav-link" id="L-s1-farmasi" data-bs-toggle="tab" data-bs-target="#L-statistik-s1-farmasi" type="button" role="tab"
                                        value="L-S1 Farmasi">
                                        <span id="L-tab-title">S1 Farmasi</span>
                                    </a>
                                    <a class="sub-nav nav-link" id="L-profesi-apoteker" data-bs-toggle="tab" data-bs-target="#L-statistik-profesi-apoteker" type="button"
                                        role="tab" value="L-Profesi Apoteker">
                                        <span id="L-tab-title">Profesi Apoteker</span>
                                    </a>
                                </div>
                            </nav>
                            <div class="tab-content" id="nav-tabContent">
                                <div class="tab-pane fade show active" id="L-statistik-d3-farmasi" role="tabpanel">
                                    <div class="row mt-4 mb-5">
                                        <div class="col-4">
                                            <div class="card">
                                                <div class="card-header bg-white">
                                                    <div class="">Diagram Aspek Integritas</div>
                                                </div>
                                                <div class="card-body">
                                                    <div class="" style="height:55vh">
                                                        <canvas id="aspekIntegritasD3Farmasi"></canvas>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-4">
                                            <div class="card">
                                                <div class="card-header bg-white">
                                                    <div>Diagram Aspek Profesionalisme</div>
                                                </div>
                                                <div class="card-body">
                                                    <div style="height:55vh">
                                                        <canvas id="aspekProfesionalismeD3Farmasi"></canvas>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-4">
                                            <div class="card">
                                                <div class="card-header bg-white">
                                                    <div>Diagram Aspek Kemampuan Berbahasa Asing</div>
                                                </div>
                                                <div class="card-body">
                                                    <div style="height:55vh">
                                                        <canvas id="aspekBerbahasaAsingD3Farmasi"></canvas>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="row mt-4 pt-5">
                                        <div class="col-4">
                                            <div class="card">
                                                <div class="card-header bg-white">
                                                    <div>Diagram Aspek Penggunaan Teknologi</div>
                                                </div>
                                                <div class="card-body">
                                                    <div style="height:55vh">
                                                        <canvas id="aspekPenggunaanTeknologiD3Farmasi"></canvas>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-4">
                                            <div class="card">
                                                <div class="card-header bg-white">
                                                    <div>Diagram Aspek Komunikasi</div>
                                                </div>
                                                <div class="card-body">
                                                    <div style="height:55vh">
                                                        <canvas id="aspekKomunikasiD3Farmasi"></canvas>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-4">
                                            <div class="card">
                                                <div class="card-header bg-white">
                                                    <div>Diagram Aspek Kerjasama Dan Kepemimpinan</div>
                                                </div>
                                                <div class="card-body">
                                                    <div style="height:55vh">
                                                        <canvas id="aspekKerjasamaD3Farmasi"></canvas>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="row mt-4 pt-5 justify-content-center">
                                        <div class="col-4">
                                            <div class="card">
                                                <div class="card-header bg-white">
                                                    <div>Diagram Aspek Pengembangan Diri</div>
                                                </div>
                                                <div class="card-body">
                                                    <div style="height:55vh">
                                                        <canvas id="aspekPengembanganDiriD3Farmasi"></canvas>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="tab-pane fade" id="L-statistik-s1-farmasi" role="tabpanel">
                                    <div class="row mt-4 mb-5">
                                        <div class="row mt-4 mb-5">
                                            <div class="col-4">
                                                <div class="card">
                                                    <div class="card-header bg-white">
                                                        <div class="">Diagram Aspek Integritas</div>
                                                    </div>
                                                    <div class="card-body">
                                                        <div class="" style="height:55vh">
                                                            <canvas id="aspekIntegritasS1Farmasi"></canvas>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-4">
                                                <div class="card">
                                                    <div class="card-header bg-white">
                                                        <div>Diagram Aspek Profesionalisme</div>
                                                    </div>
                                                    <div class="card-body">
                                                        <div style="height:55vh">
                                                            <canvas id="aspekProfesionalismeS1Farmasi"></canvas>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-4">
                                                <div class="card">
                                                    <div class="card-header bg-white">
                                                        <div>Diagram Aspek Kemampuan Berbahasa Asing</div>
                                                    </div>
                                                    <div class="card-body">
                                                        <div style="height:55vh">
                                                            <canvas id="aspekBerbahasaAsingS1Farmasi"></canvas>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="row mt-4 pt-5">
                                            <div class="col-4">
                                                <div class="card">
                                                    <div class="card-header bg-white">
                                                        <div>Diagram Aspek Penggunaan Teknologi</div>
                                                    </div>
                                                    <div class="card-body">
                                                        <div style="height:55vh">
                                                            <canvas id="aspekPenggunaanTeknologiS1Farmasi"></canvas>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-4">
                                                <div class="card">
                                                    <div class="card-header bg-white">
                                                        <div>Diagram Aspek Komunikasi</div>
                                                    </div>
                                                    <div class="card-body">
                                                        <div style="height:55vh">
                                                            <canvas id="aspekKomunikasiS1Farmasi"></canvas>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <div class="col-4">
                                                <div class="card">
                                                    <div class="card-header bg-white">
                                                        <div>Diagram Aspek Kerjasama Dan Kepemimpinan</div>
                                                    </div>
                                                    <div class="card-body">
                                                        <div style="height:55vh">
                                                            <canvas id="aspekKerjasamaS1Farmasi"></canvas>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="row mt-4 pt-5 justify-content-center">
                                            <div class="col-4">
                                                <div class="card">
                                                    <div class="card-header bg-white">
                                                        <div>Diagram Aspek Pengembangan Diri</div>
                                                    </div>
                                                    <div class="card-body">
                                                        <div style="height:55vh">
                                                            <canvas id="aspekPengembanganDiriS1Farmasi"></canvas>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="tab-pane fade" id="L-statistik-profesi-apoteker" role="tabpanel">
                                    <div class="row mt-4 mb-5">
                                        <div class="col-4">
                                            <div class="card">
                                                <div class="card-header bg-white">
                                                    <div class="">Diagram Aspek Integritas</div>
                                                </div>
                                                <div class="card-body">
                                                    <div class="" style="height:55vh">
                                                        <canvas id="aspekIntegritasProfesiApoteker"></canvas>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-4">
                                            <div class="card">
                                                <div class="card-header bg-white">
                                                    <div>Diagram Aspek Profesionalisme</div>
                                                </div>
                                                <div class="card-body">
                                                    <div style="height:55vh">
                                                        <canvas id="aspekProfesionalismeProfesiApoteker"></canvas>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-4">
                                            <div class="card">
                                                <div class="card-header bg-white">
                                                    <div>Diagram Aspek Kemampuan Berbahasa Asing</div>
                                                </div>
                                                <div class="card-body">
                                                    <div style="height:55vh">
                                                        <canvas id="aspekBerbahasaAsingProfesiApoteker"></canvas>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="row mt-4 pt-5">
                                        <div class="col-4">
                                            <div class="card">
                                                <div class="card-header bg-white">
                                                    <div>Diagram Aspek Penggunaan Teknologi</div>
                                                </div>
                                                <div class="card-body">
                                                    <div style="height:55vh">
                                                        <canvas id="aspekPenggunaanTeknologiProfesiApoteker"></canvas>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-4">
                                            <div class="card">
                                                <div class="card-header bg-white">
                                                    <div>Diagram Aspek Komunikasi</div>
                                                </div>
                                                <div class="card-body">
                                                    <div style="height:55vh">
                                                        <canvas id="aspekKomunikasiProfesiApoteker"></canvas>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-4">
                                            <div class="card">
                                                <div class="card-header bg-white">
                                                    <div>Diagram Aspek Kerjasama Dan Kepemimpinan</div>
                                                </div>
                                                <div class="card-body">
                                                    <div style="height:55vh">
                                                        <canvas id="aspekKerjasamaProfesiApoteker"></canvas>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="row mt-4 pt-5 justify-content-center">
                                        <div class="col-4">
                                            <div class="card">
                                                <div class="card-header bg-white">
                                                    <div>Diagram Aspek Pengembangan Diri</div>
                                                </div>
                                                <div class="card-body">
                                                    <div style="height:55vh">
                                                        <canvas id="aspekPengembanganDiriProfesiApoteker"></canvas>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="tab-pane fade " id="L-info-FIKST" role="tabpanel">
                        <div class="row mt-4">
                            <nav>
                                <div class="nav nav-tabs" role="tablist">
                                    <a class="sub-nav nav-link" id="L-d3-tlm" data-bs-toggle="tab" data-bs-target="#L-statistik-d3-tlm" type="button" role="tab"
                                        value="L-D3 TLM">
                                        <span id="L-tab-title">D3 TLM</span>
                                    </a>
                                    <a class="sub-nav nav-link" id="L-s1-tlm" data-bs-toggle="tab" data-bs-target="#L-statistik-s1-ars" type="button" role="tab"
                                        value="L-S1 ARS">
                                        <span id="L-tab-title">S1 ARS</span>
                                    </a>
                                    <a class="sub-nav nav-link" id="L-s1-gizi" data-bs-toggle="tab" data-bs-target="#L-statistik-s1-gizi" type="button" role="tab"
                                        value="L-S1 Gizi">
                                        <span id="L-tab-title">S1 Gizi</span>
                                    </a>
                                </div>
                            </nav>
                            <div class="tab-content" id="nav-tabContent">
                                <div class="tab-pane fade" id="L-statistik-d3-tlm" role="tabpanel">
                                    <div class="row mt-4 mb-5">
                                        <div class="col-4">
                                            <div class="card">
                                                <div class="card-header bg-white">
                                                    <div class="">Diagram Aspek Integritas</div>
                                                </div>
                                                <div class="card-body">
                                                    <div class="" style="height:55vh">
                                                        <canvas id="aspekIntegritasD3TLM"></canvas>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-4">
                                            <div class="card">
                                                <div class="card-header bg-white">
                                                    <div>Diagram Aspek Profesionalisme</div>
                                                </div>
                                                <div class="card-body">
                                                    <div style="height:55vh">
                                                        <canvas id="aspekProfesionalismeD3TLM"></canvas>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-4">
                                            <div class="card">
                                                <div class="card-header bg-white">
                                                    <div>Diagram Aspek Kemampuan Berbahasa Asing</div>
                                                </div>
                                                <div class="card-body">
                                                    <div style="height:55vh">
                                                        <canvas id="aspekBerbahasaAsingD3TLM"></canvas>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="row mt-4 pt-5">
                                        <div class="col-4">
                                            <div class="card">
                                                <div class="card-header bg-white">
                                                    <div>Diagram Aspek Penggunaan Teknologi</div>
                                                </div>
                                                <div class="card-body">
                                                    <div style="height:55vh">
                                                        <canvas id="aspekPenggunaanTeknologiD3TLM"></canvas>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-4">
                                            <div class="card">
                                                <div class="card-header bg-white">
                                                    <div>Diagram Aspek Komunikasi</div>
                                                </div>
                                                <div class="card-body">
                                                    <div style="height:55vh">
                                                        <canvas id="aspekKomunikasiD3TLM"></canvas>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-4">
                                            <div class="card">
                                                <div class="card-header bg-white">
                                                    <div>Diagram Aspek Kerjasama Dan Kepemimpinan</div>
                                                </div>
                                                <div class="card-body">
                                                    <div style="height:55vh">
                                                        <canvas id="aspekKerjasamaD3TLM"></canvas>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="row mt-4 pt-5 justify-content-center">
                                        <div class="col-4">
                                            <div class="card">
                                                <div class="card-header bg-white">
                                                    <div>Diagram Aspek Pengembangan Diri</div>
                                                </div>
                                                <div class="card-body">
                                                    <div style="height:55vh">
                                                        <canvas id="aspekPengembanganDiriD3TLM"></canvas>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="tab-pane fade" id="L-statistik-s1-ars" role="tabpanel">
                                    <div class="row mt-4 mb-5">
                                        <div class="col-4">
                                            <div class="card">
                                                <div class="card-header bg-white">
                                                    <div class="">Diagram Aspek Integritas</div>
                                                </div>
                                                <div class="card-body">
                                                    <div class="" style="height:55vh">
                                                        <canvas id="aspekIntegritasS1ARS"></canvas>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-4">
                                            <div class="card">
                                                <div class="card-header bg-white">
                                                    <div>Diagram Aspek Profesionalisme</div>
                                                </div>
                                                <div class="card-body">
                                                    <div style="height:55vh">
                                                        <canvas id="aspekProfesionalismeS1ARS"></canvas>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-4">
                                            <div class="card">
                                                <div class="card-header bg-white">
                                                    <div>Diagram Aspek Kemampuan Berbahasa Asing</div>
                                                </div>
                                                <div class="card-body">
                                                    <div style="height:55vh">
                                                        <canvas id="aspekBerbahasaAsingS1ARS"></canvas>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="row mt-4 pt-5">
                                        <div class="col-4">
                                            <div class="card">
                                                <div class="card-header bg-white">
                                                    <div>Diagram Aspek Penggunaan Teknologi</div>
                                                </div>
                                                <div class="card-body">
                                                    <div style="height:55vh">
                                                        <canvas id="aspekPenggunaanTeknologiS1ARS"></canvas>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-4">
                                            <div class="card">
                                                <div class="card-header bg-white">
                                                    <div>Diagram Aspek Komunikasi</div>
                                                </div>
                                                <div class="card-body">
                                                    <div style="height:55vh">
                                                        <canvas id="aspekKomunikasiS1ARS"></canvas>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-4">
                                            <div class="card">
                                                <div class="card-header bg-white">
                                                    <div>Diagram Aspek Kerjasama Dan Kepemimpinan</div>
                                                </div>
                                                <div class="card-body">
                                                    <div style="height:55vh">
                                                        <canvas id="aspekKerjasamaS1ARS"></canvas>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="row mt-4 pt-5 justify-content-center">
                                        <div class="col-4">
                                            <div class="card">
                                                <div class="card-header bg-white">
                                                    <div>Diagram Aspek Pengembangan Diri</div>
                                                </div>
                                                <div class="card-body">
                                                    <div style="height:55vh">
                                                        <canvas id="aspekPengembanganDiriS1ARS"></canvas>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="tab-pane fade" id="L-statistik-s1-gizi" role="tabpanel">
                                    <div class="row mt-4 mb-5">
                                        <div class="col-4">
                                            <div class="card">
                                                <div class="card-header bg-white">
                                                    <div class="">Diagram Aspek Integritas</div>
                                                </div>
                                                <div class="card-body">
                                                    <div class="" style="height:55vh">
                                                        <canvas id="aspekIntegritasS1Gizi"></canvas>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-4">
                                            <div class="card">
                                                <div class="card-header bg-white">
                                                    <div>Diagram Aspek Profesionalisme</div>
                                                </div>
                                                <div class="card-body">
                                                    <div style="height:55vh">
                                                        <canvas id="aspekProfesionalismeS1Gizi"></canvas>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-4">
                                            <div class="card">
                                                <div class="card-header bg-white">
                                                    <div>Diagram Aspek Kemampuan Berbahasa Asing</div>
                                                </div>
                                                <div class="card-body">
                                                    <div style="height:55vh">
                                                        <canvas id="aspekBerbahasaAsingS1Gizi"></canvas>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="row mt-4 pt-5">
                                        <div class="col-4">
                                            <div class="card">
                                                <div class="card-header bg-white">
                                                    <div>Diagram Aspek Penggunaan Teknologi</div>
                                                </div>
                                                <div class="card-body">
                                                    <div style="height:55vh">
                                                        <canvas id="aspekPenggunaanTeknologiS1Gizi"></canvas>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-4">
                                            <div class="card">
                                                <div class="card-header bg-white">
                                                    <div>Diagram Aspek Komunikasi</div>
                                                </div>
                                                <div class="card-body">
                                                    <div style="height:55vh">
                                                        <canvas id="aspekKomunikasiS1Gizi"></canvas>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-4">
                                            <div class="card">
                                                <div class="card-header bg-white">
                                                    <div>Diagram Aspek Kerjasama Dan Kepemimpinan</div>
                                                </div>
                                                <div class="card-body">
                                                    <div style="height:55vh">
                                                        <canvas id="aspekKerjasamaS1Gizi"></canvas>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="row mt-4 pt-5 justify-content-center">
                                        <div class="col-4">
                                            <div class="card">
                                                <div class="card-header bg-white">
                                                    <div>Diagram Aspek Pengembangan Diri</div>
                                                </div>
                                                <div class="card-body">
                                                    <div style="height:55vh">
                                                        <canvas id="aspekPengembanganDiriS1Gizi"></canvas>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="tab-pane fade" id="L-info-FISH" role="tabpanel">
                        <div class="row mt-4">
                            <nav>
                                <div class="nav nav-tabs" role="tablist">
                                    <a class="sub-nav nav-link" id="L-s1-hukum" data-bs-toggle="tab" data-bs-target="#L-statistik-s1-hukum" type="button" role="tab"
                                        value="L-S1 Hukum">
                                        <span id="L-tab-title">S1 Hukum</span>
                                    </a>
                                    <a class="sub-nav nav-link" id="L-s1-manajemen" data-bs-toggle="tab" data-bs-target="#L-statistik-s1-manajemen" type="button" role="tab"
                                        value="L-S1 Manajemen">
                                        <span id="L-tab-title">S1 Manajemen</span>
                                    </a>
                                    <a class="sub-nav nav-link" id="L-s1-pgsd" data-bs-toggle="tab" data-bs-target="#L-statistik-s1-pgsd" type="button" role="tab"
                                        value="L-S1 PGSD">
                                        <span id="L-tab-title">S1 PGSD</span>
                                    </a>
                                </div>
                            </nav>
                            <div class="tab-content" id="nav-tabContent">
                                <div class="tab-pane fade" id="L-statistik-s1-hukum" role="tabpanel">
                                    <div class="row mt-4 mb-5">
                                        <div class="col-4">
                                            <div class="card">
                                                <div class="card-header bg-white">
                                                    <div class="">Diagram Aspek Integritas</div>
                                                </div>
                                                <div class="card-body">
                                                    <div class="" style="height:55vh">
                                                        <canvas id="aspekIntegritasS1Hukum"></canvas>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-4">
                                            <div class="card">
                                                <div class="card-header bg-white">
                                                    <div>Diagram Aspek Profesionalisme</div>
                                                </div>
                                                <div class="card-body">
                                                    <div style="height:55vh">
                                                        <canvas id="aspekProfesionalismeS1Hukum"></canvas>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-4">
                                            <div class="card">
                                                <div class="card-header bg-white">
                                                    <div>Diagram Aspek Kemampuan Berbahasa Asing</div>
                                                </div>
                                                <div class="card-body">
                                                    <div style="height:55vh">
                                                        <canvas id="aspekBerbahasaAsingS1Hukum"></canvas>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="row mt-4 pt-5">
                                        <div class="col-4">
                                            <div class="card">
                                                <div class="card-header bg-white">
                                                    <div>Diagram Aspek Penggunaan Teknologi</div>
                                                </div>
                                                <div class="card-body">
                                                    <div style="height:55vh">
                                                        <canvas id="aspekPenggunaanTeknologiS1Hukum"></canvas>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-4">
                                            <div class="card">
                                                <div class="card-header bg-white">
                                                    <div>Diagram Aspek Komunikasi</div>
                                                </div>
                                                <div class="card-body">
                                                    <div style="height:55vh">
                                                        <canvas id="aspekKomunikasiS1Hukum"></canvas>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-4">
                                            <div class="card">
                                                <div class="card-header bg-white">
                                                    <div>Diagram Aspek Kerjasama Dan Kepemimpinan</div>
                                                </div>
                                                <div class="card-body">
                                                    <div style="height:55vh">
                                                        <canvas id="aspekKerjasamaS1Hukum"></canvas>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="row mt-4 pt-5 justify-content-center">
                                        <div class="col-4">
                                            <div class="card">
                                                <div class="card-header bg-white">
                                                    <div>Diagram Aspek Pengembangan Diri</div>
                                                </div>
                                                <div class="card-body">
                                                    <div style="height:55vh">
                                                        <canvas id="aspekPengembanganDiriS1Hukum"></canvas>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="tab-pane fade" id="L-statistik-s1-manajemen" role="tabpanel">
                                    <div class="row mt-4 mb-5">
                                        <div class="col-4">
                                            <div class="card">
                                                <div class="card-header bg-white">
                                                    <div class="">Diagram Aspek Integritas</div>
                                                </div>
                                                <div class="card-body">
                                                    <div class="" style="height:55vh">
                                                        <canvas id="aspekIntegritasS1Manajemen"></canvas>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-4">
                                            <div class="card">
                                                <div class="card-header bg-white">
                                                    <div>Diagram Aspek Profesionalisme</div>
                                                </div>
                                                <div class="card-body">
                                                    <div style="height:55vh">
                                                        <canvas id="aspekProfesionalismeS1Manajemen"></canvas>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-4">
                                            <div class="card">
                                                <div class="card-header bg-white">
                                                    <div>Diagram Aspek Kemampuan Berbahasa Asing</div>
                                                </div>
                                                <div class="card-body">
                                                    <div style="height:55vh">
                                                        <canvas id="aspekBerbahasaAsingS1Manajemen"></canvas>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="row mt-4 pt-5">
                                        <div class="col-4">
                                            <div class="card">
                                                <div class="card-header bg-white">
                                                    <div>Diagram Aspek Penggunaan Teknologi</div>
                                                </div>
                                                <div class="card-body">
                                                    <div style="height:55vh">
                                                        <canvas id="aspekPenggunaanTeknologiS1Manajemen"></canvas>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-4">
                                            <div class="card">
                                                <div class="card-header bg-white">
                                                    <div>Diagram Aspek Komunikasi</div>
                                                </div>
                                                <div class="card-body">
                                                    <div style="height:55vh">
                                                        <canvas id="aspekKomunikasiS1Manajemen"></canvas>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-4">
                                            <div class="card">
                                                <div class="card-header bg-white">
                                                    <div>Diagram Aspek Kerjasama Dan Kepemimpinan</div>
                                                </div>
                                                <div class="card-body">
                                                    <div style="height:55vh">
                                                        <canvas id="aspekKerjasamaS1Manajemen"></canvas>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="row mt-4 pt-5 justify-content-center">
                                        <div class="col-4">
                                            <div class="card">
                                                <div class="card-header bg-white">
                                                    <div>Diagram Aspek Pengembangan Diri</div>
                                                </div>
                                                <div class="card-body">
                                                    <div style="height:55vh">
                                                        <canvas id="aspekPengembanganDiriS1Manajemen"></canvas>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="tab-pane fade" id="L-statistik-s1-pgsd" role="tabpanel">
                                    <div class="row mt-4 mb-5">
                                        <div class="col-4">
                                            <div class="card">
                                                <div class="card-header bg-white">
                                                    <div class="">Diagram Aspek Integritas</div>
                                                </div>
                                                <div class="card-body">
                                                    <div class="" style="height:55vh">
                                                        <canvas id="aspekIntegritasS1PGSD"></canvas>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-4">
                                            <div class="card">
                                                <div class="card-header bg-white">
                                                    <div>Diagram Aspek Profesionalisme</div>
                                                </div>
                                                <div class="card-body">
                                                    <div style="height:55vh">
                                                        <canvas id="aspekProfesionalismeS1PGSD"></canvas>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-4">
                                            <div class="card">
                                                <div class="card-header bg-white">
                                                    <div>Diagram Aspek Kemampuan Berbahasa Asing</div>
                                                </div>
                                                <div class="card-body">
                                                    <div style="height:55vh">
                                                        <canvas id="aspekBerbahasaAsingS1PGSD"></canvas>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="row mt-4 pt-5">
                                        <div class="col-4">
                                            <div class="card">
                                                <div class="card-header bg-white">
                                                    <div>Diagram Aspek Penggunaan Teknologi</div>
                                                </div>
                                                <div class="card-body">
                                                    <div style="height:55vh">
                                                        <canvas id="aspekPenggunaanTeknologiS1PGSD"></canvas>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-4">
                                            <div class="card">
                                                <div class="card-header bg-white">
                                                    <div>Diagram Aspek Komunikasi</div>
                                                </div>
                                                <div class="card-body">
                                                    <div style="height:55vh">
                                                        <canvas id="aspekKomunikasiS1PGSD"></canvas>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-4">
                                            <div class="card">
                                                <div class="card-header bg-white">
                                                    <div>Diagram Aspek Kerjasama Dan Kepemimpinan</div>
                                                </div>
                                                <div class="card-body">
                                                    <div style="height:55vh">
                                                        <canvas id="aspekKerjasamaS1PGSD"></canvas>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="row mt-4 pt-5 justify-content-center">
                                        <div class="col-4">
                                            <div class="card">
                                                <div class="card-header bg-white">
                                                    <div>Diagram Aspek Pengembangan Diri</div>
                                                </div>
                                                <div class="card-body">
                                                    <div style="height:55vh">
                                                        <canvas id="aspekPengembanganDiriS1PGSD"></canvas>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>

                </div>

            </div>

            <div class="p-3">
                <div class="card">
                    <div class="card-header bg-white">
                        <div class="">Data Responden Pengguna Lulusan Yang Mengisi <a class="btn-sm btn-primary" href="{{ route('export_lulusan') }}">Export</a></div>
                    </div>
                    <div class="card-body">
                        <div class="row">
                            <div class="col">
                                <select class="form-select mb-3" id="periodePenggunaLulusanFilter" style="width:max-content;">
                                    <option value="all">-- Semua Periode --</option>
                                </select>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col">
                                <table class="table table-sm table-striped table-hover table-bordered p-0" style="width: 100%" id="tbl_pengguna_lulusan">
                                    <thead border="1">
                                        <tr class="p-0">
                                            <th>Nama Tempat Kerja</th>
                                            <th>Nama Pimpinan/Atasan</th>
                                            <th>No Whatsapp</th>
                                            <th>Email</th>
                                            <th>Nama Alumni</th>
                                            <th>Prodi Alumni</th>
                                            <th>Periode</th>
                                            <th>Jabatan Alumni</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        @foreach ($data_pengguna_lulusan as $data)
                                            <tr>
                                                <td>{{ $data->bank1 }}</td>
                                                <td>{{ $data->bank3 }}</td>
                                                <td>{{ $data->bank4 }}</td>
                                                <td>{{ $data->bank5 }}</td>
                                                <td>{{ $data->bank6 }}</td>
                                                <td>{{ $data->bank38 }}</td>
                                                <td>{{ $data->periode }}</td>
                                                <td>{{ $data->bank7 }}</td>
                                            </tr>
                                        @endforeach
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

    </div>
@endsection
