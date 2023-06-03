@extends('layouts.landing')
@section('content')
    <section class="hero-area section">
        <div class="container">
            <div class="row">
                <div class="col-lg-4 mx-auto text-center" data-aos="zoom-in" data-aos-duration="1500">
                    <div class="hero-aimg mx-auto mb-3 position-relative">
                        <img class="ps-5 pt-4 pe-5 img-fluid" src="images/landing-hero.png" alt="img" width="450">
                    </div>
                </div>

                {{-- muncul di kompi --}}
                <div class="col pt-4 lh-sm d-none d-lg-block">
                    <div class="text-left text-dark d-flex" style="font-size: 275%" data-aos="fade-right"
                        data-aos-duration="1000">
                        Selamat Datang</div>
                    <div class="text-left text-dark d-inline-flex" style="font-size: 275%" data-aos="fade-right"
                        data-aos-duration="1000" data-aos-delay="200">
                        di Website<br></div>
                    <div class="d-inline-flex" data-aos="zoom-in" data-aos-duration="1000" data-aos-delay="300">
                        <b style="color: chocolate;font-size: 275%">Tracer Study</b>
                    </div>
                    <div class="text-left text-dark" data-aos="fade-left" data-aos-duration="1000" data-aos-delay="200"
                        style="color: chocolate;font-size: 275%">
                        Universitas Borneo Lestari <br>
                    </div>
                    <div style="font-size: 275%" data-aos="fade-left" data-aos-duration="1000" data-aos-delay="350">
                        <a class="btn btn-lg btn-primary rounded-pill" href="{{ route('survey') }}" role="button">Isi
                            Survey</a>
                    </div>
                </div>

                {{-- muncul di hp --}}
                <div class="col pt-2 lh-sm d-lg-none">
                    <p class="text-center text-dark" style="font-size: 125%">
                        Selamat Datang di<br>
                        Website <b style="color: chocolate">Tracer Study</b> <br>
                        Universitas Borneo Lestari <br>
                        <a class="btn btn-lg btn-primary rounded-pill mt-3" href="{{ route('survey') }}" role="button">Isi
                            Survey</a>
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
            {{-- <p>
                Tentang Tracer Study
            </p> --}}
            <div class="row justify-content-center align-items-center">

                <div class="col-md-6  pt-3 pb-4">
                    <div class="me-4" data-aos="fade-right" data-aos-duration="1500">

                        <p class="h2 text-dark">
                            Apa itu <br>
                            <b style="color: chocolate">Tracer Study</b>
                        </p>
                        <p align="justify">
                            Tracer studi adalah Survei yang terstandarisasi terhadap lulusan pendidikan tinggi yang
                            dilakukan beberapa waktu setelah lulusan tersebut meninggalkan isntitusi pendidikan tingginya
                            <i class="text-primary">(Schomburg, 2014)</i>.
                        </p>

                    </div>
                </div>
                <div class="col-md-6 d-none d-lg-block">
                    <div data-aos="fade-left" data-aos-duration="1500">
                        <div class="mx-auto d-block mb-3 position-relative text-center">
                            <img src="images/tentang.png" class="img-fluid" alt="tentang-tracer-study">
                        </div>
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
                <div class="col-lg-5 col-md-6 card-item">
                    <div class="card text-center  border-0 bg-white radius shadow px-3 py-5" data-aos="fade-right"
                        data-aos-duration="1500">
                        <div class="card-icon mb-3">
                            <i class="fas fa-cogs "></i>
                        </div>
                        <div class="card-body">
                            <h4 class="card-title">Perbaikan Sistem Pendidikan</h4>
                            <p class="card-text small">
                                Hasil studi penelusuran lulusan atau <i class="text-primary">tracer study</i> memiliki
                                manfaat sebagai bahan pertimbangan guna melakukan <span class="text-primary">perbaikan
                                    sistem pendidikan dan pengajaran</span> di Universitas Borneo Lestari.
                            </p>

                        </div>
                    </div>
                </div>
                <div class="col-lg-5 col-md-6 card-item">
                    <div class="card text-center  border-0 bg-white radius shadow px-3 py-5" data-aos="fade-left"
                        data-aos-duration="1500">
                        <div class="card-icon  mb-3">
                            <i class="fas fa-chart-line" style="color:#ff6f6f"></i>
                        </div>
                        <div class="card-body">
                            <h4 class="card-title">Menaikkan Peringkat Lulusan</h4>
                            <p class="card-text small">Selain untuk perbaikan sistem pendidikan dan pengajaran <i
                                    class="text-primary"> tracer study </i> juga memiliki manfaat lain yaitu sebagai bahan
                                pertimbangan guna <span class="text-primary">menaikkan peringkat lulusan</span> di
                                Universitas Borneo Lestari.
                            </p>

                        </div>
                    </div>
                </div>

            </div>
        </div>
    </section>

    <section class="blog-post section mt-5">
        <div class="container">
            <div class="row mb-5 justify-content-center align-items-center text-center">
                <div class="col-lg-6 col-12 mx-auto">
                    <div class="section-title mb-5">
                        <h2>Tujuan <b style="color: chocolate">Tracer Study</b></h2>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-md-10 mx-auto justify-content-center align-items-center ">
                    <div class="row justify-content-between align-items-center border-bottom blog p-2" data-aos="fade-up"
                        data-aos-duration="1000">
                        <div class="col-auto">
                            <div class="blog-date">
                                <h5>1.</h5>
                            </div>
                        </div>
                        <div class="col">
                            <p class="mb-1" align="justify">
                                Informasi mengenai relevansi Perguruan Tinggi.
                            </p>
                        </div>

                    </div>
                    <div class="row justify-content-between align-items-center border-bottom blog p-2" data-aos="fade-up"
                        data-aos-duration="1000">
                        <div class="col-auto">
                            <div class="blog-date">
                                <h5>2.</h5>
                            </div>
                        </div>
                        <div class="col">
                            <p class="mb-1" align="justify">
                                Informasi mengenai evaluasi pendidikan.
                            </p>
                        </div>
                    </div>
                    <div class="row justify-content-between align-items-center border-bottom blog p-2" data-aos="fade-up"
                        data-aos-duration="1000">
                        <div class="col-auto">
                            <div class="blog-date">
                                <h5>3.</h5>
                            </div>
                        </div>
                        <div class="col">
                            <p class="mb-1" align="justify">
                                Informasi akuntabilitas bagi orag tua dan pemangku kepentingan lainnya.
                            </p>
                        </div>

                    </div>
                    <div class="row justify-content-between align-items-center border-bottom blog p-2" data-aos="fade-up"
                        data-aos-duration="1000">
                        <div class="col-auto">
                            <div class="blog-date">
                                <h5>4.</h5>
                            </div>
                        </div>
                        <div class="col">
                            <p class="mb-1" align="justify">
                                Memenuhi persyaratan akreditasi.
                            </p>
                        </div>
                    </div>
                    <div class="row justify-content-between align-items-center border-bottom blog p-2" data-aos="fade-up"
                        data-aos-duration="1000">
                        <div class="col-auto">
                            <div class="blog-date">
                                <h5>5.</h5>
                            </div>
                        </div>
                        <div class="col">
                            <p class="mb-1" align="justify">
                                Informasi mengenai situasi transisi dan dinamika kerja.
                            </p>
                        </div>
                    </div>
                    <div class="row justify-content-between align-items-center border-bottom blog p-2" data-aos="fade-up"
                        data-aos-duration="1000">
                        <div class="col-auto">
                            <div class="blog-date">
                                <h5>6.</h5>
                            </div>
                        </div>
                        <div class="col">
                            <p class="mb-1" align="justify">
                                Mengevaluasi output/outcome perguruan tinggi..
                            </p>
                        </div>

                    </div>
                    <div class="row justify-content-between align-items-center border-bottom blog p-2" data-aos="fade-up"
                        data-aos-duration="1000">
                        <div class="col-auto">
                            <div class="blog-date">
                                <h5>7.</h5>
                            </div>
                        </div>
                        <div class="col">
                            <p class="mb-1" align="justify">
                                Memperoleh informasi keberadaan lulusan (Alumni) serta menjalin komunikasi secara kontinyu
                                dan up to date dari alumni.
                            </p>
                        </div>
                    </div>
                    <div class="row justify-content-between align-items-center border-bottom blog p-2" data-aos="fade-up"
                        data-aos-duration="1000">
                        <div class="col-auto">
                            <div class="blog-date">
                                <h5>8.</h5>
                            </div>
                        </div>
                        <div class="col">
                            <p class="mb-1" align="justify">
                                Mengidentifikasi profil kompetensi dan ketrampilan lulusan dari alumni.
                            </p>
                        </div>

                    </div>
                    <div class="row justify-content-between align-items-center border-bottom blog p-2" data-aos="fade-up"
                        data-aos-duration="1000">
                        <div class="col-auto">
                            <div class="blog-date">
                                <h5>9.</h5>
                            </div>
                        </div>
                        <div class="col">
                            <p class="mb-1" align="justify">
                                Sebagai dasar untuk melakukan perbaikan dalam proses pembelajaran.
                            </p>
                        </div>
                    </div>
                    <div class="row justify-content-between align-items-center border-bottom blog p-2" data-aos="fade-up"
                        data-aos-duration="1000">
                        <div class="col-auto">
                            <div class="blog-date">
                                <h5>10.</h5>
                            </div>
                        </div>
                        <div class="col">
                            <p class="mb-1" align="justify">
                                Sebagai dasar untuk pengembangan institusi dalam memenuhi kriteria
                                akreditasi (BAN-PT, ISO, dan lain- lain).
                            </p>
                        </div>
                    </div>
                    <div class="row justify-content-between align-items-center border-bottom blog p-2" data-aos="fade-up"
                        data-aos-duration="1000">
                        <div class="col-auto">
                            <div class="blog-date">
                                <h5>11.</h5>
                            </div>
                        </div>
                        <div class="col">
                            <p class="mb-1" align="justify">
                                Sebagai tanggung jawab Perguruan Tinggi untuk peserta didiknya dalam
                                menghadapi dunia kerja pada masa mendatang.
                            </p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <section class="testimonial section pt-0 pb-0 mb-0">
        <div class="container">

            <div class="row align-items-center justify-content-center bg-primary" data-aos="fade-up"
                data-aos-duration="2000">
                <div class="col-md-7 order-1 order-md-0">
                    <div class="testimonial-left-slider">
                        <div class="testimonial-left-slider-item">
                            <svg class="quotation" width="60" height="61" viewBox="0 0 60 61" fill="none"
                                xmlns="http://www.w3.org/2000/svg">
                                <path
                                    d="M24.1044 14.1903C25.6048 13.561 26.2341 11.7702 25.5564 10.3181L23.1847 5.33265C22.5071 3.92946 20.8614 3.29975 19.4093 3.92946C15.2951 5.67195 11.7618 7.94686 8.95443 10.7058C5.51786 13.9483 3.19455 17.6752 1.93609 21.7894C0.677632 25.9525 0 31.6151 0 38.827V53.6866C0 55.2838 1.30686 56.5907 2.90414 56.5907H21.9262C23.5235 56.5907 24.8304 55.2838 24.8304 53.6866V34.6644C24.8304 33.0667 23.5235 31.7603 21.9262 31.7603H12.8266C12.9234 26.8712 14.0851 22.9511 16.2148 19.9981C17.9573 17.6273 20.571 15.6912 24.1044 14.1903Z"
                                    fill="#DBDBDB" />
                                <path
                                    d="M58.2764 14.1903C59.7769 13.5611 60.4056 11.7702 59.7285 10.3181L57.3568 5.38159C56.6791 3.97792 55.0335 3.34869 53.5814 3.97792C49.5156 5.72041 46.0301 7.99532 43.1749 10.7058C39.7378 13.9972 37.3666 17.7242 36.1077 21.8384C34.8492 25.9037 34.2205 31.5672 34.2205 38.8276V53.6871C34.2205 55.2844 35.5273 56.5913 37.1246 56.5913H56.1467C57.744 56.5913 59.0509 55.2844 59.0509 53.6871V34.665C59.0509 33.0672 57.744 31.7609 56.1467 31.7609H46.9987C47.0955 26.8717 48.2576 22.9516 50.3868 19.9986C52.1293 17.6274 54.743 15.6913 58.2764 14.1903Z"
                                    fill="#DBDBDB" />
                            </svg>
                            <div class="ms-lg-5 ms-md-4  mb-3">
                                <div class="ms-md-4">
                                    <p class="lh-lg">
                                        <i>...<b class="text-primary">Tracer Study</b> harus dilakukan <b
                                                class="text-primary">setiap tahun</b>, perguruan tinggi
                                            <b class="text-primary">wajib</b> memastikan hal itu diterapkan...</i>
                                    </p>
                                </div>
                                <div
                                    class="d-flex ms-md-4   align-items-center justify-content-md-start justify-content-center">
                                    <img class="img" src="images/nadiem.png" alt="img">
                                    <div class="text ms-3">
                                        <h5 class="mt-4 mb-1">Nadiem Makarim</h5>
                                        <p>Menteri Pendidikan, Kebudayaan, Riset, dan Teknologi Republik Indonesia</p>
                                    </div>
                                </div>
                            </div>
                        </div>

                    </div>
                </div>
                <div class="col-md-5 col-xl-4 order-0 order-md-1">
                    <div class="testimonial-right-slider mb-md-0 mb-5">
                        <img class="img img-fluid" src="images/nadiem-full.png" alt="img">
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
