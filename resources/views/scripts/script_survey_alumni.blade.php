@if (Request::segment(2) == 'alumni')
    <script>
        // console.log("{{ $karir }}");
        route = "{{ route('survey_alumni', '') }}" + "/" + "{{ $karir }}";
        // // route = route.replace(/ /g, '_');



        $.ajax({
            url: route,
            method: 'get',
            dataType: 'json',
            success: function(data) {

                // nama = $('#nama').val();
                // console.log($('#nama').text());
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
                    // html += '<input type="text" value="' + nama + '">'
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
                        html += '</td>';
                    }
                    html += '<td>';
                    html += '</td>';
                    html += '</tr>';
                    html += '</tbody>';
                    html += '</table">';
                    $('#survey').append(html);
                    // $(window).scrollTo('#tambah');
                });
                // tambahNoUrut = parseInt(no) + 1;
            }
        });
    </script>
@endif
