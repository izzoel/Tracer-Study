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
                    <div class="d-grid gap-2 d-md-flex justify-content-md-end">
                        <a href="{{ route('alumni') }}"
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
@endsection
