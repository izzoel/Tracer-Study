<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <title>Tracer Study</title>

    <!-- mobile responsive meta -->
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=5">

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

</head>

<body>

    <div class="preloader">
        <div class="dots dot1">
            <div class="dot"></div>
            <div class="dot"></div>
            <div class="dot"></div>
        </div>
    </div>

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

                            {{-- <li class="nav-item dropdown">
                                <a class="nav-link dropdown-toggle" href="#" role="button" data-bs-toggle="dropdown">
                                    User
                                </a>
                                <ul class="dropdown-menu">
                                    <li><a class="dropdown-item" href="{{ route('user_alumni') }}">User
                                            Alumni</a></li>
                                    <li><a class="dropdown-item" href="#">User Pengguna
                                            Lulusan</a></li>
                                </ul>
                            </li> --}}

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
                            <input type="text" name="name" class="form-control ms-4 me-4" placeholder="Username"
                                aria-label="Username" style="margin-bottom: 20px" required>
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
    <script src="../plugins/jquery/jquery.min.js"></script>
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


</body>


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

<script>
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
</script>

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
    $("#gandaOpsi").hide();
    $(".addOpsi").hide();
    $("#opsiList").hide();
    $(".buttonList").hide();


    $("#pilihan").on('change', function() {
        if ($('#pilihan').is(':checked')) {
            switchStatus = $(this).is(':checked');
            $("#gandaOpsi").show();
            $(".addOpsi").show();
            $(".buttonList").show();
            $("#opsiList").show();
            $("#opsiRow").show();
            $("#newRow").show();
            $(".inputOpsi").attr("required", true);
            // alert(switchStatus); // To verify
            // nyala
        } else {
            switchStatus = $(this).is(':checked');
            $(".addOpsi1").removeAttr("required");
            $(".inputOpsi").removeAttr("required");

            $("#gandaOpsi").hide();
            $(".addOpsi").hide();
            $(".buttonList").hide();
            $("#opsiList").hide();
            $("#opsiRow").hide();
            $("#newRow").hide();
            // alert(switchStatus); // To verify
            // mati
        }
    });
</script>

<script>
    function addOpsi() {
        var html = '';
        var lab = $(".addOpsi label:last").data("lab");

        html +=
            '<div class="input-group input-group-sm addOpsi mb-1" id="opsiList"><label class="input-group-text" for="inputGroupSelect01"  data-lab="';
        html += lab + 1;
        html += '"> ';
        html += lab + 1;
        html += '.</label><input type="text" class="form-control mb-0 addOpsi1" name="opsi[]" required></div>';
        $('#newRow').append(html);

    }


    function otherOpsi() {
        var html = '';
        var lab = $(".addOpsi label:last").data("lab");

        html +=
            '<div class="input-group input-group-sm mb-1" id="opsiList"><label class="input-group-text" for="inputGroupSelect01"  data-lab="';
        html += lab + 1
        html += '"> ';
        html += lab + 1;
        html +=
            '.</label><input type="text" class="form-control mb-0" placeholder="..." disabled><input type="hidden" name="other" value="other"></div>';
        $('#newRow').append(html);
        $("#addOpsi").hide();
        $("#queOpsi").hide();
    }

    function removeOpsi() {
        var largestID = $("#newRow input:last");
        largestID.closest('.input-group-sm').remove();
        $("#addOpsi").show();
        $("#queOpsi").show();
    }
</script>

<script>
    $('input:text').click(function() {
        var value = $(this).attr('data-other');
        var rad = document.getElementById(value).checked = "true";

    });
</script>


@if (Request::segment(2) == 'form_alumni')
    @foreach ($form_alumni as $data)
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
            $('#otherOpsi' + {{ $data->no }}).on("input", function() {
                var txt = $('#otherOpsi' + {{ $data->no }}).val();
                $('.otherOpsiName' + {{ $data->no }}).val(txt);
            })
        </script>
    @endforeach
@endif

</html>
