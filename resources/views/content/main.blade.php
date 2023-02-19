@extends('layouts.landing')
@section('content')
    <section class="hero-area section">
        <div class="container">
            <div class="row">
                <div class="col-lg-4 mx-auto text-center">
                    <div class="hero-img mx-auto mb-3 position-relative">
                        <img src="images/landing-hero.png" alt="img">
                    </div>

                </div>

                {{-- muncul di kompi --}}
                <div class="col pt-4 lh-sm d-none d-lg-block">
                    <p class="text-left text-dark" style="font-size: 275%">
                        Selamat Datang <br>
                        di Website <b style="color: chocolate">Tracer Study</b> <br>
                        Universitas Borneo Lestari <br>
                    </p>
                    <a class="btn btn-lg btn-primary rounded-pill" href="{{ route('survey') }}" role="button">Isi
                        Survey</a>
                </div>

                {{-- muncul di hp --}}
                <div class="col pt-2 lh-sm d-lg-none">
                    <p class="text-center text-dark" style="font-size: 125%">
                        Selamat Datang di<br>
                        Website <b style="color: chocolate">Tracer Study</b> <br>
                        Universitas Borneo Lestari <br>
                        <a class="btn btn-lg btn-primary rounded-pill mt-3" href="#" role="button">Isi Survey</a>
                    </p>
                </div>
            </div>

        </div>
        <div class="has-circle">
            <span class="circle circle-1"></span>
            <span class="circle circle-2"></span>
            <span class="circle circle-3"></span>
            <span class="circle circle-4"></span>
            <span class="circle circle-5"></span>
            <span class="circle circle-6"></span>
            <span class="circle circle-7"></span>
        </div>
    </section>

    <section class="bg-primary p-5">
        <div class="container">
            <p>
                Tentang Tracer Study
            </p>
            <div class="row justify-content-center align-items-center">

                <div class="col-md-6  pt-3 pb-4">
                    <div class="me-4" data-aos="fade-right" data-aos-duration="1500">

                        <p class="h2 text-dark">
                            Apa itu <br>
                            <b style="color: chocolate">Tracer Study</b>
                        </p>
                        <p align="justify">
                            Deskripsi, Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor
                            incididunt ut labore et
                            dolore
                            magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip
                            ex ea commodo
                            consequat.
                        </p>

                    </div>
                </div>
                <div class=" col-md-6" data-aos="fade-left" data-aos-duration="1500">
                    <div class="mx-auto d-block mb-3 position-relative text-center">
                        <img src="images/landing-hero.png" alt="img">
                    </div>
                </div>
            </div>
        </div>
    </section>

    <section class="services section">
        <div class="container">
            <div class="row mb-5 text-center">
                <div class="col-lg-6 col-12 mx-auto ">
                    <div class="section-title mb-md-4">
                        <h2>Manfaat <b style="color: chocolate">Tracer Study</b></h2>
                    </div>
                </div>
            </div>
            <div class="row g-4 justify-content-center">
                <div class="col-lg-4 col-md-6 card-item">
                    <div class="card text-center  border-0 bg-white radius shadow px-3 py-5" data-aos="fade-right"
                        data-aos-duration="1500">
                        <div class="card-icon mb-3">
                            <i class="fas fa-cloud "></i>
                        </div>
                        <div class="card-body">
                            <h4 class="card-title">Research And Design</h4>
                            <p class="card-text small">Lorem ipsum dolor amet, consesd ctetur adipiscing elit. Malesa est
                                sagittis et
                                nuasslla ntis enim vel suspend wergisse eu masgnis suada vitae, ullamchper nisl eget gravda.
                            </p>
                            <a href="portfolio-single.html" class="text-primary card-link mb-0 small">View Details<i
                                    class="fas fa-arrow-right ms-2"></i></a>
                        </div>
                    </div>
                </div>
                <div class="col-lg-4 col-md-6 card-item">
                    <div class="card text-center  border-0 bg-white radius shadow px-3 py-5">
                        <div class="card-icon  mb-3">
                            <i class="far fa-lightbulb "></i>
                        </div>
                        <div class="card-body">
                            <h4 class="card-title">User Interface Design</h4>
                            <p class="card-text small">Lorem ipsum dolor amet, consesd ctetur adipiscing elit. Malesa est
                                sagittis et
                                nuasslla ntis enim vel suspend wergisse eu masgnis suada vitae, ullamchper nisl eget gravda.
                            </p>
                            <a href="#" class="text-primary card-link mb-0 small">View Details<i
                                    class="fas fa-arrow-right ms-2"></i></a>
                        </div>
                    </div>
                </div>
                <div class="col-lg-4 col-md-6 card-item">
                    <div class="card text-center  border-0 bg-white radius shadow px-3 py-5" data-aos="fade-left"
                        data-aos-duration="1500">
                        <div class="card-icon mb-3">
                            <i class="fas fa-suitcase-rolling "></i>
                        </div>
                        <div class="card-body">
                            <h4 class="card-title">User Experience Design</h4>
                            <p class="card-text small">Lorem ipsum dolor amet, consesd ctetur adipiscing elit. Malesa est
                                sagittis et
                                nuasslla ntis enim vel suspend wergisse eu masgnis suada vitae, ullamchper nisl eget gravda.
                            </p>
                            <a href="#" class="text-primary card-link mb-0 small">View Details<i
                                    class="fas fa-arrow-right ms-2"></i></a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <section id="unduhan" class="blog-post section mt-5">
        <div class="container">
            <div class="row mb-5 justify-content-center align-items-center text-center">
                <div class="col-lg-6 col-12 mx-auto">
                    <div class="section-title mb-5">
                        <h2>Unduhan</h2>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-md-10 mx-auto justify-content-center align-items-center ">
                    <div class="row justify-content-between align-items-center border-bottom blog mb-4 pb-4"
                        data-aos="fade-up" data-aos-duration="1000">
                        <div class="col-md-9">
                            <a href="#" class=" d-inline-block h3 mb-3 text-tertiary fw-bold">Judul Dokumen
                                Unduhan</a>
                            <p class="mb-1" align="justify">
                                Deskripsi singkat atau isi sebagian dari dokumen. Deskripsi singkat atau isi sebagian dari
                                dokumen.Deskripsi
                                singkat atau isi sebagian dari dokumen.Deskripsi singkat atau isi sebagian dari dokumen.
                            </p>
                        </div>
                        <div class="col-md-2">
                            <div class="blog-date">
                                <h5>Jan 12, 2023 <span class="text-primary d-inline-block">Unduh</span></h5>
                            </div>
                        </div>
                    </div>

                </div>
            </div>
        </div>
    </section>

    <div class="backtotop">
        <i class="fas fa-angle-up"></i>
    </div>
@endsection
