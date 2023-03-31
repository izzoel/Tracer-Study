@if (Request::segment(2) == 'form_alumni')
    <script>
        // inisiasi
        if ($('.active #tab-title').text() == "Belum Bekerja") {
            kategori = $('.active #tab-title').text().replace(' ', '_').toLowerCase();
            route = "{{ route('get_form_alumni', ':kategori') }}";
            route = route.replace(':kategori', kategori)
            init = "tab";
            $('#formulir_' + kategori).empty();
            getData(route, kategori);
        }
        // end inisiasi

        $('.nav-link[role="tab"]').on("click", function() {
            kategori = $('.active #tab-title').text().replace(' ', '_').toLowerCase();
            route = "{{ route('get_form_alumni', ':kategori') }}";
            route = route.replace(':kategori', kategori);
            init = "";
            tab = $(this);
            $('#formulir_' + kategori).html("");
            $('#tambah').remove();
            getData(route, kategori);

        });



        function getData(route, kategori) {
            $.ajax({
                url: route,
                method: 'get',
                dataType: 'json',
                success: function(data) {
                    $.each(data, function(key, values) {
                        i = 1;
                        id = data[key].id;
                        no = data[key].no;
                        survey = data[key].survey;
                        pilihan = data[key].pilihan;
                        ganda = data[key].ganda;
                        other = data[key].other;
                        wajib = data[key].wajib;

                        if (wajib == 1) {
                            if (ganda != 1) {
                                required = "required";
                            } else {
                                required = "";
                            }
                            wajibHtml = '<span class="ms-0 ps-0 me-0 pe-0 text-danger">*</span>';
                        }
                        if (ganda == 1) {
                            var type = 'checkbox';
                            var array = '[]';
                        } else {
                            var type = 'radio';
                            var array = '';
                        }
                        var html = '';
                        html += '<table class="table table-borderless responsive ">';
                        html += '<tbody>';
                        html += '<tr>';
                        html +=
                            '<td class="align-top" style="min-width:5%;width:5%">' + no +
                            '.&nbsp;</td>';
                        html += '<td class="text-break pb-0 mb-0" colspan="2">' + survey + wajibHtml +
                            '</td>';
                        html += '<td style="min-width: 5rem;width: 5rem">';
                        html += '<a class="btn-sm btn-primary bg-secondary me-2" id="destroy' + id +
                            '" href="" onclick="return destroyData(' + id +
                            ')" role="button"><i class="fa fa-trash"></i></a>';
                        html += '<a class="btn-sm btn-primary" id="edit' + id +
                            '"role="button" onclick="modEdit(' + id +
                            ')"><i class="fa fa-pencil"></i></a>';
                        html += '</td>';
                        html += '</tr>';
                        html += '<tr>';
                        html += '<td>';
                        html += '</td>';
                        if (pilihan == '') {
                            if (id >= 1 && id <= 12) {
                                html += '<td class="col pt-0">';
                                html += '<input type="text" class="form-control mb-1" name="alumni_' +
                                    no +
                                    '"' + required + '>';
                                html += '</td>';
                                html += '<td>';
                                html += '</td>';
                            } else {
                                html += '<td class="col pt-0">';
                                html += '<input type="text" class="form-control mb-1" name="bank' + no +
                                    '"' + required + '>';
                                html += '</td>';
                                html += '<td>';
                                html += '</td>';
                            }
                        } else {
                            var arPilihan = pilihan.split(';');
                            var j = 1;
                            var k = 1;
                            html += '<td class="col pe-0 pt-0">';
                            $.each(arPilihan, function(item, val) {
                                html += '<div class="row ms-0">';
                                html +=
                                    '<div class="form-check mb-0 ps-0 me-0">';
                                html +=
                                    '<input class="form-check-input gandaOpsi' +
                                    no +
                                    '" type="' +
                                    type +
                                    '"id="' + no + j + '"' + required + ' name="bank' + no +
                                    array +
                                    '" value="' + arPilihan[item] + '" for="' +
                                    no +
                                    j +
                                    '">&zwnj;';

                                html += '<label for="' +
                                    no +
                                    j +
                                    '" style="float:left;width: 75%;">'

                                html +=
                                    '<span class="form-check-label text-dark" >' +
                                    arPilihan[item] +
                                    '</span>';

                                html += '</label>'

                                html += '</div>';
                                html += '</div>';
                                j++;

                            });
                            if (other == 1) {
                                html += '<div class="row input-other">';

                                html += '<div class="col-auto form-check ms-2 ps-1 me-0 pe-0">';
                                html += '<input class="form-check-input otherOpsiName' + no +
                                    ' gandaOpsi' + no + '" type="' + type + '" id="other' + k + '" ' +
                                    'name="bank' + no + array + '">';
                                html += '</div>';

                                html +=
                                    '<div class="col ms-0 ps-0"><div class="input-group input-group-sm mb-1" style="min-width: 100%;width: 3rem">';
                                html += '<input type="text" class="form-control" data-other="other' +
                                    k + '" id="otherOpsi' + no + '">';
                                html += '</div></div>';

                                html += '</div>';
                            }
                            html += '</td>';
                        }
                        html += '<td>';
                        html += '</td>';
                        html += '</tr>';
                        html += '</tbody>';
                        html += '</table">';
                        $('#formulir_' + kategori).append(html);
                        $(window).scrollTo('#tambah');
                    });
                    tambahNoUrut = parseInt(no) + 1;
                }
            });
            $(' <a class="btn-sm btn-primary" id="tambah" onclick="modTambah(tambahNoUrut)" href="#" role="button" data-bs-toggle="modal">&plus;</a>')
                .insertAfter($('#formulir_' + kategori));
        }

        function modTambah(tambahNoUrut) {
            $('#modal_form_tambah').on('hidden.bs.modal', function() {
                $('.modTambah').html("");
            });

            var myModal = new bootstrap.Modal(document.getElementById("modal_form_tambah"), {});
            var routeName = "{{ route('add_form_alumni', ':kategori') }}";
            var routeName = routeName.replace(':kategori', kategori)
            var html = '';

            myModal.show();

            html += '<tbody><tr>';
            html += '<input type="hidden" name="no" id="no" value="' + tambahNoUrut + '">';
            html += '<td class="col-auto pe-0">' + tambahNoUrut + '.</td>';
            html += '<td><div class="form-group"><div class="form-floating">';
            html +=
                '<textarea class="form-control" id="pertanyaan" name="pertanyaan" placeholder="pertanyaan" required style="height: 100px"></textarea>';
            html += '<label for="pertanyaan" class="text-secondary">Pertanyaan</label>';
            html += '</div></div></td>';

            html += '<div class="d-none d-lg-block"><td>';

            html += '<div class="form-check form-switch form-check-inline mb-1">';
            html += '<input class="form-check-input" type="checkbox" role="switch" id="pilihan" name="pilihan">';
            html += '<label class="form-check-label text-dark" for="pilihan">Pilihan</label>';
            html += '</div>';

            html += '<div class="form-check form-switch form-check-inline mb-1" id="gandaOpsi">';
            html += '<input class="form-check-input" type="checkbox" name="ganda" id="ganda" >';
            html += '<label class="form-check-label text-dark" for="ganda">Ganda</label>';
            html += '</div>';

            html += '<div class="input-group input-group-sm mb-1 addOpsi" id="opsiList">';
            html += '<label class="input-group-text" id="opsi" data-lab="1">1.</label>';
            html += '<input type="text" class="form-control mb-0 inputOpsi" name="opsi[]" >';
            html += '</div>';

            html += '<div id="newRow"></div>';

            html += '<div class="pull-right buttonList">';
            html += '<a class="btn-sm btn-primary me-2" id="queOpsi" onclick="otherOpsi()" role="button">&quest;</a>';
            html += '<a class="btn-sm btn-primary" id="addOpsi" onclick="addOpsi()" role="button">&plus;</a>';
            html += '<a class="btn-sm btn-primary ms-2" id="rmvOpsi" onclick="removeOpsi()" role="button">&minus;</a>';
            html += '</div>';

            html += '</td></div>';

            html += '<td><div class="form-check form-switch">'
            html += '<input class="form-check-input" type="checkbox" id="wajib" name="wajib" checked>';
            html += '<label class="form-check-label text-dark" for="wajib">wajib</label>';
            html += '</div></td>';
            html += '</tr><br><br></tbody>';
            $('.modTambah').append(html);
            lab = $("#opsiList label:last").data("lab");
            $("#gandaOpsi").hide();
            $(".addOpsi").hide();
            $("#opsiList").hide();
            $(".buttonList").hide();
            $("#pilihan").on('change', function() {
                if ($('#pilihan').is(':checked')) {
                    $("#ganda").prop('checked', false);
                    $("#gandaOpsi").show();
                    $(".addOpsi").show();
                    $(".buttonList").show();
                    $("#opsiList").show();
                    $("#opsiRow").show();
                    $("#newRow").show();
                    $(".addOpsiNew").attr("required", true);
                    $(".inputOpsi").attr("required", true);
                    $("#pilihan").attr("checked", true);
                    $("#rmvOpsi").hide();
                    if (lab >= 1) {
                        $("#rmvOpsi").show();
                    } else {
                        $("#addOpsi").show();
                        $("#queOpsi").show();
                    }
                } else {
                    $(".addOpsiNew").removeAttr("required");
                    $(".inputOpsi").removeAttr("required");
                    $("#pilihan").removeAttr("checked");
                    $("#gandaOpsi").hide();
                    $(".addOpsi").hide();
                    $(".buttonList").hide();
                    $("#opsiList").hide();
                    $("#opsiRow").hide();
                    $("#newRow").hide();
                }
            });
            $("#formTambah").one('submit', function(e) {
                e.preventDefault();
                ajaxFormTambah(routeName);
                myModal.hide();
            });
        }

        function modEdit(id) {
            $('#modal_edit').on('hidden.bs.modal', function() {
                $('.modEdit').html("");
            });

            var myModal = new bootstrap.Modal(document.getElementById("modal_edit"), {});
            var routeName = "{{ route('edit_show_form_alumni', '') }}" + "/" +
                kategori + "/" + id;
            var html = '';

            myModal.show();
            $.ajax({
                url: routeName,
                method: 'get',
                dataType: 'json',
                success: function(data) {
                    var id = data.id;
                    var no = data.no;
                    var survey = data.survey;
                    var pilihan = data.pilihan;
                    var ganda = data.ganda;
                    var other = data.other;
                    var wajib = data.wajib;

                    if (data.pilihan == '') {
                        checked = '';
                    } else {
                        var arPilihan = pilihan.split(';');
                        checked = 'checked';
                    }

                    if (ganda == 1) {
                        var type = 'checkbox';
                        var array = '[]';
                        var gandaChecked = 'checked';
                    } else {
                        var type = 'radio';
                        var array = '';
                        var gandaChecked = '';
                    }

                    if (wajib == 1) {
                        if (ganda != 1) {
                            required = "required";
                        } else {
                            required = "";
                        }
                        wajibHtml = '<span class="ms-0 ps-0 me-0 pe-0 text-danger">*</span>';
                    }

                    // console.log(data);
                    html += '<tbody><tr>';
                    html += '<input type="hidden" name="no" id="no" value="' + no + '">';
                    html += '<td class="col-auto pe-0">' + no + '.</td>';
                    html += '<td><div class="form-group"><div class="form-floating">';
                    html +=
                        '<textarea class="form-control" id="pertanyaan" name="pertanyaan" placeholder="pertanyaan" required style="height: 100px">' +
                        survey + '</textarea>';
                    html += '<label for="pertanyaan" class="text-secondary">Pertanyaan</label>';
                    html += '</div></div></td>';

                    html += '<div class="d-none d-lg-block"><td>';

                    html += '<div class="form-check form-switch form-check-inline mb-1">';
                    html +=
                        '<input class="form-check-input" type="checkbox" role="switch" id="pilihan" name="pilihan" ' +
                        checked + '>';
                    html +=
                        '<label class="form-check-label text-dark" for="pilihan">Pilihan</label>';
                    html += '</div>';




                    html +=
                        '<div class="form-check form-switch form-check-inline mb-1" id="gandaOpsi">';
                    html +=
                        '<input class="form-check-input" type="checkbox" name="ganda" id="ganda" ' +
                        gandaChecked + '>';
                    html += '<label class="form-check-label text-dark" for="ganda">Ganda</label>';
                    html += '</div>';


                    if (data.pilihan == '') {
                        html += '<div class="input-group input-group-sm mb-1 addOpsi" id="opsiList">';
                        html += '<label class="input-group-text" id="opsi" data-lab="1">1.</label>';
                        html +=
                            '<input type="text" class="form-control mb-0 inputOpsi" name="opsi[]" >';
                        html += '</div>';
                    }


                    html += '<div id="newRow">';
                    if (data.pilihan != '') {
                        j = 1;
                        $.each(arPilihan, function(item) {
                            html +=
                                '<div class="input-group input-group-sm mb-1 addOpsi" id="opsiList">';
                            html += '<label class="input-group-text" id="opsi" data-lab="1">' + j +
                                '.</label>';
                            html +=
                                '<input type="text" class="form-control mb-0 inputOpsi" name="opsi[]" value="' +
                                arPilihan[item] + '">';
                            html += '</div>';
                            j++;
                        });
                        if (data.other == 1) {
                            html +=
                                '<div class="input-group input-group-sm mb-1" id="opsiList"><label class="input-group-text" for="inputGroupSelect01"  data-lab="';
                            html += j
                            html += '">';
                            html += j;
                            html +=
                                '.</label><input type="text" class="form-control mb-0" placeholder="..." disabled><input type="hidden" name="other" id="other" value="other"></div>';
                        }
                    }
                    html += '</div>';

                    html += '<div class="pull-right buttonList">';
                    html +=
                        '<a class="btn-sm btn-primary me-2" id="queOpsi" onclick="otherOpsi()" role="button">&quest;</a>';
                    html +=
                        '<a class="btn-sm btn-primary" id="addOpsi" onclick="addOpsi()" role="button">&plus;</a>';
                    html +=
                        '<a class="btn-sm btn-primary ms-2" id="rmvOpsi" onclick="removeOpsi()" role="button">&minus;</a>';
                    html += '</div>';

                    html += '</td></div>';

                    html += '<td><div class="form-check form-switch">'
                    html +=
                        '<input class="form-check-input" type="checkbox" id="wajib" name="wajib" checked>';
                    html += '<label class="form-check-label text-dark" for="wajib">wajib</label>';
                    html += '</div></td>';
                    html += '</tr><br><br></tbody>';
                    $('.modEdit').append(html);
                    lab = $("#opsiList label:last").data("lab");


                    if (data.pilihan == '') {
                        $("#gandaOpsi").hide();
                        $(".addOpsi").hide();
                        $("#opsiList").hide();
                        $(".buttonList").hide();
                    } else {
                        $("#gandaOpsi").show();
                        $(".addOpsi").show();
                        $("#opsiList").show();
                        $(".buttonList").show();
                        if (data.other == 1) {
                            $("#queOpsi").hide();
                            $("#addOpsi").hide();
                        }
                    }


                    $("#pilihan").on('change', function() {
                        if ($('#pilihan').is(':checked')) {
                            $("#ganda").prop('checked', false);
                            $("#gandaOpsi").show();
                            $(".addOpsi").show();
                            $(".buttonList").show();
                            $("#opsiList").show();
                            $("#opsiRow").show();
                            $("#newRow").show();
                            $(".addOpsiNew").attr("required", true);
                            $(".inputOpsi").attr("required", true);
                            $("#pilihan").attr("checked", true);
                            $("#rmvOpsi").hide();
                            if (lab >= 1) {
                                $("#rmvOpsi").show();
                            } else {
                                $("#addOpsi").show();
                                $("#queOpsi").show();
                            }
                        } else {
                            $(".addOpsiNew").removeAttr("required");
                            $(".inputOpsi").removeAttr("required");
                            $("#pilihan").removeAttr("checked");
                            $("#gandaOpsi").hide();
                            $(".addOpsi").hide();
                            $(".buttonList").hide();
                            $("#opsiList").hide();
                            $("#opsiRow").hide();
                            $("#newRow").hide();
                        }
                    });

                    // i++;
                }
            });


            $("#formEdit").one('submit', function(e) {
                e.preventDefault();
                var routeEdit = "{{ route('edit_form_alumni', '') }}" + "/" +
                    kategori + "/" + id;
                ajaxFormEdit(routeEdit);
                myModal.hide();
            });
        }

        function ajaxFormTambah(routeName) {
            $.ajaxSetup({
                headers: {
                    'X-CSRF-TOKEN': $('meta[name="_token"]').attr('content')
                }
            });
            let token = $("meta[name='_token']").attr("content");
            let no = $("#no").val();
            let pertanyaan = $("#pertanyaan").val();
            let pilihan = $("#pilihan").val();
            let opsi = $("input[name='opsi[]']")
                .map(function() {
                    return $(this).val();
                }).get();
            if ($('#ganda').is(':checked')) {
                var ganda = 'on';
            } else {
                var ganda = 'off';
            }

            if ($("#other").length > 0) {
                var other = 1;
            } else {
                var other = 0;
            }
            let wajib = $("#wajib").val();

            data = {
                _token: token,
                no: no,
                pertanyaan: pertanyaan,
                pilihan: pilihan,
                opsi: opsi,
                ganda: ganda,
                other: other,
                wajib: wajib
            };
            $.ajax({
                url: routeName,
                method: 'post',
                data: data,
                success: function(data) {
                    $('#tambah').remove();
                    $('#formulir_' + kategori).empty();
                    let activeKategori = kategori;
                    getData(route, activeKategori);
                },
                error: function(data) {
                    console.log(data)
                    alert('gagal');
                },
            });
        }

        function ajaxFormEdit(routeEdit) {
            $.ajaxSetup({
                headers: {
                    'X-CSRF-TOKEN': $('meta[name="_token"]').attr('content')
                }
            });
            let token = $("meta[name='_token']").attr("content");
            let no = $("#no").val();
            let pertanyaan = $("#pertanyaan").val();
            let pilihan = $("#pilihan").val();
            let opsi = $("input[name='opsi[]']")
                .map(function() {
                    return $(this).val();
                }).get();
            if ($('#ganda').is(':checked')) {
                var ganda = 'on';
            } else {
                var ganda = 'off';
            }

            if ($("#other").length > 0) {
                var other = 1;
            } else {
                var other = 0;
            }
            let wajib = $("#wajib").val();

            data = {
                _token: token,
                no: no,
                pertanyaan: pertanyaan,
                pilihan: pilihan,
                opsi: opsi,
                ganda: ganda,
                other: other,
                wajib: wajib
            };
            console.log(data)
            $.ajax({
                url: routeEdit,
                method: 'post',
                data: data,
                success: function(data) {
                    $('#tambah').remove();
                    $('#formulir_' + kategori).empty();
                    let activeKategori = kategori;
                    getData(route, activeKategori);
                    console.log(pertanyaan);
                },
                error: function(data) {
                    console.log(data)
                    alert('gagal');
                },
            });
        }

        function addOpsi() {
            var html = '';
            var lab = $(".addOpsi label:last").data("lab");

            html +=
                '<div class="input-group input-group-sm addOpsi mb-1" id="opsiList"><label class="input-group-text" for="inputGroupSelect01"  data-lab="';
            html += lab + 1;
            html += '"> ';
            html += lab + 1;
            html +=
                '.</label><input type="text" class="form-control mb-0 addOpsiNew" name="opsi[]" required></div>';
            $('#newRow').append(html);

            if (lab >= 1) {
                $("#rmvOpsi").show();
            } else {
                $("#addOpsi").show();
                $("#queOpsi").show();
            }
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
                '.</label><input type="text" class="form-control mb-0" placeholder="..." disabled><input type="hidden" name="other" id="other" value="other"></div>';
            $('#newRow').append(html);
            $("#queOpsi").hide();
            $("#addOpsi").hide();
            $("#rmvOpsi").show();
        }

        function removeOpsi() {
            var largestID = $("#newRow input:last");
            largestID.closest('.input-group-sm').remove();
            var lab = $(".addOpsi label:last").data("lab");

            if (lab <= 1) {
                $("#rmvOpsi").hide();
                $("#addOpsi").show();
                $("#queOpsi").show();
            } else {
                $("#addOpsi").show();
                $("#queOpsi").show();
            }
        }

        function destroyData(id) {
            var routeDestroy = "{{ route('destroy_form_alumni', '') }}" + "/" +
                kategori + "/" + id;
            $.ajax({
                url: routeDestroy,
                method: 'get',
                success: function(response) {
                    $('#tambah').remove();
                    $('#formulir_' + kategori).empty();
                    let activeKategori = kategori;
                    getData(route, activeKategori);
                },
                error: function(data) {
                    console.log(data)
                    alert('gagal');
                },
            });
            return false;
        }
    </script>
@endif
