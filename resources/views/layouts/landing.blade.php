<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <title>Tracer Study</title>

    <!-- mobile responsive meta -->
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=5">
    <meta name="_token" content="{{ csrf_token() }}">
    <!-- ** Plugins Needed for the Project ** -->
    <!-- Slick -->
    <link rel="stylesheet" href="../plugins/slick/slick.css">

    <!-- Fontawesome -->
    <link rel="stylesheet" href="../plugins/font-awesome/fontawesome.min.css">
    <link rel="stylesheet" href="../plugins/font-awesome/brands.css">
    <link rel="stylesheet" href="../plugins/font-awesome/solid.css">

    <!-- aos -->
    <link rel="stylesheet" href="../plugins/aos/aos.css">

    <!-- Main Stylesheet -->
    <link rel="stylesheet" href="../css/style.css">
    <link rel="shortcut icon" href="../images/favicon.png" type="image/x-icon">
    <link rel="stylesheet" href="../font-awesome/css/font-awesome.min.css">

    <!-- Datatables -->
    {{-- <link rel="stylesheet" href="https://cdn.datatables.net/1.13.2/css/jquery.dataTables.css"> --}}
    <link rel="stylesheet" href="https://cdn.datatables.net/1.13.2/css/dataTables.bootstrap5.min.css">
    {{-- <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/5.2.0/css/bootstrap.min.css"> --}}

    <link href="../css/smart_wizard_all.css" rel="stylesheet" type="text/css" />

    <link rel="stylesheet" href="../css/tooltipster.bundle.css">
    <link rel="stylesheet" href="../css/tooltipster-sideTip-light.min.css">
    <link rel="stylesheet" href="../css/tooltipster-sideTip-shadow.min.css">
    {{-- <link rel="stylesheet" href="../css/tooltipster.main.css"> --}}



    {{-- <link href="https://cdn.jsdelivr.net/npm/smartwizard@6/dist/css/smart_wizard_all.min.css" rel="stylesheet"
        type="text/css" /> --}}


    <!-- Bootrap for the demo page -->
    {{-- <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">

    <!-- Animate CSS for the css animation support if needed -->
    <link href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/4.1.1/animate.min.css" rel="stylesheet" />

    <!-- Include SmartWizard CSS -->
    <link href="./css/demo.css" rel="stylesheet" type="text/css" />
    <!-- <link href="../css/smart_wizard_all.css" rel="stylesheet" type="text/css" /> -->
    <link href="https://cdn.jsdelivr.net/npm/smartwizard@6/dist/css/smart_wizard_all.min.css" rel="stylesheet"
        type="text/css" <link rel="stylesheet"
        href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.8.3/font/bootstrap-icons.css"> --}}


    <!-- Include SmartWizard CSS -->
    {{-- <link href="../css/demo.css" rel="stylesheet" type="text/css" /> --}}

</head>

<body>

    @guest
        <div class="preloader">
            <div class="dots dot1">
                <div class="dot"></div>
                <div class="dot"></div>
                <div class="dot"></div>
            </div>
        </div>
    @endguest

    <header class="navigation border-bottom">
        <nav class="navbar navbar-expand-sm flex-sm-nowrap flex-wrap">
            <div class="container-fluid">
                <a class="navbar-brand lh-sm" href="#">
                    <b style="color: chocolate">TRACER STUDY</b> <br>
                    Universitas Borneo Lestari
                </a>
                <button class="navbar-toggler" type="button" data-bs-toggle="collapse"
                    data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent"
                    aria-expanded="false" aria-label="Toggle navigation">
                    <i class="fas fa-bars"></i>
                </button>
                <div class="collapse navbar-collapse" id="navbarSupportedContent">
                    <ul class="navbar-nav ms-auto mb-lg-0">
                        @guest
                            <li class="nav-item">
                                <a class="nav-link home {{ $title === 'home' ? 'active' : '' }}" href="/">Home</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link unduhan" href="{{ route('unduhan') }}">Unduhan</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link {{ $title == 'survey' ? 'active' : '' }}"
                                    href="{{ route('survey') }}">Survey</a>
                            </li>
                        @endguest

                        @auth
                            <li class="nav-item">
                                <a class="nav-link {{ $title == 'dashboard' ? 'active' : '' }}"
                                    href="{{ route('admin_dashboard') }}">
                                    Dashboard
                                </a>
                            </li>

                            <li class="nav-item dropdown">
                                <a class="nav-link dropdown-toggle {{ $title == 'form' ? 'active' : '' }}" href="#"
                                    id="navbarDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                                    Formulir
                                </a>
                                <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
                                    <li><a class="dropdown-item" href="{{ route('form_alumni') }}">Formulir
                                            Alumni</a></li>
                                    <li><a class="dropdown-item" href="{{ route('form_lulusan') }}">Formulir Pengguna
                                            Lulusan</a></li>
                                </ul>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="{{ route('logout') }}">
                                    Logout
                                </a>
                            </li>
                        @endauth
                    </ul>
                </div>
            </div>
        </nav>
    </header>

    @yield('content')


    <footer>
        <div class="footer-top section m-0 p-5">
            <div class="container">
                <div class="row">
                    <div class="col-lg-6 mx-auto text-center">
                        <p class="mb-0">Designed And
                            <a href="#" data-bs-toggle="modal" data-bs-target="#modal_login">
                                <d style="color: chocolate">Developed</d>
                            </a> by @2023
                            <a rel="nofollow" href="https://izzoel.github.io/ " target="blank">
                                <d style="color: chocolate">ZNG | Z Engine</d>
                            </a>
                        </p>
                    </div>
                </div>
            </div>
        </div>
    </footer>

    <!-- Modal Admin/Login -->
    <div class="modal fade" id="modal_login" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="exampleModalLabel">Login Admin</h5>
                    {{-- <button type="button" class="" data-bs-dismiss="modal" aria-label="Close">&times;</button> --}}
                </div>
                {{-- <form action="#" method="POST"> --}}
                <form action="{{ route('login') }}" method="POST">
                    @csrf
                    <div class="modal-body">
                        <div class="input-group">
                            <input type="text" name="name" class="form-control ms-4 me-4"
                                placeholder="Username" aria-label="Username" style="margin-bottom: 20px" required>
                        </div>
                        <div class="input-group">
                            <input type="password" name="password" class="form-control ms-4 me-4"
                                placeholder="Password" aria-label="Password" style="margin-bottom: 0px" required>
                        </div>

                        @if (session()->has('admin'))
                            <span class="text-danger d-flex justify-content-center">
                                {{ session('admin') }}
                            </span>
                        @endif


                    </div>
                    <div class="modal-footer">
                        <button type="submit" class="btn btn-primary me-4">Login</button>
                    </div>
                </form>
            </div>
        </div>
    </div>




    <!-- jQuery -->
    {{-- <script src="../plugins/jquery/jquery.min.js"></script> --}}
    <script src="https://code.jquery.com/jquery-3.5.1.js"></script>
    <!-- Bootstrap JS -->
    <script src="../plugins/bootstrap/bootstrap.bundle.min.js"></script>
    <!-- slick-slider-->
    <script src="../plugins/slick/slick.min.js"></script>
    <!-- aos -->
    <script src="../plugins/aos/aos.js"></script>
    <!-- isotope -->
    <script src="../plugins/shuffle/shuffle.js"></script>
    <!-- Main Script -->
    <script src="../js/script.js"></script>
    {{-- <script src="https://code.highcharts.com/highcharts.js"></script> --}}

    <!-- Datatables Script -->
    <script src="https://cdn.datatables.net/1.13.2/js/jquery.dataTables.min.js"></script>
    <script src="https://cdn.datatables.net/1.13.2/js/dataTables.bootstrap5.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>
    <!-- chart -->
    {{-- <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/4.2.1/chart.min.js"
        integrity="sha512-v3ygConQmvH0QehvQa6gSvTE2VdBZ6wkLOlmK7Mcy2mZ0ZF9saNbbk19QeaoTHdWIEiTlWmrwAL4hS8ElnGFbA=="
        crossorigin="anonymous" referrerpolicy="no-referrer"></script> --}}

    <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/4.2.1/chart.js"
        integrity="sha512-Cv3WnEz5uGwmTnA48999hgbYV1ImGjsDWyYQakowKw+skDXEYYSU+rlm9tTflyXc8DbbKamcLFF80Cf89f+vOQ=="
        crossorigin="anonymous" referrerpolicy="no-referrer"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/4.2.1/chart.umd.js"
        integrity="sha512-vCUbejtS+HcWYtDHRF2T5B0BKwVG/CLeuew5uT2AiX4SJ2Wff52+kfgONvtdATqkqQMC9Ye5K+Td0OTaz+P7cw=="
        crossorigin="anonymous" referrerpolicy="no-referrer"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/4.2.1/helpers.js"
        integrity="sha512-Kkt+9BdRfSBFaKgC+9xNLDVzBX3nAlj2EE95amI6F/XV2LKxED93uUigInw7w9JABWGVnuD1WZU3SKy+J+aDPw=="
        crossorigin="anonymous" referrerpolicy="no-referrer"></script>

    <script src="https://cdn.jsdelivr.net/npm/smartwizard@6/dist/js/jquery.smartWizard.js" type="text/javascript"></script>

    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-validate/1.19.5/jquery.validate.js"></script>

    <script type="text/javascript" src="../js/tooltipster.bundle.js"></script>
    {{-- <script type="text/javascript" src="../js/tooltipster.main.js"></script> --}}
    <script src="../js/enchanter.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"></script>

    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-scrollTo/2.1.3/jquery.scrollTo.min.js"></script>

</body>

{{-- @yield('script_modal') --}}
{{-- @foreach ($form_alumni_belum_bekerja as $data)
    @php
        if ($data->pilihan == '') {
            $noPilihan = 1;
        } else {
            $noPilihan = 0;
        }
    @endphp
    <script>
        $('#modal_edit_' + {{ $data->no }}).on('shown.bs.modal', function(e) {
            if ({{ $noPilihan }} == 1) {
                $(".buttonListBB" + {{ $data->no }}).hide();
                $("#gandaOpsiEditBB" + {{ $data->no }}).hide();
            } else {
                $("#gandaOpsiEditBB" + {{ $data->no }}).show();
            }

            if ({{ $data->other }} != 0) {
                $("#queOpsiBB" + {{ $data->no }}).hide();
                $("#addOpsiBB" + {{ $data->no }}).hide();
            }

            $('#edit_pilihan_BB' + {{ $data->no }}).on("change", function() {
                if ($(this).is(':checked')) {
                    $("#gandaOpsiEditBB" + {{ $data->no }}).show();
                    $(".editOpsiBB" + {{ $data->no }}).show();
                    $("#opsiListBB" + {{ $data->no }}).show();
                    $(".buttonListBB" + {{ $data->no }}).show();
                    $("#opsiRowBB").show();
                    $("#newRowBB").show();
                    $(".inputOpsiBB").attr("required", true);

                    var html = '';
                    var lab = 0;
                    html += '<div class="input-group input-group-sm mb-1 editOpsiBB' +
                        {{ $data->no }};
                    html += '"><label class="input-group-text" data-edit="';
                    html += lab + 1;
                    html += '" data-lab="';
                    html += lab + 1;
                    html += '"> ';
                    html += lab + 1;
                    html +=
                        '.</label><input type="text" class="form-control mb-0" name="opsi[]" required></div>';
                    if ($('.editOpsiBB' + {{ $data->no }}).length) {
                        $("#addOpsiBB" + {{ $data->no }}).show();
                        $("#queOpsiBB" + {{ $data->no }}).show();
                    } else {
                        $('#editRowBB' + {{ $data->no }}).prepend(html);
                        $("#rmvOpsiBB" + {{ $data->no }}).hide();
                        $("#addOpsiBB" + {{ $data->no }}).show();
                        $("#queOpsiBB" + {{ $data->no }}).show();
                    }
                } else {
                    switchStatus = $(this).is(':checked');
                    $(".inputOpsiBB").removeAttr("required");
                    $("#gandaOpsiEditBB" + {{ $data->no }}).hide();
                    $(".editOpsiBB" + {{ $data->no }}).hide();
                    $("#opsiListBB" + {{ $data->no }}).hide();
                    $(".buttonListBB" + {{ $data->no }}).hide();
                    $("#opsiRowBB").hide();
                    $("#newRowBB").hide();
                    $(".noPilihanBB" + {{ $data->no }}).remove();
                }
            });
        });

        function editOpsiBB{{ $data->no }}() {
            var html = '';
            var lab = $(".editOpsiBB" + {{ $data->no }} + " label:last ").data("edit");

            html += '<div class="input-group input-group-sm mb-1 editOpsiBB' + {{ $data->no }};
            html += '"><label class="input-group-text" data-edit="';
            html += lab + 1;
            html += '" data-lab="';
            html += lab + 1;
            html += '"> ';
            html += lab + 1;
            html +=
                '.</label><input type="text" class="form-control mb-0" name="opsi[]" required></div>';

            $('#editRowBB' + {{ $data->no }}).append(html);
            $("#rmvOpsiBB" + {{ $data->no }}).show();
        }

        function otherOpsiBB{{ $data->no }}() {
            var html = '';
            var lab = $(".editOpsiBB" + {{ $data->no }} + " label:last ").data("edit");

            html += '<div class="input-group input-group-sm mb-1 editOpsiBB' + {{ $data->no }};
            html += '"><label class="input-group-text" data-edit="';
            html += lab + 1;
            html += '" data-lab="';
            html += lab + 1;
            html += '"> ';
            html += lab + 1;
            html +=
                '.</label><input type="text" class="form-control mb-0" placeholder="..." disabled></div><input type="hidden" name="other" value="other"></div>';

            $('#editRowBB' + {{ $data->no }}).append(html);
            $("#addOpsiBB" + {{ $data->no }}).hide();
            $("#queOpsiBB" + {{ $data->no }}).hide();
            $("#rmvOpsiBB" + {{ $data->no }}).show();
        }

        function removeOpsiBB{{ $data->no }}() {
            var lab = $(".editOpsiBB" + {{ $data->no }} + " label:last ").data("edit");
            var largestID = $(".editOpsiBB" + {{ $data->no }} + ":last").remove();

            if (lab <= 2) {
                $("#rmvOpsiBB" + {{ $data->no }}).hide();
                $("#addOpsiBB" + {{ $data->no }}).show();
                $("#queOpsiBB" + {{ $data->no }}).show();
            } else {
                $("#addOpsiBB" + {{ $data->no }}).show();
                $("#queOpsiBB" + {{ $data->no }}).show();
            }
        }
    </script>
@endforeach --}}


@include('scripts.script_form_alumni')
@include('scripts.script_form_lulusan')


@include('scripts.script_survey_alumni')


{{-- @include('scripts.script_modal') --}}



{{-- <script>
    const wizard = new Enchanter('myForm', {}, {
        onNext: () => {
            // do something
            // show active

            $('#step1').removeClass("show");
            $('#step1').removeClass("active");
            // $('#step2').removeClass("show");
            // $('#step2').removeClass("active");
            $('#step2').hide();
            $('#step2-tab').hide();
            // $('#step2-tab').hide();
            $('#step3').addClass("show");
            $('#step3').addClass("active");
            $('#step3').show();
        },
        onPrevious: () => {
            // do something

        },
        onFinish: () => {
            // do something
        },
    });
</script> --}}

{{-- <script>
    $('form input').tooltipster({
        trigger: 'custom',
        onlyOne: false,
        position: 'right',
        side: 'right',
        repositionOnScroll: true,
        timer: 5000,
        theme: 'tooltipster-light',
    });
</script> --}}
{{-- 
<script>
    // SmartWizard initialize
    $('#smartwizard').smartWizard({
        theme: 'square',
        toolbar: {
            position: 'bottom', // none|top|bottom|both
            showNextButton: true, // show/hide a Next button
            showPreviousButton: true, // show/hide a Previous button
        },
        lang: { // Language variables for button
            next: 'Selanjutnya',
            previous: 'Kembali'
        },
        enableUrlHash: false,
        onFinish: function() {
            $("myForm").submit();
        }
    });


    $('#myForm').validate({

        errorPlacement: function(error, element) {

            var ele = $(element);
            // var ele = $(element);
            var err = $(error);
            msg = err.text();
            // newError = $(error).text('asdsa');

            // $(element).data('lastError', newError);

            // if (newError !== '' && newError !== lastError) {
            //     $(element).tooltipster('content', newError);
            //     $(element).tooltipster('show');
            // }
            ele.tooltipster('content', msg);
            ele.tooltipster('open');
            // alert(msg);
            // console.log(ele);
        },
        invalidHandler: function(form, validator) {

            if (!validator.numberOfInvalids())
                return;

            $('html, body').animate({
                scrollTop: $('.table').offset().top - 100
            });

        }
        // errorPlacement: function(error, element) {

        //     // var lastError = $(element).data('lastError'),
        //     //     newError = $(error).text();

        //     // $(element).data('lastError', newError);

        //     // if (newError !== '' && newError !== lastError) {
        //     //     $(element).tooltipster('content', newError);
        //     //     $(element).tooltipster('show');
        //     // }
        //     alert('asdasd');
        //     console.log('asd');

        // },
    });

    $("#smartwizard").on("leaveStep", function(e, anchorObject, currentStepIndex, nextStepIndex,
        stepDirection) {

        // alert()
        if ($('#myForm').valid()) {
            // $('#myForm').smartWizard("goToStep", 2);
            alert('aaa');
        } else {
            if (nextStepIndex < currentStepIndex) {
                // 
                return true
            } else {
                return false
            }
        }


        // $('#smartwizard').smartWizard('goToStep', 3);

        // if ($("#myForm").valid()) {
        //     alert('valid');
        // } else {

        // validator.focusInvalid();
        // $("#myForm").valid()
        // return false;
        // }
        // if (nextStepIndex == 3) {
        //     $('.sw-btn-next').after('<button class="btn sw-kirim sw-btn" type="submit">Kirim</button>')
        //     return true;
        // } else {
        //     $('.sw-kirim').remove();
        //     $(document).ready(function() {
        //         $("#myForm").validate();
        //     });
        //     return true;
        // }
        // // } else {
        //     // if (nextStepIndex != 3) {
        //     $("#myForm")[0].reportValidity();
        //     return false;
        // }

    });





    // return true;
    // $('.nav a[href="#step-3"]').tab('show');
    // alert('#f' + currentStepIndex);
    // var valid = $('#myForm')[0].checkValidity();
    // var valid = $('#sf0').checkValidity();
    // alert(valid);
    // if (valid) {
    //     // alert('valid');
    //     return true;
    // } else {
    //     // alert('tidak valid');
    //     // $("#myForm")[0].reportValidity();
    //     // alert($("#myForm")[1].reportValidity());
    //     // $('.nav a[href="#' + id + '"]').tab('show');
    //     // $('#smartwizard').smartWizard("goToStep", 2, true);
    //     // $('#fi').find(':submit').click()
    //     // $('#f1').trigger('submit');
    //     // $('#sf' + currentStepIndex).trigger('click');

    //     return false;
    // }


    //     // $('a[href=#step-2]').tab('show');

    //     // $('.nav a[href="#step-1"]').tab('show');
    //     // $('.nav a[href="#' + 'step-4' + '"]').tab('show');
    //     // function activaTab(tab) {
    //     //     $('.nav-tabs a[href="#' + 'ccc' + '"]').tab('show');
    //     // };

    //     // activaTab('aaa');
    // }
    // if ($('#myForm')[0].checkValidity()) {
    // if (nextStepIndex == 3) {
    //     $('.sw-btn-next').after('<button class="btn sw-kirim sw-btn" type="submit">Kirim</button>')
    //     return true;
    // } else {
    //     $('.sw-kirim').remove();
    // return true;
    // }
    // } else {
    //     // if (nextStepIndex != 3) {
    //     $("#myForm")[0].reportValidity();
    //     return false;
    // }
    // });
</script> --}}


<script>
    var url = window.location.href.substr(1);
    var hash = url.split('#').pop();
    if (hash == 'unduhan') {

        var items = $('#navbarSupportedContent li');
        var lastItem = $('#navbarSupportedContent li:first');
        var index = items.index(lastItem) + 1;

        if (index == 1) {
            $(".home").removeClass("active");
            $('.unduhan').addClass("active");
        }
    }
</script>

{{-- <script>
    document.addEventListener("DOMContentLoaded", function(event) {

        const showNavbar = (toggleId, navId, bodyId, headerId) => {
            const toggle = document.getElementById(toggleId),
                nav = document.getElementById(navId),
                bodypd = document.getElementById(bodyId),
                headerpd = document.getElementById(headerId)

            // Validate that all variables exist
            if (toggle && nav && bodypd && headerpd) {
                toggle.addEventListener('click', () => {
                    // show navbar
                    nav.classList.toggle('show')
                    // change icon
                    toggle.classList.toggle('bx-x')
                    // add padding to body
                    bodypd.classList.toggle('body-pd')
                    // add padding to header
                    headerpd.classList.toggle('body-pd')
                })
            }
        }

        showNavbar('header-toggle', 'nav-bar', 'body-pd', 'header')

        /*===== LINK ACTIVE =====*/
        const linkColor = document.querySelectorAll('.nav_link')

        function colorLink() {
            if (linkColor) {
                linkColor.forEach(l => l.classList.remove('active'))
                this.classList.add('active')
            }
        }
        linkColor.forEach(l => l.addEventListener('click', colorLink))

        // Your code to run since DOM is loaded and ready
    });
</script> --}}
{{-- 
@if (session('admin'))
    <script>
        var myModal = new bootstrap.Modal(document.getElementById("modal_login"), {});
        document.onreadystatechange = function() {
            myModal.show();
        };
    </script>
@endif

<script>
    var switchStatus = false;
    $("#gandaOpsiBB").hide();
    $(".addOpsiBB").hide();
    $("#opsiListBB").hide();
    $(".buttonListBB").hide();


    $("#pilihanBB").on('change', function() {
        if ($('#pilihanBB').is(':checked')) {
            switchStatus = $(this).is(':checked');
            $("#gandaOpsiBB").show();
            $(".addOpsiBB").show();
            $(".buttonListBB").show();
            $("#opsiListBB").show();
            $("#opsiRowBB").show();
            $("#newRowBB").show();
            $(".inputOpsiBB").attr("required", true);
            // alert(switchStatus); // To verify
            // nyala
        } else {
            switchStatus = $(this).is(':checked');
            $(".addOpsi1BB").removeAttr("required");
            $(".inputOpsiBB").removeAttr("required");

            $("#gandaOpsiBB").hide();
            $(".addOpsiBB").hide();
            $(".buttonListBB").hide();
            $("#opsiListBB").hide();
            $("#opsiRowBB").hide();
            $("#newRowBB").hide();
            // alert(switchStatus); // To verify
            // mati
        }
    });
</script>

<script>
    function addOpsiBB() {
        var html = '';
        var lab = $(".addOpsiBB label:last").data("lab");

        html +=
            '<div class="input-group input-group-sm addOpsiBB mb-1" id="opsiList"><label class="input-group-text" for="inputGroupSelect01"  data-lab="';
        html += lab + 1;
        html += '"> ';
        html += lab + 1;
        html += '.</label><input type="text" class="form-control mb-0 addOpsi1BB" name="opsi[]" required></div>';
        $('#newRowBB').append(html);

    }

    function otherOpsiBB() {
        var html = '';
        var lab = $(".addOpsiBB label:last").data("lab");

        html +=
            '<div class="input-group input-group-sm mb-1" id="opsiListBB"><label class="input-group-text" for="inputGroupSelect01"  data-lab="';
        html += lab + 1
        html += '"> ';
        html += lab + 1;
        html +=
            '.</label><input type="text" class="form-control mb-0" placeholder="..." disabled><input type="hidden" name="other" value="other"></div>';
        $('#newRowBB').append(html);
        $("#addOpsiBB").hide();
        $("#queOpsiBB").hide();
    }

    function removeOpsiBB() {
        var largestID = $("#newRowBB input:last");
        largestID.closest('.input-group-sm').remove();
        $("#addOpsiBB").show();
        $("#queOpsiBB").show();
    }
</script>

<script>
    var switchStatus = false;
    $("#gandaOpsiSB").hide();
    $(".addOpsiSB").hide();
    $("#opsiListSB").hide();
    $(".buttonListSB").hide();


    $("#pilihanSB").on('change', function() {
        if ($('#pilihanSB').is(':checked')) {
            switchStatus = $(this).is(':checked');
            $("#gandaOpsiSB").show();
            $(".addOpsiSB").show();
            $(".buttonListSB").show();
            $("#opsiListSB").show();
            $("#opsiRow").show();
            $("#newRowSB").show();
            $(".inputOpsiSB").attr("required", true);
            // alert(switchStatus); // To verify
            // nyala
        } else {
            switchStatus = $(this).is(':checked');
            $(".addOpsi1SB").removeAttr("required");
            $(".inputOpsiSB").removeAttr("required");

            $("#gandaOpsiSB").hide();
            $(".addOpsiSB").hide();
            $(".buttonListSB").hide();
            $("#opsiListSB").hide();
            $("#opsiRow").hide();
            $("#newRowSB").hide();
            // alert(switchStatus); // To verify
            // mati
        }
    });
</script>


<script>
    function addOpsiSB() {
        var html = '';
        var lab = $(".addOpsiSB label:last").data("lab");

        html +=
            '<div class="input-group input-group-sm addOpsiSB mb-1" id="opsiList"><label class="input-group-text" for="inputGroupSelect01"  data-lab="';
        html += lab + 1;
        html += '"> ';
        html += lab + 1;
        html += '.</label><input type="text" class="form-control mb-0 addOpsi1SB" name="opsi[]" required></div>';
        $('#newRowSB').append(html);

    }

    function otherOpsiSB() {
        var html = '';
        var lab = $(".addOpsiSB label:last").data("lab");

        html +=
            '<div class="input-group input-group-sm mb-1" id="opsiListSB"><label class="input-group-text" for="inputGroupSelect01"  data-lab="';
        html += lab + 1
        html += '"> ';
        html += lab + 1;
        html +=
            '.</label><input type="text" class="form-control mb-0" placeholder="..." disabled><input type="hidden" name="other" value="other"></div>';
        $('#newRowSB').append(html);
        $("#addOpsiSB").hide();
        $("#queOpsiSB").hide();
    }

    function removeOpsiSB() {
        var largestID = $("#newRowSB input:last");
        largestID.closest('.input-group-sm').remove();
        $("#addOpsiSB").show();
        $("#queOpsiSB").show();
    }
</script> --}}

<script>
    $('input:text').click(function() {
        var value = $(this).attr('data-other');
        var rad = document.getElementById(value).checked = "true";

    });
</script>




{{-- @if (Request::segment(2) == 'form_alumni')

    @foreach ($form_alumni_belum_bekerja as $data)
        @php
            if ($data->pilihan == '') {
                $noPilihan = 1;
            } else {
                $noPilihan = 0;
            }
        @endphp
        <script>
            // alert('asd');
            var switchStatus = $("edit_pilihan_BB" + {{ $data->no }}).is(':checked');

            if ({{ $data->other }} != 0) {
                $("#queOpsiBB" + {{ $data->no }}).hide();
                $("#addOpsiBB" + {{ $data->no }}).hide();
            }

            if ({{ $noPilihan }} == 1) {
                $(".buttonListBB" + {{ $data->no }}).hide();
            }
            if (switchStatus) {
                // $("#gandaOpsiEditBB" + {{ $data->no }}).hide();
                alert(switchStatus);
            }



            $("#edit_pilihan_BB" + {{ $data->no }}).on('change', function() {
                if ($("#edit_pilihan_BB" + {{ $data->no }}).is(':checked')) {
                    switchStatus = $(this).is(':checked');
                    // $("#gandaOpsiBB").show();
                    $("#gandaOpsiEditBB" + {{ $data->no }}).show();
                    $(".editOpsiBB" + {{ $data->no }}).show();
                    $("#opsiListBB" + {{ $data->no }}).show();
                    $(".buttonListBB" + {{ $data->no }}).show();
                    $("#opsiRowBB").show();
                    $("#newRowBB").show();
                    $(".inputOpsiBB").attr("required", true);

                    if ({{ $noPilihan }} == 1) {
                        var html = '';
                        var lab = 0;

                        html += '<div class="input-group input-group-sm mb-1 editOpsiBB' + {{ $data->no }} +
                            ' noPilihan' + {{ $data->no }};
                        html += '"><label class="input-group-text" data-edit="';
                        html += lab + 1;
                        html += '" data-lab="';
                        html += lab + 1;
                        html += '"> ';
                        html += lab + 1;
                        html += '.</label><input type="text" class="form-control mb-0" name="opsi[]" required></div>';

                        $('#editRowBB' + {{ $data->no }}).prepend(html);

                        if (lab <= 2) {
                            $("#rmvOpsiBB" + {{ $data->no }}).hide();
                            $("#addOpsiBB" + {{ $data->no }}).show();
                            $("#queOpsiBB" + {{ $data->no }}).show();
                        } else {
                            $("#addOpsiBB" + {{ $data->no }}).show();
                            $("#queOpsiBB" + {{ $data->no }}).show();

                        }

                    }

                    // alert(switchStatus); // To verify
                    // nyala
                } else {
                    switchStatus = $(this).is(':checked');
                    $(".inputOpsiBB").removeAttr("required");
                    $("#gandaOpsiEditBB" + {{ $data->no }}).hide();
                    // $("#gandaOpsiBB").hide();
                    $(".editOpsiBB" + {{ $data->no }}).hide();
                    $("#opsiListBB" + {{ $data->no }}).hide();
                    $(".buttonListBB" + {{ $data->no }}).hide();
                    $("#opsiRowBB").hide();
                    $("#newRowBB").hide();
                    $(".noPilihanBB" + {{ $data->no }}).remove();
                    // alert(switchStatus); // To verify
                    // mati

                }
            });


            // function editOpsiBB{{ $data->no }}() {
            //     var html = '';
            //     var lab = $(".editOpsiBB" + {{ $data->no }} + " label:last ").data("edit");

            //     html += '<div class="input-group input-group-sm mb-1 editOpsiBB' + {{ $data->no }};
            //     html += '"><label class="input-group-text" data-edit="';
            //     html += lab + 1;
            //     html += '" data-lab="';
            //     html += lab + 1;
            //     html += '"> ';
            //     html += lab + 1;
            //     html += '.</label><input type="text" class="form-control mb-0" name="opsi[]" required></div>';

            //     $('#editRowBB' + {{ $data->no }}).append(html);
            //     $("#rmvOpsiBB" + {{ $data->no }}).show();
            // }

            // function otherOpsiBB{{ $data->no }}() {
            //     var html = '';
            //     var lab = $(".editOpsiBB" + {{ $data->no }} + " label:last ").data("edit");

            //     html += '<div class="input-group input-group-sm mb-1 editOpsiBB' + {{ $data->no }};
            //     html += '"><label class="input-group-text" data-edit="';
            //     html += lab + 1;
            //     html += '" data-lab="';
            //     html += lab + 1;
            //     html += '"> ';
            //     html += lab + 1;
            //     html +=
            //         '.</label><input type="text" class="form-control mb-0" placeholder="..." disabled></div><input type="hidden" name="other" value="other"></div>';

            //     $('#editRowBB' + {{ $data->no }}).append(html);
            //     $("#addOpsiBB" + {{ $data->no }}).hide();
            //     $("#queOpsiBB" + {{ $data->no }}).hide();
            //     $("#rmvOpsiBB" + {{ $data->no }}).show();
            // }

            // function removeOpsiBB{{ $data->no }}() {
            //     var lab = $(".editOpsiBB" + {{ $data->no }} + " label:last ").data("edit");
            //     var largestID = $(".editOpsiBB" + {{ $data->no }} + ":last").remove();

            //     if (lab <= 2) {
            //         $("#rmvOpsiBB" + {{ $data->no }}).hide();
            //         $("#addOpsiBB" + {{ $data->no }}).show();
            //         $("#queOpsiBB" + {{ $data->no }}).show();
            //     } else {
            //         $("#addOpsiBB" + {{ $data->no }}).show();
            //         $("#queOpsiBB" + {{ $data->no }}).show();
            //     }
            // }
        </script>
    @endforeach
@elseif(Request::segment(2) == 'form_lulusan')
    @foreach ($form_lulusan as $data)
        @php
            if ($data->pilihan == '') {
                $noPilihan = 1;
            } else {
                $noPilihan = 0;
            }
        @endphp
        <script>
            if ({{ $data->other }} != 0) {
                $("#queOpsi" + {{ $data->no }}).hide();
                $("#addOpsi" + {{ $data->no }}).hide();
            }

            if ({{ $noPilihan }} == 1) {
                $(".buttonList" + {{ $data->no }}).hide();
            }


            $("#edit_pilihan_" + {{ $data->no }}).on('change', function() {
                if ($("#edit_pilihan_" + {{ $data->no }}).is(':checked')) {
                    switchStatus = $(this).is(':checked');
                    $("#gandaOpsi").show();
                    $(".editOpsi" + {{ $data->no }}).show();
                    $("#opsiList" + {{ $data->no }}).show();
                    $(".buttonList" + {{ $data->no }}).show();
                    $("#opsiRow").show();
                    $("#newRow").show();
                    $(".inputOpsi").attr("required", true);

                    if ({{ $noPilihan }} == 1) {
                        var html = '';
                        var lab = 0;

                        html += '<div class="input-group input-group-sm mb-1 editOpsi' + {{ $data->no }} +
                            ' noPilihan' + {{ $data->no }};
                        html += '"><label class="input-group-text" data-edit="';
                        html += lab + 1;
                        html += '" data-lab="';
                        html += lab + 1;
                        html += '"> ';
                        html += lab + 1;
                        html += '.</label><input type="text" class="form-control mb-0" name="opsi[]" required></div>';

                        $('#editRow' + {{ $data->no }}).prepend(html);

                        if (lab <= 2) {
                            $("#rmvOpsi" + {{ $data->no }}).hide();
                            $("#addOpsi" + {{ $data->no }}).show();
                            $("#queOpsi" + {{ $data->no }}).show();
                        } else {
                            $("#addOpsi" + {{ $data->no }}).show();
                            $("#queOpsi" + {{ $data->no }}).show();

                        }

                    }

                    // alert(switchStatus); // To verify
                    // nyala
                } else {
                    switchStatus = $(this).is(':checked');
                    $(".inputOpsi").removeAttr("required");

                    $("#gandaOpsi").hide();
                    $(".editOpsi" + {{ $data->no }}).hide();
                    $("#opsiList" + {{ $data->no }}).hide();
                    $(".buttonList" + {{ $data->no }}).hide();
                    $("#opsiRow").hide();
                    $("#newRow").hide();
                    $(".noPilihan" + {{ $data->no }}).remove();
                    // alert(switchStatus); // To verify
                    // mati

                }
            });


            function editOpsi{{ $data->no }}() {
                var html = '';
                var lab = $(".editOpsi" + {{ $data->no }} + " label:last ").data("edit");

                html += '<div class="input-group input-group-sm mb-1 editOpsi' + {{ $data->no }};
                html += '"><label class="input-group-text" data-edit="';
                html += lab + 1;
                html += '" data-lab="';
                html += lab + 1;
                html += '"> ';
                html += lab + 1;
                html += '.</label><input type="text" class="form-control mb-0" name="opsi[]" required></div>';

                $('#editRow' + {{ $data->no }}).append(html);
                $("#rmvOpsi" + {{ $data->no }}).show();
            }

            function otherOpsi{{ $data->no }}() {
                var html = '';
                var lab = $(".editOpsi" + {{ $data->no }} + " label:last ").data("edit");

                html += '<div class="input-group input-group-sm mb-1 editOpsi' + {{ $data->no }};
                html += '"><label class="input-group-text" data-edit="';
                html += lab + 1;
                html += '" data-lab="';
                html += lab + 1;
                html += '"> ';
                html += lab + 1;
                html +=
                    '.</label><input type="text" class="form-control mb-0" placeholder="..." disabled></div><input type="hidden" name="other" value="other"></div>';

                $('#editRow' + {{ $data->no }}).append(html);
                $("#addOpsi" + {{ $data->no }}).hide();
                $("#queOpsi" + {{ $data->no }}).hide();
                $("#rmvOpsi" + {{ $data->no }}).show();
            }

            function removeOpsi{{ $data->no }}() {
                var lab = $(".editOpsi" + {{ $data->no }} + " label:last ").data("edit");
                var largestID = $(".editOpsi" + {{ $data->no }} + ":last").remove();

                if (lab <= 2) {
                    $("#rmvOpsi" + {{ $data->no }}).hide();
                    $("#addOpsi" + {{ $data->no }}).show();
                    $("#queOpsi" + {{ $data->no }}).show();
                } else {
                    $("#addOpsi" + {{ $data->no }}).show();
                    $("#queOpsi" + {{ $data->no }}).show();
                }
            }
        </script>
    @endforeach
@elseif (Request::segment(2) == 'alumni')
    @foreach ($form_alumni as $data)
        <script>
            // $(window).bind('load', function() {
            //     window.history.replaceState({}, "", window.location.href.split("#")[0]);
            //     // $(window).bind('onbeforeunload', function() {
            //     // window.scrollTo(0, 0);
            //     //save info somewhere
            //     // window.location.href.split('#')[0];
            //     // return 'are you sure you want to leave?';

            //     // window.location.replace(window.location.href + '?reload');
            //     if (window.location.href.indexOf('reload') == -1) {
            //         // window.location.replace(window.location.href + '?reload');
            //         // location.reload();
            //     }
            // });
            // location.reload();

            $('#otherOpsi' + {{ $data->no }}).on("input", function() {
                var txt = $('#otherOpsi' + {{ $data->no }}).val();
                $('.otherOpsiName' + {{ $data->no }}).val(txt);
            })
        </script>
    @endforeach
@elseif (Request::segment(2) == 'dashboard' || Request::segment(0))
    <script>
        $('#tbl_alumni').DataTable({
            // "lengthChange": false
            "dom": 'frtp'
        });
        $('#tbl_alumni2').DataTable({});

        $('select[name="tbl_alumni_length"]').css('width', '100%');
        $('select[name="tbl_alumni2_length"]').css('width', '100%');

        $('input[type="search"]').css({
            'padding': '0',
            'margin-bottom': '0'
        });
        // $('.p-1').css({
        //     "font-size",
        //     "1px"
        // });
    </script>

    <script>
        const ctx = document.getElementById('myChart');

        new Chart(ctx, {
            type: 'bar',
            data: {
                labels: ['2020', '2021', '2022', '2023'],
                datasets: [{
                    label: 'Jumlah Responden',
                    data: [12, 19, 3, 5, 2, 3],
                    borderWidth: 1,
                    order: 0
                }, {
                    label: 'Trace',
                    data: [12, 19, 3, 5, 2, 3],
                    borderWidth: 1,
                    type: 'line',
                    order: 1
                }]
            },
            options: {
                responsive: true,
                maintainAspectRatio: false,
                plugins: {
                    legend: {
                        position: 'top',
                    },
                    title: {
                        display: true,
                        text: 'Total Responden Tracer Study'
                    }
                }
            },
        });
    </script>

    <script>
        new Chart(document.getElementById('diagInfoLowonganFF'), {
            type: 'pie',
            data: {
                labels: ['D3 Farmasi', 'S1 Farmasi', 'Profesi Apoteker'],
                datasets: [{
                    label: 'Jumlah Responden',
                    data: [12, 5, 15],
                    borderWidth: 1,
                    order: 0
                }]
            },
            options: {
                responsive: true,
                maintainAspectRatio: false,
                plugins: {
                    legend: {
                        position: 'top',
                    },
                    title: {
                        display: true,
                        text: 'Fakultas Farmasi'
                    }
                }
            },
        });

        new Chart(document.getElementById('diagInfoLowonganSaintek'), {
            type: 'pie',
            data: {
                labels: ['D3 TLM', 'S1 ARS', 'S1 Gizi'],
                datasets: [{
                    label: 'Jumlah Responden',
                    data: [12, 19, 3],
                    borderWidth: 1,
                    order: 0
                }]
            },
            options: {
                responsive: true,
                maintainAspectRatio: false,
                plugins: {
                    legend: {
                        position: 'top',
                    },
                    title: {
                        display: true,
                        text: 'Fakultas Sain dan Teknologi'
                    }
                }
            },
        });

        new Chart(document.getElementById('diagInfoLowonganFISH'), {
            type: 'pie',
            data: {
                labels: ['S1 Hukum', 'S1 Manajemen', 'S1 PGSD'],
                datasets: [{
                    label: 'Jumlah Responden',
                    data: [12, 5, 3],
                    borderWidth: 1,
                    order: 0
                }]
            },
            options: {
                responsive: true,
                maintainAspectRatio: false,
                plugins: {
                    legend: {
                        position: 'top',
                    },
                    title: {
                        display: true,
                        text: 'Fakultas Ilmu Sosial dan Humaniora'
                    }
                }
            },
        });

        new Chart(document.getElementById('diagMasaTunggu'), {
            type: 'bar',
            data: {
                labels: ['Jumlah Responden'],
                datasets: [{
                    label: '≤ 3 bulan',
                    data: [12],
                    borderWidth: 1,
                }, {
                    label: '3 < MT < 12',
                    data: [5],
                    borderWidth: 1,
                }, {
                    label: 'MT ≥ 12',
                    data: [2],
                    borderWidth: 1,
                }]
            },
            options: {
                responsive: true,
                maintainAspectRatio: false,
                plugins: {
                    legend: {
                        position: 'top',
                    },
                    title: {
                        display: true,
                        text: 'Masa Tunggu Mendapat Pekerjaan'
                    }
                }
            },
        });

        new Chart(document.getElementById('diagRelevansiPekerjaan'), {
            type: 'bar',
            data: {
                labels: ['Jumlah Responden'],
                datasets: [{
                    label: '≤ 3 bulan',
                    data: [12],
                    borderWidth: 1,
                }, {
                    label: '3 < MT < 12',
                    data: [5],
                    borderWidth: 1,
                }, {
                    label: 'MT ≥ 12',
                    data: [2],
                    borderWidth: 1,
                }]
            },
            options: {
                responsive: true,
                maintainAspectRatio: false,
                plugins: {
                    legend: {
                        position: 'top',
                    },
                    title: {
                        display: true,
                        text: 'Masa Tunggu Mendapat Pekerjaan'
                    }
                }
            },
        });
    </script>
@endif --}}


</html>
