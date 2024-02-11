<script>
    // $(document).ready(function() {
    // $('#state').select2({
    //     placeholder: 'Select an option'
    // });
    // // });

    // $('#state').select2({
    //     // theme: 'bootstrap-5'
    // });

    // dselect(document.querySelector('#dselect-example'), {
    //     search: true
    // });

    // $(document).ready(function() {
    // $('#state').selectpicker();
    // });


    $('#nama_alumni').select2({
        dropdownParent: $("#lulusanModal"),
        placeholder: "-- Cari Alumni --"
        // allowClear: true
    });
    //     $("#select2insidemodal").select2({
    //     dropdownParent: $("#myModal")
    //   });

    $('div#modal').on('show.bs.modal', function(event) {
        var button = $(event.relatedTarget);
        var modal = $(this);
        modal.find('select').selectpicker();
    });

    $('#nama').keyup(function() {
        $(this).val($(this).val().toUpperCase());
    });
    $('#nim').keyup(function() {
        $(this).val($(this).val().toUpperCase());
    });

    $('#alumni-survey').on('submit', function(e) {
        e.preventDefault();
        routeAlumni = "{{ route('verif_alumni', '') }}" + "/" + $('#nim').val() + "/" + $('#prodi').find(
            ":selected").val();


        $.get(routeAlumni, function(data) {
            if (data.nim == $('#nim').val() && data.nama == $('#nama').val()) {
                $("#alumni-survey").unbind('submit');
                $("#alumni-survey").submit();
            } else {
                Swal.fire({
                    title: 'Data Tidak Ditemukan',
                    text: "NIM/Nama tidak ditemukan",
                    icon: 'error',
                })
            }
        });


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
                                'name="' + name + array + '" >';
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

        // percobaan
        // $("#alumni-submit").submit(function() {
        // var inputValue = $('#otherOpsi' + no).val();
        // var selectedOption = $('input.otherOpsiName' + no + ':checked').val(inputValue);

        // oke pakai for
        // for (var i = 18; i <= 20; i++) {

        //     var inputValue = $('#otherOpsi' + i).val();
        //     var selectedOption = $('input.otherOpsiName' + i + ':checked').val(inputValue);
        //     if (selectedOption) {
        //         alert("Value of otherOpsiName" + i + ": " + selectedOption);
        //     }
        // }

        // var i = 19;

        // while (i <= 41) {
        //     switch (i) {
        //         case 19:
        //             $('input.otherOpsiName' + i + ':checked').val($('#otherOpsi' + i).val());
        //             break;
        //         case 20:
        //             $('input.otherOpsiName' + i + ':checked').val($('#otherOpsi' + i).val());
        //             break;
        //         case 24:
        //             $('input.otherOpsiName' + i + ':checked').val($('#otherOpsi' + i).val());
        //             break;
        //         case 31:
        //             $('input.otherOpsiName' + i + ':checked').val($('#otherOpsi' + i).val());
        //             break;
        //         case 35:
        //             $('input.otherOpsiName' + i + ':checked').val($('#otherOpsi' + i).val());
        //             break;
        //         case 36:
        //             $('input.otherOpsiName' + i + ':checked').val($('#otherOpsi' + i).val());
        //             break;
        //         default:
        //             // Default case if none of the cases match
        //             break;
        //     }
        //     i++;
        // }
        // // oke
        // var totalCount = $('[class*="otherOpsiName"]').length;
        // alert("Total number of elements with class starting with otherOpsiName: " + totalCount);

        // $("#alumni-submit").submit(function() {
        //     var count = $("[class*='otherOpsiName']").length;
        //     alert("Total number of elements with class containing otherOpsiName: " + count);
        // });


        // yang simple
        //     for (var i = 19; i <= 41; i++) {
        //         if (i === 19 || i === 20 || i === 24 || i === 31 || i === 35 || i === 36) {
        //             $('input.otherOpsiName' + i + ':checked').val($('#otherOpsi' + i).val());
        //         }
        //     }




        // });
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
                    for (var i = 19; i <= 41; i++) {
                        if (i === 19 || i === 20 || i === 24 || i === 31 || i === 35 || i === 36) {
                            $('input.otherOpsiName' + i + ':checked').val($('#otherOpsi' + i).val());
                        }
                    }

                    $("#alumni-submit").unbind('submit');
                    $("#alumni-submit").submit();
                    Swal.fire('Sukses', '', 'success')
                } else if (result.isDenied) {
                    Swal.fire('Batal', '', 'info')
                }
            })
        });
    </script>
@elseif (Request::segment(2) == 'lulusan')
    <script>
        // routeLulusan = "{{ route('lulusan2') }}";
        // $.get(routeLulusan, function(data) {
        //     alert(data);
        //     //     // var nama = data.nama_pengguna_lulusan;
        //     //     // $('[name=bank1]').val(nama);
        //     //     // console.log(data.datauser);
        //     //     // console.log(data.datauser);

        // });

        var d_nama_pengguna_lulusan = $('#d_nama_pengguna_lulusan').val();
        var d_jabatan_pengguna_lulusan = $('#d_jabatan_pengguna_lulusan').val();
        var d_instansi = $('#d_instansi').val();
        var d_nama_alumni = $('#d_nama_alumni').val();
        // var t_nama_alumni = d_nama_alumni.indexOf('-');

        // var w_nama_alumni = d_nama_alumni.toLowerCase().split(
        //     ' ');

        // for (var i = 0; i < w_nama_alumni.length; i++) {
        //     w_nama_alumni[i] = w_nama_alumni[i].charAt(0).toUpperCase() + w_nama_alumni[i].substring(1);
        // }

        // var d_nama_alumni = w_nama_alumni.join(' ');

        $('[name=bank1]').val(d_instansi);
        $('[name=bank3]').val(d_nama_pengguna_lulusan);
        $('[name=bank6]').val(d_nama_alumni);
        // $('[name=bank6]').val(d_nama_alumni.substring(t_nama_alumni + 1));





        $('#lulusan-submit').submit(function(e) {
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
                    $("#lulusan-submit").unbind('submit');
                    $("#lulusan-submit").submit();
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
