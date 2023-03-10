@extends('layouts.landing')
@section('content')
    <div class="row justify-content-md-center mt-2 mb-5">
        <div class="col d-grid justify-content-md-end mt-4 me-2 ms-2" data-aos="fade-right" data-aos-duration="1500">
            <div class="card mx-auto" style="width: 20rem;">
                <div class="mx-auto d-block mt-3 position-relative text-center card-img-top">
                    <img src="images/landing-hero.png" alt="alumni" width="200">
                </div>
                <div class="card-body">
                    <h5 class="card-title">Alumni</h5>
                    <p class="card-text">Some quick example text to build on the card title and make up the bulk of the
                        card's content.
                    </p>
                    <div class="d-grid gap-2 d-md-flex justify-content-md-end" data-bs-toggle="modal"
                        data-bs-target="#alumniModal">
                        <a href="#"
                            class="btn btn-primary d-md-flex justify-content-md-end text-center rounded-pill">Isi
                            Survey</a>
                    </div>
                </div>
            </div>
        </div>

        <div class="col d-grid justify-content-md-start mt-4 me-2 ms-2" data-aos="fade-left" data-aos-duration="1500">
            <div class="card mx-auto" style="width: 20rem;">
                <div class="mx-auto d-block mt-3 position-relative text-center card-img-top">
                    <img src="images/landing-hero.png" alt="lulusan" width="200">
                </div>
                <div class="card-body">
                    <h5 class="card-title">Pengguna Lulusan</h5>
                    <p class="card-text">Some quick example text to build on the card title and make up the bulk of the
                        card's content.
                    </p>
                    <div class="d-grid gap-2 d-md-flex justify-content-md-end">
                        <a href="{{ route('lulusan') }}"
                            class="btn btn-primary d-md-flex justify-content-md-end text-center rounded-pill">Isi
                            Survey</a>
                    </div>
                </div>
            </div>
        </div>
    </div>


    <!-- Modal -->
    <div class="modal fade" id="alumniModal" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <form action="{{ route('alumni') }}" method="post">
                    @csrf
                    <div class="modal-header">
                        <h5 class="modal-title" id="exampleModalLabel">Verifikasi</h5>
                        <a href="" data-bs-dismiss="modal">
                            <span>&times;</span>
                        </a>
                    </div>
                    <div class="modal-body">
                        <div class="mb-3">
                            <label for="nama" class="form-label">
                                Nama Lengkap<span class="ms-0 ps-0 me-0 pe-0 text-danger">*</span>
                            </label>
                            <input type="nama" class="form-control" name="nama">
                        </div>
                        <div class="mb-3">
                            <label for="nim" class="form-label">
                                NIM<span class="ms-0 ps-0 me-0 pe-0 text-danger">*</span>
                            </label>
                            <input type="nim" class="form-control" name="nim">
                        </div>
                        <div class="mb-3">
                            <label for="prodi" class="form-label">
                                Program Studi<span class="ms-0 ps-0 me-0 pe-0 text-danger">*</span>
                            </label>
                            <select name="prodi" class="form-select">
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
                    </div>
                    <div class="modal-footer">
                        {{-- <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button> --}}
                        <button type="submit" class="btn btn-primary">Lanjutkan</button>
                    </div>
                </form>
            </div>
        </div>
    </div>
@endsection
