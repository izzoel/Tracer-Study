<script>
    // inisiasi
    if ($('.active #tab-title').text() == "Belum Bekerja") {
        kategori = $('.active #tab-title').text().replace(' ', '_').toLowerCase();
        route = "{{ route('get_form_alumni', ':kategori') }}";
        route = route.replace(':kategori', kategori)
        getData(route, kategori);
    }
    $('.nav-link[role="tab"]').on("click", function() {
        kategori = $('.active #tab-title').text().replace(' ', '_').toLowerCase();
        route = "{{ route('get_form_alumni', ':kategori') }}";
        route = route.replace(':kategori', kategori)
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

                    var html = ''
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
                                '" value="' + item + '" for="' +
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
                $('.tambahNoUrut').text(parseInt(no) + 1 + '.')
                $('html, body').animate({
                    scrollTop: $(window.location.hash).offset().top
                });
            }
        });
    }
</script>
