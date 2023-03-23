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
        tab = $(this);
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
                        // html += 'asdasdasd';
                        html += '</td>';
                    }
                    html += '<td>';
                    html += '</td>';
                    html += '</tr>';
                    html += '</tbody>';
                    html += '</table">';

                    $('#formulir_' + kategori).append(html);


                });
                tambahNoUrut = parseInt(no) + 1;
                $(' <a class="btn-sm btn-primary" id="tambah" onclick="modTambah(tambahNoUrut)" href="#" role="button" data-bs-toggle="modal">&plus;</a>')
                    .insertAfter($('#formulir_' + kategori));


                $('html, body').animate({
                    scrollTop: $("#tambah").offset().top
                });
            }
        });
    }


    function modTambah(tambahNoUrut) {
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
        // $('#formTambah').attr("action", routeName);

        lab = $("#opsiList label:last").data("lab");
        $("#gandaOpsi").hide();
        $(".addOpsi").hide();
        $("#opsiList").hide();
        $(".buttonList").hide();

        $("#pilihan").on('change', function() {
            // $("#ganda").attr("checked", '');
            if ($('#pilihan').is(':checked')) {
                $("#ganda").prop('checked', false);
                // $("#ganda").attr("checked", '');
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

        $("#formTambah").on('submit', function(e) {
            e.preventDefault();
            ajaxFormTambah(routeName);
            myModal.hide();
        })

    }



    function ajaxFormTambah(routeName) {
        $.ajaxSetup({
            headers: {
                'X-CSRF-TOKEN': $('meta[name="_token"]').attr('content')
            }
        });
        var token = $("meta[name='_token']").attr("content");
        var no = $("#no").val();
        var pertanyaan = $("#pertanyaan").val();
        var pilihan = $("#pilihan").val();
        var opsi = $("input[name='opsi[]']")
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
        var wajib = $("#wajib").val();

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
                tab.trigger('click');
                $('#tambah').remove();
            },
            error: function(data) {
                console.log(data)
                alert('gagal');
            },
        });
    }


















    //     // alert('ajax');
    //     // $.ajax({
    //     //     /* the route pointing to the post function */
    //     //     url: '/admin/form_alumni/store/' + kategori,
    //     //     method: 'post',
    //     //     /* send the csrf-token and the input to the controller */
    //     //     data: {
    //     //         // _token: token,
    //     //         // message: $(".getinfo").val()
    //     //     },
    //     //     // dataType: 'JSON',
    //     //     /* remind that 'data' is the response of the AjaxController */
    //     //     success: function(data) {
    //     //         // $(".writeinfo").append(data.msg);
    //     //         alert('suc');
    //     //     },
    //     //     error: function(data) {
    //     //         // $(".writeinfo").append(data.msg);
    //     //         alert('gag');
    //     //     }
    //     // });
    // });



    // $("#save").on('click', function() {
    //     $.ajaxSetup({
    //         headers: {
    //             'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
    //         }
    //     });

    //     let token = $("meta[name='csrf-token']").attr("content");
    //     // alert(token);
    //     // title =
    //     // valFormTambah = $("#formTambah").serialize();

    //     // data: {
    //     //                 "title": title,
    //     //                 "content": content,
    //     //                 "_token": token
    //     //             },
    //     var no = $("#no").val()

    //     $.ajax({
    //         url: '/admin/form_alumni/store/' + kategori,
    //         method: 'post',
    //         cache: false,
    //         data: {
    //             "no": no,
    //             //         "pertanyaan": pertanyaan
    //             // 'survey' => $request->input('pertanyaan'),
    //             // 'pilihan' => implode(";",  $pilihan),
    //             // 'ganda' => $ganda,
    //             // 'other' => $other,
    //             // 'wajib' => $wajib
    //             // "content": content,
    //             "_token": token
    //         },
    //         dataType: 'json',
    //         success: function(data) {
    //             alert('success');
    //             console.log(data);
    //         },
    //         error: function(data) {
    //             alert('gagal');
    //         }
    //         //     // }
    //     });

    //     // $.post("routeName", {[]
    //     //     // name: "Donald Duck",
    //     //     // city: "Duckburg",
    //     //     // no: 100,
    //     //     // survey: "asas",
    //     //     // pilihan: 'asas',
    //     //     // ganda: => 0,
    //     //     // other: => 0,
    //     //     // wajib: => 1
    //     // })
    //     // function(data, status) {
    //     //     // alert("Data: " + data + "\nStatus: " + status);
    //     //     alert("ajax ok");
    //     // });

    //     // $.ajax({
    //     //     method: 'POST',
    //     //     url: routeName,
    //     //     data: {
    //     //         no: 100,
    //     //     }
    //     //     //     // dataType: 'json',
    //     //     // success: function(data) {

    //     //     //     alert("ajax");
    //     //     // }
    //     // });
    //     // .done(function(response) {
    //     //     alert("Data Saved: ");
    //     // });
    // })



    // $.ajax({
    //     url: routeName,
    //     // method: 'post',
    //     // dataType: 'json',
    //     // success: function(data) {}
    // });
    // // console.log(routeName);
    // alert(routeName);


    // var addNo = $("#no");
    // valFormTambah = $("#formTambah").serialize();
    // console.log(valFormTambah);
    // console.log(routeName);
    // alert(valFormTambah);

    // $.ajax({
    //     method: 'post',
    //     url: routeName,
    //     data: ['id', 100],
    //     dataType: 'json',
    //     success: function(data) {
    //         alert('valFormTambah');
    //         // $.each(data, function(key, values) {
    //         //     console.log(key);
    //         //     alert(key);
    //         // });
    //     }
    // });


    // $.post(routeName[, data][, success][, dataType])
    // $.post(routeName, valFormTambah, );

    // $.post(routeName, {
    //         name: "Donald Duck",
    //         city: "Duckburg"
    //     },

    //     function(response) {
    //         alert("success");
    //         $("#mypar").html(response.amount);
    //     });

    // },
    // function(data,status){
    //   alert("Data: " + data + "\nStatus: " + status);
    // });



    // }



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
</script>
