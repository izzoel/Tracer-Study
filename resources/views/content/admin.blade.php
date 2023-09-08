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
                        <a class="main-nav nav-link active" id="FF" data-bs-toggle="tab" data-bs-target="#info-FF"
                            type="button" role="tab">
                            <span id="tab-title-fakultas">Fakultas Farmasi</span>
                        </a>
                        <a class="main-nav nav-link" id="FIKST" data-bs-toggle="tab" data-bs-target="#info-FIKST"
                            type="button" role="tab">
                            <span id="tab-title-fakultas">Fakultas Ilmu Kesehatan Dan Sains Teknologi</span>
                        </a>
                        <a class="main-nav nav-link" id="FISH" data-bs-toggle="tab" data-bs-target="#info-FISH"
                            type="button" role="tab">
                            <span id="tab-title-fakultas">Fakultas Ilmu Sosial Dan Humaniora</span>
                        </a>
                    </div>
                </nav>
                <div class="tab-content" id="nav-tabContent">
                    <div class="tab-pane fade show active" id="info-FF" role="tabpanel">
                        <div class="row mt-4">
                            <nav>
                                <div class="nav nav-tabs" role="tablist">
                                    <a class="sub-nav nav-link active" id="d3-farmasi" data-bs-toggle="tab"
                                        data-bs-target="#statistik-d3-farmasi" type="button" role="tab"
                                        value="D3 Farmasi">
                                        <span id="tab-title">D3 Farmasi</span>
                                    </a>
                                    <a class="sub-nav nav-link" id="s1-farmasi" data-bs-toggle="tab"
                                        data-bs-target="#statistik-s1-farmasi" type="button" role="tab"
                                        value="S1 Farmasi">
                                        <span id="tab-title">S1 Farmasi</span>
                                    </a>
                                    <a class="sub-nav nav-link" id="profesi-apoteker" data-bs-toggle="tab"
                                        data-bs-target="#statistik-profesi-apoteker" type="button" role="tab"
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
                                                    <div class="">Kegiatan Setelah Lulus (Kategori?) ALL</div>
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
                                                    <div class="">Kegiatan Setelah Lulus (Kategori?) ALL</div>
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
                                                    <div class="">Kegiatan Setelah Lulus (Kategori?) ALL</div>
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
                                    <a class="sub-nav nav-link" id="d3-tlm" data-bs-toggle="tab"
                                        data-bs-target="#statistik-d3-tlm" type="button" role="tab" value="D3 TLM">
                                        <span id="tab-title">D3 TLM</span>
                                    </a>
                                    <a class="sub-nav nav-link" id="s1-tlm" data-bs-toggle="tab"
                                        data-bs-target="#statistik-s1-ars" type="button" role="tab" value="S1 ARS">
                                        <span id="tab-title">S1 ARS</span>
                                    </a>
                                    <a class="sub-nav nav-link" id="s1-gizi" data-bs-toggle="tab"
                                        data-bs-target="#statistik-s1-gizi" type="button" role="tab"
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
                                                    <div class="">Kegiatan Setelah Lulus (Kategori?) ALL</div>
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
                                                    <div class="">Kegiatan Setelah Lulus (Kategori?) ALL</div>
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
                                                    <div class="">Kegiatan Setelah Lulus (Kategori?) ALL</div>
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
                                    <a class="sub-nav nav-link" id="s1-hukum" data-bs-toggle="tab"
                                        data-bs-target="#statistik-s1-hukum" type="button" role="tab"
                                        value="S1 Hukum">
                                        <span id="tab-title">S1 Hukum</span>
                                    </a>
                                    <a class="sub-nav nav-link" id="s1-manajemen" data-bs-toggle="tab"
                                        data-bs-target="#statistik-s1-manajemen" type="button" role="tab"
                                        value="S1 Manajemen">
                                        <span id="tab-title">S1 Manajemen</span>
                                    </a>
                                    <a class="sub-nav nav-link" id="s1-pgsd" data-bs-toggle="tab"
                                        data-bs-target="#statistik-s1-pgsd" type="button" role="tab"
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
                                                    <div class="">Kegiatan Setelah Lulus (Kategori?) ALL</div>
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
                                                    <div class="">Kegiatan Setelah Lulus (Kategori?) ALL</div>
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
                                                    <div class="">Kegiatan Setelah Lulus (Kategori?) ALL</div>
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
                        <div class="">Data Responden Alumni Yang Mengisi</div>
                    </div>
                    <div class="card-body">
                        <div class="row">
                            <div class="col">
                                <table class="table table-sm table-striped table-hover table-bordered p-0"
                                    style="width: 100%" id="tbl_alumni">
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

        </div>


    </div>


    <div class="bg-primary p-3">
        <div class="card">
            <div class="card-header bg-white">
                <div class="">Diagram Informasi Lulusan</div>
            </div>

            <div class="card-body">
                <div class="row d-flex justify-content-center"">
                    <div class="col-4">
                        <div class="card">
                            <div class="card-header bg-white">
                                <div class="">Diagram Aspek Integritas</div>
                            </div>
                            <div class="card-body">
                                <div class="" style="height:55vh">
                                    <canvas id="aspekIntegritas"></canvas>
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
                                    <canvas id="aspekProfesionalisme"></canvas>
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
                                    <canvas id="aspekBerbahasaAsing"></canvas>
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
                                    <canvas id="aspekPenggunaanTeknologi"></canvas>
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
                                    <canvas id="aspekKomunikasi"></canvas>
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
                                    <canvas id="aspekKerjasama"></canvas>
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
                                    <canvas id="aspekPengembanganDiri"></canvas>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

            <div class="p-3">
                <div class="card">
                    <div class="card-header bg-white">
                        <div class="">Data Responden Pengguna Lulusan Yang Mengisi</div>
                    </div>
                    <div class="card-body">
                        <div class="row">
                            <div class="col">
                                <table class="table table-sm table-striped table-hover table-bordered p-0"
                                    style="width: 100%" id="tbl_pengguna_lulusan">
                                    <thead border="1">
                                        <tr class="p-0">
                                            <th>Nama Tempat Kerja</th>
                                            <th>Nama Pimpinan/Atasan</th>
                                            <th>No Whatsapp</th>
                                            <th>Email</th>
                                            <th>Nama Alumni</th>
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
