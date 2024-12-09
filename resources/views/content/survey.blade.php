@extends('layouts.landing')
@section('content')
    <div class="row justify-content-md-center mt-2 mb-5">
        <div class="col d-grid justify-content-md-end mt-4 me-2 ms-2" data-aos="fade-right" data-aos-duration="1500">
            <div class="card mx-auto" style="width: 20rem;">
                <div class="mx-auto d-block mt-3 position-relative text-center card-img-top">
                    <img src="../images/alumni.png" alt="alumni" width="200">
                </div>
                <div class="card-body">
                    <h5 class="card-title">Alumni</h5>
                    <p class="card-text">Form pengisian survey untuk <b style="color: #FF5733;">Alumni</b> yang terdaftar di
                        Universitas Borneo Lestari.
                    </p>
                    <div class="d-grid gap-2 d-md-flex justify-content-md-end" data-bs-toggle="modal" data-bs-target="#alumniModal">
                        <a class="btn btn-primary d-md-flex justify-content-md-end text-center rounded-pill" role="button">Isi Survey</a>
                    </div>
                </div>
            </div>
        </div>

        <div class="col d-grid justify-content-md-start mt-4 me-2 ms-2" data-aos="fade-left" data-aos-duration="1500">
            <div class="card mx-auto" style="width: 20rem;">
                <div class="mx-auto d-block mt-3 position-relative text-center card-img-top">
                    <img src="../images/pengguna-lulusan.png" alt="lulusan" width="200">
                </div>
                <div class="card-body">
                    <h5 class="card-title">Pengguna Lulusan</h5>
                    <p class="card-text">Form pengisian survey untuk <b style="color: #FF5733;">Pengguna Lulusan</b> Alumni
                        Universitas Borneo Lestari.
                    </p>
                    <div class="d-grid gap-2 d-md-flex justify-content-md-end" data-bs-toggle="modal" data-bs-target="#lulusanModal">
                        <a class="btn btn-primary d-md-flex justify-content-md-end text-center rounded-pill" role="button">Isi Survey</a>
                    </div>
                </div>
            </div>
        </div>

    </div>



    <!-- Modal -->
    <div class="modal fade" id="alumniModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">

                <form id="alumni-survey" action="{{ route('alumni') }}" method="post">
                    @csrf
                    <div class="modal-header">
                        <h5 class="modal-title" id="exampleModalLabel">Verifikasi Alumni</h5>
                        <a href="" data-bs-dismiss="modal" style="color: #FF5733;">
                            <span>&times;</span>
                        </a>
                    </div>
                    <div class="modal-body">
                        <div class="m-5 mt-1 mb-1">
                            <div class="mb-3">
                                <label for="nama" class="form-label">
                                    Nama Lengkap<span class="ms-0 ps-0 me-0 pe-0 text-danger">*</span>
                                </label>
                                <input type="nama" class="form-control" name="nama" id="nama" required>
                            </div>
                            <div class="mb-3">
                                <label for="nim" class="form-label">
                                    NIM<span class="ms-0 ps-0 me-0 pe-0 text-danger">*</span>
                                </label>
                                <input type="nim" class="form-control" name="nim" id="nim" required>
                            </div>
                            <div class="mb-3">
                                <label for="prodi" class="form-label">
                                    Program Studi<span class="ms-0 ps-0 me-0 pe-0 text-danger">*</span>
                                </label>
                                <select id="prodi" name="prodi" class="form-select">
                                    <option disabled>-- Fakultas Farmasi</option>
                                    <option value="D3 Farmasi">D3 Farmasi</option>
                                    <option value="S1 Farmasi">S1 Farmasi</option>
                                    <option value="Profesi Apoteker">Profesi Apoteker</option>
                                    <option disabled></option>
                                    <option disabled>-- Fakultas Saintek</option>
                                    <option value="D3 TLM">D3 TLM</option>
                                    <option value="S1 ARS">S1 ARS</option>
                                    <option value="S1 Ilmu Gizi">S1 Ilmu Gizi</option>
                                    <option disabled></option>
                                    <option disabled>-- Fakultas Soshum</option>
                                    <option value="S1 Ilmu Hukum">S1 Ilmu Hukum</option>
                                    <option value="S1 Manajemen">S1 Manajemen</option>
                                    <option value="S1 PGSD">S1 PGSD</option>
                                </select>
                            </div>
                            <div class="mb-3">
                                <label for="karir" class="form-label">
                                    Profil Karir Alumni<span class="ms-0 ps-0 me-0 pe-0 text-danger">*</span>
                                </label>
                                <select name="karir" class="form-select">
                                    <option value="belum_bekerja">Belum Bekerja</option>
                                    <option value="sudah_bekerja">Sudah Bekerja</option>
                                    <option value="berwirausaha">Berwirausaha</option>
                                    <option value="lanjut_pendidikan">Melanjutkan Pendidikan</option>
                                </select>
                            </div>
                        </div>
                    </div>
                    <div class="modal-footer">
                        <button type="submit" id="submitAlumni" class="btn btn-primary">Lanjutkan</button>
                    </div>
                </form>

            </div>
        </div>
    </div>

    <div class="modal fade" id="lulusanModal" aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">

                <form id="alumni-survey" action="{{ route('lulusan') }}" method="post">
                    @csrf
                    <div class="modal-header">
                        <h5 class="modal-title" id="exampleModalLabel">Verifikasi Pengguna Lulusan</h5>
                        <a href="" data-bs-dismiss="modal" style="color: #FF5733;">
                            <span>&times;</span>
                        </a>
                    </div>
                    <div class="modal-body">

                        <div class="m-5 mt-1 mb-1">
                            <div class="mb-3">
                                <label for="nama_pengguna_lulusan" class="form-label">
                                    Nama Anda<span class="ms-0 ps-0 me-0 pe-0 text-danger">*</span>
                                </label>
                                <input type="nama_pengguna_lulusan" class="form-control" name="nama_pengguna_lulusan" id="nama_pengguna_lulusan" required>
                            </div>
                            <div class="mb-3">
                                <label for="instansi" class="form-label">
                                    Nama Instansi<span class="ms-0 ps-0 me-0 pe-0 text-danger">*</span>
                                </label>
                                <input type="instansi" class="form-control" name="instansi" id="instansi" required>
                            </div>
                            <div class="mb-3">
                                <label for="nama_alumni" class="form-label">
                                    Nama Alumni<span class="ms-0 ps-0 me-0 pe-0 text-danger">*</span>
                                </label>

                                <div class="">
                                    <select id="nama_alumni" name="nama_alumni" style="height: 28px;">
                                        <option value=""></option>
                                        @foreach ($nama_alumni as $d)
                                            <option value="{{ $d->nim }} - {{ $d->nama }} ({{ $d->prodi }})">
                                                {{ $d->nama }}
                                                ({{ $d->prodi }})
                                            </option>
                                        @endforeach
                                    </select>
                                </div>


                            </div>
                        </div>
                    </div>
                    <div class="modal-footer">
                        <button type="submit" id="submitAlumni" class="btn btn-primary">Lanjutkan</button>
                    </div>
                </form>

            </div>
        </div>
    </div>
@endsection
