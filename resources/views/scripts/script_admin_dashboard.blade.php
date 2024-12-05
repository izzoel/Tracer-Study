<script>
    routeAlumni = "{{ route('statistik_alumni') }}";

    $.get(routeAlumni, function(data) {
        // console.log(data);
        new Chart(document.getElementById('dashboardChart'), {
            type: 'bar',
            data: {
                datasets: [{
                    label: 'Jumlah Responden Alumni',
                    data: data.responden_alumni,
                    borderWidth: 1,
                    order: 0
                }, {
                    label: 'Jumlah Responden Pengguna Lulusan',
                    data: data.responden_lulusan,
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
                        text: 'Total Responden Tracer Study'
                    }
                }
            },
        });
    });

    // alert($('.sub-nav.active #tab-title').text());

    if ($('.sub-nav.active #tab-title').text() == 'D3 Farmasi') {
        prodi = $('.sub-nav.active #tab-title').text();
        routeProdi = "{{ route('statistik_prodi', '') }}" + "/" + prodi;
        routeKategori = "{{ route('diagram', '') }}" + "/kategori/" + prodi;
        routeTempatKerja = "{{ route('diagram', '') }}" + "/tempat_kerja/" + prodi;
        routeInformasiLowongan = "{{ route('diagram', '') }}" + "/informasi_lowongan/" + prodi;

        routeMasaTungguPekerjaan = "{{ route('diagram', '') }}" + "/masa_tunggu_pekerjaan/" + prodi;
        routeRelevansiPekerjaan = "{{ route('diagram', '') }}" + "/relevansi_pekerjaan/" + prodi;
        routeKegiatanYangBelumBekerja = "{{ route('diagram', '') }}" + "/kegiatan_belum_bekerja/" + prodi;

        // alert(routeRelevansiPekerjaan);
        $.get(routeProdi, function(data) {
            resp_prodi = '#' + prodi.replace(/\s/g, '');
            canv_prodi = prodi.replace(/\s/g, '');

            $(resp_prodi + 'Stat').html("")
            var html = '';

            html += 'Total Alumni ' + prodi + ':<br>';

            $.each(data, function(angkatan, val) {
                html += angkatan + ' = ' + val + ' Alumni<br/>';
            });

            html += '<button href class="btn-sm btn-primary" onclick="download()">.png</button>';
            $(resp_prodi + 'Stat').append(html);

            new Chart($(resp_prodi), {
                type: 'line',
                data: {
                    datasets: [{
                        label: '# Genap',
                        data: data.angkatan,
                        borderWidth: 1
                    }, {
                        label: '# Ganjil',
                        data: data.angkatan_mengisi,
                        borderWidth: 1
                    }]
                },
                options: {
                    responsive: true,
                    maintainAspectRatio: false,
                    scales: {
                        y: {
                            beginAtZero: true
                        }
                    }
                }
            });


            $.get(routeKategori, function(dataKategori) {
                diagKegiatanSetelahLulus(dataKategori, prodi);
            });
            $.get(routeTempatKerja, function(dataTempatKerja) {
                diagTempatKerja(dataTempatKerja, prodi);
            });
            $.get(routeInformasiLowongan, function(dataInformasiLowonganPekerjaan) {
                diagInformasiLowonganPekerjaan(dataInformasiLowonganPekerjaan);
            });




        });
    }


    if ($('.sub-nav.active #L-tab-title').text() == "D3 Farmasi") {
        prodiLulusan = $('.sub-nav.active #L-tab-title').text();

        routeLulusan = "{{ route('statistik_lulusan', '') }}/" + prodiLulusan;
        routeAspekIntegritas = "{{ route('diagram', '') }}" + "/aspek_integritas/" + prodiLulusan;
        routeAspekProfesionalisme = "{{ route('diagram', '') }}" + "/aspek_profesionalisme/" +
            prodiLulusan;
        routeAspekBerbahasaAsing = "{{ route('diagram', '') }}" + "/aspek_berbahasa_asing/" + prodiLulusan;
        routeAspekPenggunaanTeknologi = "{{ route('diagram', '') }}" +
            "/aspek_penggunaan_teknologi/" + prodiLulusan;
        routeAspekKomunikasi = "{{ route('diagram', '') }}" + "/aspek_komunikasi/" + prodiLulusan;
        routeAspekKerjasama = "{{ route('diagram', '') }}" + "/aspek_kerjasama/" + prodiLulusan;
        routeAspekPengembanganDiri = "{{ route('diagram', '') }}" + "/aspek_pengembangan_diri/" +
            prodiLulusan;



        $.get(routeLulusan, function(data) {
            canv_prodi_lulusan = prodiLulusan.replace(/\s/g, '');
            $.get(routeAspekIntegritas, function(dataAspekIntegritas) {

                diagAspekIntegritas(dataAspekIntegritas, canv_prodi_lulusan)
            });
            $.get(routeAspekProfesionalisme, function(dataAspekProfesionalisme) {
                diagAspekProfesionalisme(dataAspekProfesionalisme, canv_prodi_lulusan);
            });
            $.get(routeAspekBerbahasaAsing, function(dataAspekBerbahasaAsing) {
                diagAspekBerbahasaAsing(dataAspekBerbahasaAsing, canv_prodi_lulusan);
            });
            $.get(routeAspekPenggunaanTeknologi, function(dataAspekPenggunaanTeknologi) {
                diagAspekPenggunaanTeknologi(dataAspekPenggunaanTeknologi,
                    canv_prodi_lulusan);
            });
            $.get(routeAspekKomunikasi, function(dataAspekKomunikasi) {
                diagAspekKomunikasi(dataAspekKomunikasi, canv_prodi_lulusan);
            });
            $.get(routeAspekKerjasama, function(dataAspekKerjasama) {
                diagAspekKerjasama(dataAspekKerjasama, canv_prodi_lulusan);
            });
            $.get(routeAspekPengembanganDiri, function(dataAspekPengembanganDiri) {
                diagAspekPengembanganDiri(dataAspekPengembanganDiri, canv_prodi_lulusan);
            });
        })
    }


    if ($('.nav-link.active #tab-title-fakultas').text() == "Fakultas Farmasi") {
        statistikProdi();
    }

    if ($('.nav-link.active #L-tab-title-fakultas').text() == "Fakultas Farmasi") {
        lStatistikProdi();

    }

    $('.main-nav.nav-link[role="tab"]').on("click", function() {
        $('.sub-nav.nav-link.active').removeClass('active');
        statistikProdi();
        lStatistikProdi();
    });



    function statistikProdi() {
        $('.sub-nav.nav-link[role="tab"]').on("click", function() {

            prodi = $('.sub-nav.active #tab-title').text();

            routeProdi = "{{ route('statistik_prodi', '') }}/" + prodi;
            routeKategori =
                "{{ route('diagram', '') }}" + "/kategori/" + prodi;
            routeTempatKerja =
                "{{ route('diagram', '') }}" + "/tempat_kerja/" + prodi;
            routeInformasiLowongan =
                "{{ route('diagram', '') }}" + "/informasi_lowongan/" + prodi;

            routeMasaTungguPekerjaan = "{{ route('diagram', '') }}" +
                "/masa_tunggu_pekerjaan";
            routeRelevansiPekerjaan = "{{ route('diagram', '') }}" +
                "/relevansi_pekerjaan";
            routeKegiatanYangBelumBekerja = "{{ route('diagram', '') }}" +
                "/kegiatan_belum_bekerja";
            $.get(routeProdi, function(data) {

                resp_prodi = '#' + prodi.replace(/\s/g, '');
                canv_prodi = prodi.replace(/\s/g, '');

                $(resp_prodi + 'Stat').html("")
                var html = '';

                html += 'Total Alumni ' + prodi + ':<br>';

                $.each(data, function(angkatan, val) {
                    html += angkatan + ' = ' + val + ' Alumni<br/>';
                });

                html += '<button href class="btn-sm btn-primary" onclick="download()">.png</button>';
                $(resp_prodi + 'Stat').append(html);

                new Chart($(resp_prodi), {
                    type: 'line',
                    data: {
                        datasets: [{
                            label: '# Genap',
                            data: data.angkatan,
                            borderWidth: 1
                        }, {
                            label: '# Ganjil',
                            data: data.angkatan_mengisi,
                            borderWidth: 1
                        }]
                    },
                    options: {
                        responsive: true,
                        maintainAspectRatio: false,
                        scales: {
                            y: {
                                beginAtZero: true
                            }
                        }
                    }
                });


                $.get(routeKategori, function(dataKategori) {
                    diagKegiatanSetelahLulus(dataKategori);
                });
                $.get(routeTempatKerja, function(dataTempatKerja) {
                    diagTempatKerja(dataTempatKerja);
                });
                $.get(routeInformasiLowongan, function(dataInformasiLowonganPekerjaan) {
                    diagInformasiLowonganPekerjaan(dataInformasiLowonganPekerjaan);
                });
            });
        });



        $.get(routeMasaTungguPekerjaan, function(dataMasaTungguDapatPekerjaan) {
            diagMasaTungguDapatPekerjaan(dataMasaTungguDapatPekerjaan);
        });
        $.get(routeRelevansiPekerjaan, function(dataRelevansiPekerjaan) {
            diagRelevansiPekerjaan(dataRelevansiPekerjaan);
        });
        $.get(routeKegiatanYangBelumBekerja, function(dataKegiatanYangBelumBekerja) {
            diagKegiatanYangBelumBekerja(dataKegiatanYangBelumBekerja);
        });
    }

    function lStatistikProdi() {

        $('.sub-nav.nav-link[role="tab"]').on("click", function() {
            prodiLulusan = $('.sub-nav.active #L-tab-title').text();

            routeLulusan = "{{ route('statistik_lulusan', '') }}/" + prodiLulusan;
            routeAspekIntegritas = "{{ route('diagram', '') }}" + "/aspek_integritas/" + prodiLulusan;
            routeAspekProfesionalisme = "{{ route('diagram', '') }}" + "/aspek_profesionalisme/" +
                prodiLulusan;
            routeAspekBerbahasaAsing = "{{ route('diagram', '') }}" + "/aspek_berbahasa_asing/" + prodiLulusan;
            routeAspekPenggunaanTeknologi = "{{ route('diagram', '') }}" +
                "/aspek_penggunaan_teknologi/" + prodiLulusan;
            routeAspekKomunikasi = "{{ route('diagram', '') }}" + "/aspek_komunikasi/" + prodiLulusan;
            routeAspekKerjasama = "{{ route('diagram', '') }}" + "/aspek_kerjasama/" + prodiLulusan;
            routeAspekPengembanganDiri = "{{ route('diagram', '') }}" + "/aspek_pengembangan_diri/" +
                prodiLulusan;
            // alert(routeAspekBerbahasaAsing);
            $.get(routeLulusan, function(data) {
                canv_prodi_lulusan = prodiLulusan.replace(/\s/g, '');
                $.get(routeAspekIntegritas, function(dataAspekIntegritas) {

                    diagAspekIntegritas(dataAspekIntegritas, canv_prodi_lulusan)
                });
                $.get(routeAspekProfesionalisme, function(dataAspekProfesionalisme) {
                    diagAspekProfesionalisme(dataAspekProfesionalisme, canv_prodi_lulusan);
                });
                $.get(routeAspekBerbahasaAsing, function(dataAspekBerbahasaAsing) {
                    diagAspekBerbahasaAsing(dataAspekBerbahasaAsing, canv_prodi_lulusan);
                });
                $.get(routeAspekPenggunaanTeknologi, function(dataAspekPenggunaanTeknologi) {
                    diagAspekPenggunaanTeknologi(dataAspekPenggunaanTeknologi,
                        canv_prodi_lulusan);
                });
                $.get(routeAspekKomunikasi, function(dataAspekKomunikasi) {
                    diagAspekKomunikasi(dataAspekKomunikasi, canv_prodi_lulusan);
                });
                $.get(routeAspekKerjasama, function(dataAspekKerjasama) {
                    diagAspekKerjasama(dataAspekKerjasama, canv_prodi_lulusan);
                });
                $.get(routeAspekPengembanganDiri, function(dataAspekPengembanganDiri) {
                    diagAspekPengembanganDiri(dataAspekPengembanganDiri, canv_prodi_lulusan);
                });
            })
        });
    }



    function diagKegiatanSetelahLulus(dataKategori) {

        new Chart($('#kegiatanSetelahLulus' + canv_prodi), {
            type: 'pie',
            data: {
                labels: dataKategori.kategori,
                datasets: [{
                    label: ' Alumni ' + prodi,
                    data: dataKategori.count_kategori,
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
                        text: 'Kegiatan Setelah Lulus (' + prodi + ')'
                    }
                }
            },
        });

    }

    function diagTempatKerja(dataTempatKerja) {
        new Chart($('#tempatKerja' + canv_prodi), {
            type: 'pie',
            data: {
                labels: dataTempatKerja.tempat_kerja,
                datasets: [{
                    label: ' Alumni ' + prodi,
                    data: dataTempatKerja.count_tempat_kerja,
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
                        text: 'Tempat Kerja (' + prodi + ')'
                    }
                }
            },
        });
    }

    function diagInformasiLowonganPekerjaan(dataInformasiLowonganPekerjaan) {
        new Chart($('#informasiLowonganPekerjaan' + canv_prodi), {
            type: 'pie',
            data: {
                labels: dataInformasiLowonganPekerjaan
                    .informasi_lowongan_pekerjaan,
                datasets: [{
                    label: prodi,
                    data: dataInformasiLowonganPekerjaan
                        .count_informasi_lowongan_pekerjaan,
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
                        text: 'Informasi Lowongan Pekerjaan'
                    }
                }
            },
        });
    }

    function diagMasaTungguDapatPekerjaan(dataMasaTungguDapatPekerjaan) {
        new Chart($('#masaTungguDapatPekerjaan'), {
            type: 'pie',
            data: {
                labels: dataMasaTungguDapatPekerjaan.masa_tunggu_pekerjaan,
                datasets: [{
                    label: 'Jumlah Responden',
                    data: dataMasaTungguDapatPekerjaan.count_masa_tunggu_pekerjaan,
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
                        text: 'Masa Tunggu Mendapat Pekerjaan'
                    }
                }
            },
        });
    }

    function diagRelevansiPekerjaan(dataRelevansiPekerjaan) {
        new Chart($('#relevansiPekerjaan'), {
            type: 'pie',
            data: {
                labels: dataRelevansiPekerjaan.relevansi_pekerjaan,
                datasets: [{
                    label: 'Jumlah Responden',
                    data: dataRelevansiPekerjaan.count_relevansi_pekerjaan,
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
                        text: 'Relevansi Pekerjaan'
                    }
                }
            },
        });
    }

    function diagKegiatanYangBelumBekerja(dataKegiatanYangBelumBekerja) {
        new Chart($('#kegiatanYangBelumBekerja'), {
            type: 'pie',
            data: {
                labels: dataKegiatanYangBelumBekerja.kegiatan_belum_bekerja,
                datasets: [{
                    label: 'Jumlah Responden',
                    data: dataKegiatanYangBelumBekerja.count_kegiatan_belum_bekerja,
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
                        text: 'Kegiatan Yang Belum Bekerja'
                    }
                }
            },
        });
    }

    function diagAspekIntegritas(dataAspekIntegritas, lulusan) {

        new Chart($('#aspekIntegritas' + lulusan), {
            type: 'pie',
            data: {
                labels: dataAspekIntegritas.aspek_integritas,
                datasets: [{
                    label: 'Jumlah Penilaian',
                    data: dataAspekIntegritas.count_aspek_integritas,
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
                        text: 'Aspek Integritas'
                    }
                }
            },
        });

    }

    function diagAspekProfesionalisme(dataAspekProfesionalisme, lulusan) {
        new Chart($('#aspekProfesionalisme' + lulusan), {
            type: 'pie',
            data: {
                labels: dataAspekProfesionalisme.aspek_profesionalisme,
                datasets: [{
                    label: 'Jumlah Penilaian',
                    data: dataAspekProfesionalisme.count_aspek_profesionalisme,
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
                        text: 'Aspek Profesionalisme'
                    }
                }
            },
        });
    }

    function diagAspekBerbahasaAsing(dataAspekBerbahasaAsing, lulusan) {
        new Chart($('#aspekBerbahasaAsing' + lulusan), {
            type: 'pie',
            data: {
                labels: dataAspekBerbahasaAsing.aspek_berbahasa_asing,
                datasets: [{
                    label: 'Jumlah Penilaian',
                    data: dataAspekBerbahasaAsing.count_aspek_berbahasa_asing,
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
                        text: 'Aspek Kemampuan Berbahasa Asing'
                    }
                }
            },
        });
    }

    function diagAspekPenggunaanTeknologi(dataAspekPenggunaanTeknologi, lulusan) {
        new Chart($('#aspekPenggunaanTeknologi' + lulusan), {
            type: 'pie',
            data: {
                labels: dataAspekPenggunaanTeknologi.aspek_penggunaan_teknologi,
                datasets: [{
                    label: 'Jumlah Penilaian',
                    data: dataAspekPenggunaanTeknologi.count_aspek_penggunaan_teknologi,
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
                        text: 'Aspek Penggunaan Teknologi'
                    }
                }
            },
        });
    }

    function diagAspekKomunikasi(dataAspekKomunikasi, lulusan) {
        new Chart($('#aspekKomunikasi' + lulusan), {
            type: 'pie',
            data: {
                labels: dataAspekKomunikasi.aspek_komunikasi,
                datasets: [{
                    label: 'Jumlah Penilaian',
                    data: dataAspekKomunikasi.count_aspek_komunikasi,
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
                        text: 'Aspek Komunikasi'
                    }
                }
            },
        });
    }

    function diagAspekKerjasama(dataAspekKerjasama, lulusan) {
        new Chart($('#aspekKerjasama' + lulusan), {
            type: 'pie',
            data: {
                labels: dataAspekKerjasama.aspek_kerjasama,
                datasets: [{
                    label: 'Jumlah Penilaian',
                    data: dataAspekKerjasama.count_aspek_kerjasama,
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
                        text: 'Aspek Kerjasama'
                    }
                }
            },
        });
    }

    function diagAspekPengembanganDiri(dataAspekPengembanganDiri, lulusan) {
        new Chart($('#aspekPengembanganDiri' + lulusan), {
            type: 'pie',
            data: {
                labels: dataAspekPengembanganDiri.aspek_pengembangan_diri,
                datasets: [{
                    label: 'Jumlah Penilaian',
                    data: dataAspekPengembanganDiri.count_aspek_pengembangan_diri,
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
                        text: 'Aspek Pengembangan Diri'
                    }
                }
            },
        });
    }

    function download() {
        const imagelLink = document.createElement('a');
        const canvas = document.getElementById('respondenProdiD3Farmasi');
        imagelLink.download = 'responden_Prodi_D3_Farmasi';
        imagelLink.href = canvas.toDataURL('image/png', 1);
        imagelLink.click();
    }


    // ############### Datatables
    $('#angkatanFilter').on('change', function() {
        var val = $.fn.dataTable.util.escapeRegex($(this).val());
        tableAlumni.column(2).search(val ? '^' + val + '$' : '', true, false).draw();
    });

    var tableAlumni = $('#tbl_alumni').DataTable({
        responsive: true,
        dom: 'B<"row "<"col-sm-12 col-md-6"><"col-sm-12 col-md-6 d-flex flex-row-reverse"f>>t<"row "<"col-sm-12 col-md-6"i><"col-sm-12 col-md-6 d-flex flex-row-reverse"p>>',
        language: {
            info: "Showing _START_ to _END_ of _TOTAL_ entries",
            infoEmpty: "Tidak ada data",
            infoFiltered: "(filtered from _MAX_ total entries)",
            lengthMenu: "Show _MENU_ entries",
            search: "Cari:",
            zeroRecords: "Data tidak ditemukan",
        },
        buttons: [{
            extend: 'pdfHtml5',
            text: 'PDF',
        }, {
            extend: 'excelHtml5',
            text: 'Excel',
        }, 'colvis'],
        initComplete: function() {
            var columnAngkatan = this.api().column(2);
            columnAngkatan.data().unique().sort().each(function(d, j) {
                $('#angkatanFilter').append('<option value="' + d + '">' + d + '</option>');
            });

            $('#angkatanFilter').on('change', function() {
                var selectedValue = $(this).val();

                if (selectedValue === "all") {
                    columnAngkatan.search('').draw();
                } else {
                    columnAngkatan.search('^' + selectedValue + '$', true, false).draw();
                }
            });
        },
    });


    var tableLulusan = $('#tbl_pengguna_lulusan').DataTable({
        responsive: true,
        dom: 'B<"row "<"col-sm-12 col-md-6"><"col-sm-12 col-md-6 d-flex flex-row-reverse"f>>t<"row "<"col-sm-12 col-md-6"i><"col-sm-12 col-md-6 d-flex flex-row-reverse"p>>',
        language: {
            info: "Showing _START_ to _END_ of _TOTAL_ entries",
            infoEmpty: "Tidak ada data",
            infoFiltered: "(filtered from _MAX_ total entries)",
            lengthMenu: "Show _MENU_ entries",
            search: "Cari:",
            zeroRecords: "Data tidak ditemukan",
        },
        buttons: [{
            extend: 'pdfHtml5',
            text: 'PDF',
        }, {
            extend: 'excelHtml5',
            text: 'Excel',
        }, 'colvis'],
    });
    $('#tbl_alumni2').DataTable({});

    $('select[name="tbl_alumni_length"]').css('width', '100%');
    $('select[name="tbl_alumni2_length"]').css(
        'width', '100%');

    $('input[type="search"]').css({
        'padding': '0',
        'margin-bottom': '0'
    });
</script>
