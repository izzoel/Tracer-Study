@if (Request::segment(2) == 'data')
    <script>
        getData();

        function getData() {
            let route = "{{ route('user_alumni') }}";
            $.get(route, function(data) {
                var html = '';
                html +=
                    '<table class="table table-sm table-striped table-hover table-bordered p-0" style="width: 100%" ';
                html += 'id="tbl_data_alumni">';
                html += '<thead border="1"><tr class="p-0">';
                html += '<th>Nama</th>';
                html += '<th>NIM</th>';
                html += '<th>Prodi</th>';
                html += '<th>Angkatan</th>';
                html += '<th>Periode</th>';
                html += '<th>Tahun Akademik</th>';
                html += '<th>Aksi</th>';
                html += '</tr></thead>';
                html += '<tbody>';


                $.each(data, function(key) {
                    id = data[key].id
                    nama = data[key].nama;
                    nim = data[key].nim;
                    prodi = data[key].prodi;
                    angkatan = data[key].angkatan;
                    periode = data[key].periode;
                    akademik = data[key].tahun_akademik;

                    html += '<tr>';
                    html += '<td>' + nama + '</td>';
                    html += '<td>' + nim + '</td>';
                    html += '<td>' + prodi + '</td>';
                    html += '<td>' + angkatan + '</td>';
                    html += '<td>' + periode + '</td>';
                    html += '<td>' + akademik + '</td>';
                    html += '<td>';

                    html +=
                        '<a class="btn-sm btn-primary bg-secondary me-2" role="button" onclick="destroy(' +
                        id + ')"><i class="fa fa-trash"></i></a>';
                    html +=
                        '<a class="btn-sm btn-primary" role="button" onclick="editUserAlumni(' +
                        id + ')"><i class="fa fa-pencil"></i></a>';


                    html += '</td>'
                    html += '</tr>'

                });

                html += '</tbody>';
                html += '</table>';
                $('#userAlumni').append(html);
                $('#tbl_data_alumni').DataTable({
                    // "lengthChange": false
                    // "dom": 'frtp'
                });
            })

        }

        function addUserAlumni() {
            $('#add_data_alumni').on('hidden.bs.modal', function() {
                $('.dataUserAlumni').html("");
            });

            myModal = new bootstrap.Modal(document.getElementById("add_data_alumni"), {});
            var html = '';

            myModal.show();

            html +=
                '<label for="nama" style="font-size:0.933rem">Nama Lengkap<span class="ms-0 ps-0 me-0 pe-0 text-danger">*</label>';
            html +=
                '<input type="text" class="form-control mb-1" name="nama" id="nama" placeholder="nama lengkap mahasiswa" required>';


            html +=
                '<label for="nim" style="font-size:0.933rem">NIM<span class="ms-0 ps-0 me-0 pe-0 text-danger">*</label>';
            html +=
                '<input type="text" class="form-control mb-1" name="nim" id="nim" placeholder="nomor induk mahasiswa" required>';


            html +=
                '<label for="prodi" style="font-size:0.933rem" class="form-label mb-0"> Program Studi<span class="ms-0 ps-0 me-0 pe-0 text-danger">*</span></label>';
            html += '<select name="prodi" class="form-select mb-1">';

            html +=
                '<option disabled>-- Fakultas Farmasi</option><option value="D3 Farmasi">D3 Farmasi</option><option value="S1 Farmasi">S1 Farmasi</option><option value="Profesi Apoteker">Profesi Apoteker</option><option disabled></option>';

            html +=
                '<option disabled>-- Fakultas Saintek</option><option value="D3 TLM">D3 TLM</option><option value="S1 ARS">S1 ARS</option><option value="S1 Ilmu Gizi">S1 Ilmu Gizi</option><option disabled></option>';
            html +=
                '<option disabled>-- Fakultas Soshum</option><option value="S1 Ilmu Hukum">S1 Ilmu Hukum</option><option value="S1 Manajemen">S1 Manajemen</option><option value="S1 PGSD">S1 PGSD</option>';
            html += '</select>';


            html +=
                '<label for="angkatan" style="font-size:0.933rem">Angkatan<span class="ms-0 ps-0 me-0 pe-0 text-danger">*</label>';
            html +=
                '<input class="datepicker form-control mb-0 rounded" name="angkatan" id="angkatan" placeholder="tahun angkatan" required />';

            html +=
                '<label for="periode" style="font-size:0.933rem">Periode<span class="ms-0 ps-0 me-0 pe-0 text-danger">*</label>';
            html +=
                '<input type="text" class="form-control mb-0" name="periode" id="periode" placeholder="2023/2024 Genap" required>';

            html +=
                '<label for="tahun_akademik" style="font-size:0.933rem" class="form-label mb-0">Tahun Akademik<span class="ms-0 ps-0 me-0 pe-0 text-danger">*</span></label>';
            html += '<select name="tahun_akademik" id="tahun_akademik" class="form-select mb-1">';
            html +=
                '<option value="Genap" selected>Genap</option><option value="Ganjil">Ganjil</option>';

            $('.dataUserAlumni').append(html);
            $(".datepicker").datepicker({
                format: 'yyyy',
                viewMode: 'years',
                minViewMode: 'years'
            });

            $('#nama').keyup(function() {
                $(this).val($(this).val().toUpperCase());
            });
            $('#nim').keyup(function() {
                $(this).val($(this).val().toUpperCase());
            });

            $('#save').show();
            $('#import').hide();
            $('#template').hide();
            var mode = $('#input_data_user_alumni').val();
            $('#input_data_user_alumni').on("click", function() {
                $('.dataUserAlumni').html("");
                var html = '';
                html +=
                    '<label for="nama" style="font-size:0.933rem">Nama Lengkap<span class="ms-0 ps-0 me-0 pe-0 text-danger">*</label>';
                html +=
                    '<input type="text" class="form-control mb-1" name="nama" id="nama" placeholder="nama lengkap mahasiswa" required>';


                html +=
                    '<label for="nim" style="font-size:0.933rem">NIM<span class="ms-0 ps-0 me-0 pe-0 text-danger">*</label>';
                html +=
                    '<input type="text" class="form-control mb-1" name="nim" id="nim" placeholder="nomor induk mahasiswa" required>';


                html +=
                    '<label for="prodi" style="font-size:0.933rem" class="form-label mb-0"> Program Studi<span class="ms-0 ps-0 me-0 pe-0 text-danger">*</span></label>';
                html += '<select name="prodi" id="prodi" class="form-select mb-1">';

                html +=
                    '<option disabled>-- Fakultas Farmasi</option><option value="D3 Farmasi">D3 Farmasi</option><option value="S1 Farmasi">S1 Farmasi</option><option value="Profesi Apoteker">Profesi Apoteker</option><option disabled></option>';

                html +=
                    '<option disabled>-- Fakultas Saintek</option><option value="D3 TLM">D3 TLM</option><option value="S1 ARS">S1 ARS</option><option value="S1 Ilmu Gizi">S1 Ilmu Gizi</option><option disabled></option>';
                html +=
                    '<option disabled>-- Fakultas Soshum</option><option value="S1 Ilmu Hukum">S1 Ilmu Hukum</option><option value="S1 Manajemen">S1 Manajemen</option><option value="S1 PGSD">S1 PGSD</option>';
                html += '</select>';


                html +=
                    '<label for="angkatan" style="font-size:0.933rem">Angkatan<span class="ms-0 ps-0 me-0 pe-0 text-danger">*</label>';
                html +=
                    '<input class="datepicker2 form-control mb-0 rounded" name="angkatan" id="angkatan" placeholder="tahun angkatan" required />';

                html +=
                    '<label for="periode" style="font-size:0.933rem">Periode<span class="ms-0 ps-0 me-0 pe-0 text-danger">*</label>';
                html +=
                    '<input type="text" class="form-control mb-0" name="periode" id="periode" placeholder="2023/2024 Genap" required>';

                html +=
                    '<label for="tahun_akademik" style="font-size:0.933rem" class="form-label mb-0">Tahun Akademik<span class="ms-0 ps-0 me-0 pe-0 text-danger">*</span></label>';
                html += '<select name="tahun_akademik" id="tahun_akademik" class="form-select mb-1">';
                html +=
                    '<option value="Genap">Genap</option><option value="Ganjil">Ganjil</option>';


                $('.dataUserAlumni').append(html);
                $(".datepicker2").datepicker({
                    format: 'yyyy',
                    viewMode: 'years',
                    minViewMode: 'years'
                });

                $('#nama').keyup(function() {
                    $(this).val($(this).val().toUpperCase());
                });
                $('#nim').keyup(function() {
                    $(this).val($(this).val().toUpperCase());
                });

                $('#save').show();
                $('#import').hide();
                $('#template').hide();

                mode = $('#input_data_user_alumni').val();
            })

            $('#import_data_user_alumni').on("click", function() {
                $('.dataUserAlumni').html("");

                var html = '';
                html +=
                    '<label for="formFile" class="form-label mb-0" style="font-size:0.933rem">Import File (.xlsx .xls)</label>';
                html +=
                    '<input class="form-control mb-2" type="file" name="formFile" id="formFile" accept=".xlsx, .xls">';

                $('.dataUserAlumni').append(html);
                $('#import').show();
                $('#template').show();
                $('#save').hide();


            })
        }

        function editUserAlumni(id) {
            $('#edit_data_alumni').on('hidden.bs.modal', function() {
                $('.editUserAlumni').html("");
            });
            editModal = new bootstrap.Modal(document.getElementById("edit_data_alumni"), {});
            var route = "{{ route('edit_user_alumni', '') }}" + "/" + id;
            editModal.show();

            $.get(route, function(data) {
                var html = '';
                let id = data.id;
                let nama = data.nama;
                let nim = data.nim;
                let prodi = data.prodi;
                let angkatan = data.angkatan;
                let periode = data.periode;

                html +=
                    '<label for="nama" style="font-size:0.933rem">Nama Lengkap<span class="ms-0 ps-0 me-0 pe-0 text-danger">*</label>';
                html +=
                    '<input type="text" class="form-control mb-1" name="nama" id="nama" placeholder="nama lengkap mahasiswa" required value="' +
                    nama + '">';


                html +=
                    '<label for="nim" style="font-size:0.933rem">NIM<span class="ms-0 ps-0 me-0 pe-0 text-danger">*</label>';
                html +=
                    '<input type="text" class="form-control mb-1" name="nim" id="nim" placeholder="nomor induk mahasiswa" value="' +
                    nim + '" required>';


                html +=
                    '<label for="prodi" style="font-size:0.933rem" class="form-label mb-0"> Program Studi<span class="ms-0 ps-0 me-0 pe-0 text-danger">*</span></label>';
                html += '<select id="prodi" name="prodi" class="form-select mb-1">';

                html +=
                    '<option disabled>-- Fakultas Farmasi</option><option value="D3 Farmasi">D3 Farmasi</option><option value="S1 Farmasi">S1 Farmasi</option><option value="Profesi Apoteker">Profesi Apoteker</option><option disabled></option>';

                html +=
                    '<option disabled>-- Fakultas Saintek</option><option value="D3 TLM">D3 TLM</option><option value="S1 ARS">S1 ARS</option><option value="S1 Ilmu Gizi">S1 Ilmu Gizi</option><option disabled></option>';
                html +=
                    '<option disabled>-- Fakultas Soshum</option><option value="S1 Ilmu Hukum">S1 Ilmu Hukum</option><option value="S1 Manajemen">S1 Manajemen</option><option value="S1 PGSD">S1 PGSD</option>';
                html += '</select>';


                html +=
                    '<label for="angkatan" style="font-size:0.933rem">Angkatan<span class="ms-0 ps-0 me-0 pe-0 text-danger">*</label>';
                html +=
                    '<input class="datepicker2 form-control rounded" name="angkatan" id="angkatan" placeholder="tahun angkatan" value="' +
                    angkatan + '" required />';

                html +=
                    '<input type="hidden"  name="id" id="id" value="' +
                    id + '">'


                $('.editUserAlumni').append(html);
                $(".datepicker2").datepicker({
                    format: 'yyyy',
                    viewMode: 'years',
                    minViewMode: 'years'
                });
                $('#prodi').val(prodi).change();

            });
        }

        function submitFile() {
            $('form#userTambah').submit();
        }

        function ajaxTambah() {
            $.ajaxSetup({
                headers: {
                    'X-CSRF-TOKEN': $('meta[name="_token"]').attr('content')
                }
            });

            let token = $("meta[name='_token']").attr("content");
            let nama = $("#nama").val();
            let nim = $("#nim").val();
            let prodi = $('select[name=prodi] option').filter(':selected').val()
            let angkatan = $("#angkatan").val();
            let periode = $("#periode").val();
            let tahun_akademik = $('select[name=tahun_akademik] option').filter(':selected').val()
            let route = "{{ route('add_user_alumni') }}";

            data = {
                _token: token,
                nama: nama,
                nim: nim,
                prodi: prodi,
                angkatan: angkatan,
                periode: periode,
                tahun_akademik: tahun_akademik
            };

            $.ajax({
                url: route,
                method: 'post',
                data: data,
                success: function(data) {
                    $('#userAlumni').empty();
                    getData();
                },
                error: function(data) {
                    console.log(data);

                    alert('gagal');
                },
            });
            myModal.hide();
        }

        function ajaxUpdate() {
            $.ajaxSetup({
                headers: {
                    'X-CSRF-TOKEN': $('meta[name="_token"]').attr('content')
                }
            });

            let token = $("meta[name='_token']").attr("content");
            let id = $("#id").val();
            let nama = $("#nama").val();
            let nim = $("#nim").val();
            let prodi = $('select[name=prodi] option').filter(':selected').val()
            let angkatan = $("#angkatan").val();
            let periode = $("#periode").val();
            let route = "{{ route('update_user_alumni', '') }}" + "/" + id;

            data = {
                _token: token,
                nama: nama,
                nim: nim,
                prodi: prodi,
                angkatan: angkatan,
                periode: periode
            };

            $.post(route, data, function(data) {
                $('#userAlumni').empty();
                getData();
            });
        }

        function destroy(id) {
            let route = "{{ route('destroy_user_alumni', '') }}" + "/" +
                id;

            $.get(route, function(data) {
                $('#userAlumni').empty();
                getData();
            });
        }
    </script>
@endif
