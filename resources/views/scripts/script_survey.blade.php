<script>
    $('#nama').keyup(function() {
        $(this).val($(this).val().toUpperCase());
    });
    $('#nim').keyup(function() {
        $(this).val($(this).val().toUpperCase());
    });

    $('#alumni-survey').on('submit', function(e) {
        e.preventDefault();
        routeAlumni = "{{ route('alumni_data', '') }}" + "/" + $('#nim').val() + "/" + $('#prodi').find(
            ":selected").val();

        $.get(routeAlumni, function(data) {
            if (data == $('#nim').val()) {
                $("#alumni-survey").unbind('submit');
                $("#alumni-survey").submit();
            } else {
                Swal.fire({
                    title: 'Data Tidak Ditemukan',
                    text: "NIM/Nama tidak ditemukan",
                    icon: 'error',
                })
            }
        })
    });
</script>
@if (Request::segment(2) == 'alumni')
    <script>
        route = "{{ route('survey_alumni', '') }}" + "/" + "{{ $karir }}";
        kategori = '{{ $kategori }}';

        i = 1;
        i_ = 1;
        $.ajax({
            url: route,
            method: 'get',
            dataType: 'json',
            success: function(data) {
                $.each(data, function(key, values) {

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
                    if (kategori == "Belum Bekerja") {
                        if (id >= 1 && id <= 19) {
                            name = "alumni" + i;
                        } else {
                            name = "belum_bekerja" + i_;
                            i_++;
                        }
                    } else if (kategori == "Sudah Bekerja") {
                        if (id >= 1 && id <= 16) {
                            name = "alumni" + i;
                        } else if (id >= 17 && id <= 18) {
                            no_ = parseInt(i) + 1;
                            name = "alumni" + no_;
                        } else {
                            name = "sudah_bekerja" + i_;
                            i_++;
                        }
                    } else if (kategori == "Berwirausaha") {
                        if (id >= 1 && id <= 16) {
                            name = "alumni" + i;
                        } else if (id >= 17 && id <= 18) {
                            no_ = parseInt(i) + 1;
                            name = "alumni" + no_;
                        } else {
                            name = "berwirausaha" + i_;
                            i_++;
                        }
                    } else if (kategori == "Lanjut Pendidikan") {
                        if (id >= 1 && id <= 12) {
                            name = "alumni" + i;
                        } else {
                            name = "lanjut_pendidikan" + i_;
                            i_++;
                        }
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

                    html += '</tr>';
                    html += '<tr>';
                    html += '<td>';
                    html += '</td>';
                    if (pilihan == '') {
                        html += '<td class="col pt-0">';
                        html += '<input type="text" class="form-control mb-1" name="' + name + '"' +
                            required + '>';
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
                                '"id="' + no + j + '"' + required + ' name="' + name +
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
                                'name="' + name + array + '">';
                            html += '</div>';

                            html +=
                                '<div class="col ms-0 ps-0"><div class="input-group input-group-sm mb-1" style="min-width: 100%;width: 3rem">';
                            html += '<input type="text" class="form-control" data-other="other' +
                                k + '" id="otherOpsi' + no + '" for="other1">';
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
                    $('#survey').append(html);
                    i++;
                });
            }
        });

        $('#alumni-submit').submit(function(e) {
            e.preventDefault()

            Swal.fire({
                title: 'Kirim Survey?',
                text: "tidak dapat merubah kembali",
                icon: 'warning',
                showDenyButton: true,
                showCancelButton: false,
                confirmButtonText: 'Kirim',
                denyButtonText: `Batal`,
            }).then((result) => {
                if (result.isConfirmed) {
                    $("#alumni-submit").unbind('submit');
                    $("#alumni-submit").submit();
                    Swal.fire('Sukses', '', 'success')
                } else if (result.isDenied) {
                    Swal.fire('Batal', '', 'info')
                }
            })
        });
    </script>
@elseif (Request::segment(1) == 'survey' && Request::segment(2) == null)
    <script>
        Swal.fire({
            imageUrl: '../images/infoSK.webp',
            imageAlt: 'Surat Rektor',
        })
    </script>
@endif
