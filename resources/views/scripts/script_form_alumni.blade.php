<script>
    // inisiasi
    if ($('.active #tab-title').text() == "Belum Bekerja") {
        kategori = $('.active #tab-title').text().replace(' ', '_').toLowerCase();
        route = "{{ route('get_form_alumni', ':kategori') }}";
        route = route.replace(':kategori', kategori)
        $('#formulir_' + kategori).html("");
        $('#tambah').remove();
        getData(route, kategori);
    }
    // end inisiasi

    $('.nav-link[role="tab"]').on("click", function() {
        kategori = $('.active #tab-title').text().replace(' ', '_').toLowerCase();
        route = "{{ route('get_form_alumni', ':kategori') }}";
        route = route.replace(':kategori', kategori)
        $('#formulir_' + kategori).html("");
        $('#tambah').remove();
        getData(route, kategori);
    });

    $('#modal_form_tambah').on('hidden.bs.modal', function() {
        $('.modTambah').html("");
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

                    var routeDestroy = "{{ route('destroy_form_alumni', '') }}" + "/" +
                        kategori + "/" + id;

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
                        '" href="' + routeDestroy +
                        '"role="button"><i class="fa fa-trash"></i></a>';
                    html += '<a class="btn-sm btn-primary" id="edit' + id +
                        '"role="button" data-bs-toggle="modal" data-bs-target="#modal_edit_' + no +
                        '"><i class="fa fa-pencil"></i></a>';
                    html += '</td>';
                    html += '</tr>';
                    html += '<tr>';
                    html += '<td>';
                    html += '</td>';
                    if (pilihan == '') {
                        html += '<td class="col pt-0">';
                        html += '<input type="text" class="form-control mb-1" name="bank' + no +
                            '"' + required + '>';
                        html += '</td>';
                        html += '<td>';
                        html += '</td>';
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
                        html += '</td>';
                    }
                    html += '<td>';
                    html += '</td>';
                    html += '</tr>';
                    html += '</tbody>';
                    html += '</table">';

                    $('#formulir_' + kategori).append(html);


                });
                // $('.tambahNoUrut').text(parseInt(no) + 1 + '.');
                tambahNoUrut = parseInt(no) + 1 + '.';
                $(' <a class="btn-sm btn-primary" id="tambah" onclick="modTambah(tambahNoUrut)" href="#" role="button" data-bs-toggle="modal">&plus;</a>')
                    .insertAfter($('#formulir_' + kategori));


                $('html, body').animate({
                    scrollTop: $(window.location.hash).offset().top
                });
            }
        });
    }


    function modTambah(tambahNoUrut) {
        var myModal = new bootstrap.Modal(document.getElementById("modal_form_tambah"), {});
        var html = '';
        myModal.show();

        html += '<tbody><tr>';
        html += '<td class="col-auto pe-0">' + tambahNoUrut + '</td>';

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
        html += '<input class="form-check-input" type="checkbox" name="ganda" id="ganda">';
        html += '<label class="form-check-label text-dark" for="ganda">Ganda</label>';
        html += '</div>';

        html += '<div class="input-group input-group-sm mb-1 addOpsi" id="opsiList">';
        html += '<label class="input-group-text" id="opsi" data-lab="1">1.</label>';
        html += '<input type="text" class="form-control mb-0 inputOpsi" name="opsi[]">';
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
            '.</label><input type="text" class="form-control mb-0" placeholder="..." disabled><input type="hidden" name="other" value="other"></div>';
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
</script>
