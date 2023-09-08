<script>
    routeAlumni = "{{ route('statistik_alumni') }}";

    $.get(routeAlumni, function(data) {
        new Chart(document.getElementById('dashboardChart'), {
            type: 'bar',
            data: {
                datasets: [{
                    label: 'Jumlah Responden Alumni',
                    data: data,
                    borderWidth: 1,
                    order: 0
                }, {
                    label: 'Jumlah Responden Pengguna Lulusan',
                    data: [0],
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


    if ($('.sub-nav.active #tab-title').text() == "D3 Farmasi") {
        prodi = $('.sub-nav.active #tab-title').text();

        routeProdi = "{{ route('statistik_prodi', '') }}" + "/" + prodi;
        routeKategori = "{{ route('diagram', '') }}" + "/kategori/" + prodi;
        routeTempatKerja = "{{ route('diagram', '') }}" + "/tempat_kerja/" + prodi;
        routeInformasiLowongan = "{{ route('diagram', '') }}" + "/informasi_lowongan/" + prodi;

        routeMasaTungguPekerjaan = "{{ route('diagram', '') }}" + "/masa_tunggu_pekerjaan/" + prodi;
        routeRelevansiPekerjaan = "{{ route('diagram', '') }}" + "/relevansi_pekerjaan/" + prodi;
        routeKegiatanYangBelumBekerja = "{{ route('diagram', '') }}" + "/kegiatan_belum_bekerja/" + prodi;

        $.get(routeProdi, function(data) {
            resp_prodi = '#' + prodi.replace(/\s/g, '');

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
                        label: '# Alumni ' + prodi,
                        data: data.angkatan,
                        borderWidth: 1
                    }, {
                        label: '# Alumni ' + prodi + ' Yang Mengisi',
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

    if ($('.nav-link.active #tab-title-fakultas').text() == "Fakultas Farmasi") {
        statistikProdi();
    }

    $('.main-nav.nav-link[role="tab"]').on("click", function() {
        $('.sub-nav.nav-link.active').removeClass('active');
        statistikProdi();
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
                            label: '# Alumni ' + prodi,
                            data: data.angkatan,
                            borderWidth: 1
                        }, {
                            label: '# Alumni ' + prodi + ' Yang Mengisi',
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
                                    display: false,
                                    text: 'Kegiatan Setelah Lulus (Kategori?) ALL'
                                }
                            }
                        },
                    });
                    // diagKegiatanSetelahLulus(dataKategori, prodi);
                });
                $.get(routeTempatKerja, function(dataTempatKerja) {
                    new Chart($('#tempatKerja' + canv_prodi), {
                        type: 'pie',
                        data: {
                            labels: dataTempatKerja.tempat_kerja,
                            datasets: [{
                                label: 'Jumlah Responden',
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
                                    text: 'Tempat Kerja (' + prodi +
                                        ') (BUMN?Swasta?) kategori SB WH'
                                }
                            }
                        },
                    });
                    // diagTempatKerja(dataTempatKerja, prodi);
                });
                $.get(routeInformasiLowongan, function(dataInformasiLowonganPekerjaan) {
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
                                    text: 'Informasi Lowongan Pekerjaan SB WH'
                                }
                            }
                        },
                    });
                    // diagInformasiLowonganPekerjaan(dataInformasiLowonganPekerjaan);
                });




            });
        });

        routeAspekIntegritas = "{{ route('diagram', '') }}" + "/aspek_integritas/lulusan";
        routeAspekProfesionalisme = "{{ route('diagram', '') }}" + "/aspek_profesionalisme/lulusan";
        routeAspekBerbahasaAsing = "{{ route('diagram', '') }}" + "/aspek_berbahasa_asing/lulusan";
        routeAspekPenggunaanTeknologi = "{{ route('diagram', '') }}" + "/aspek_penggunaan_teknologi/lulusan";
        routeAspekKomunikasi = "{{ route('diagram', '') }}" + "/aspek_komunikasi/lulusan";
        routeAspekKerjasama = "{{ route('diagram', '') }}" + "/aspek_kerjasama/lulusan";
        routeAspekPengembanganDiri = "{{ route('diagram', '') }}" + "/aspek_pengembangan_diri/lulusan";

        $.get(routeMasaTungguPekerjaan, function(dataMasaTungguDapatPekerjaan) {
            diagMasaTungguDapatPekerjaan(dataMasaTungguDapatPekerjaan);
        });
        $.get(routeRelevansiPekerjaan, function(dataRelevansiPekerjaan) {
            diagRelevansiPekerjaan(dataRelevansiPekerjaan);
        });
        $.get(routeKegiatanYangBelumBekerja, function(dataKegiatanYangBelumBekerja) {
            diagKegiatanYangBelumBekerja(dataKegiatanYangBelumBekerja);
        });

        $.get(routeAspekIntegritas, function(dataAspekIntegritas) {
            diagAspekIntegritas(dataAspekIntegritas);
        });
        $.get(routeAspekProfesionalisme, function(dataAspekProfesionalisme) {
            diagAspekProfesionalisme(dataAspekProfesionalisme);
        });
        $.get(routeAspekBerbahasaAsing, function(dataAspekBerbahasaAsing) {
            diagAspekBerbahasaAsing(dataAspekBerbahasaAsing);
        });
        $.get(routeAspekPenggunaanTeknologi, function(dataAspekPenggunaanTeknologi) {
            diagAspekPenggunaanTeknologi(dataAspekPenggunaanTeknologi);
        });
        $.get(routeAspekKomunikasi, function(dataAspekKomunikasi) {
            diagAspekKomunikasi(dataAspekKomunikasi);
        });
        $.get(routeAspekKerjasama, function(dataAspekKerjasama) {
            diagAspekKerjasama(dataAspekKerjasama);
        });
        $.get(routeAspekPengembanganDiri, function(dataAspekPengembanganDiri) {
            diagAspekPengembanganDiri(dataAspekPengembanganDiri);
        });
    }


    function diagKegiatanSetelahLulus(dataKategori, prodi) {
        new Chart($('#kegiatanSetelahLulus'), {
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
                        display: false,
                        text: 'Kegiatan Setelah Lulus (Kategori?) ALL'
                    }
                }
            },
        });

    }

    function diagTempatKerja(dataTempatKerja, prodi) {
        new Chart($('#tempatKerja'), {
            type: 'pie',
            data: {
                labels: dataTempatKerja.tempat_kerja,
                datasets: [{
                    label: 'Jumlah Responden',
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
                        text: 'Tempat Kerja (' + prodi + ') (BUMN?Swasta?) kategori SB WH'
                    }
                }
            },
        });
    }

    function diagInformasiLowonganPekerjaan(dataInformasiLowonganPekerjaan) {
        new Chart($('#informasiLowonganPekerjaan'), {
            type: 'pie',
            data: {
                labels: dataInformasiLowonganPekerjaan.informasi_lowongan_pekerjaan,
                datasets: [{
                    label: 'Jumlah Responden',
                    data: dataInformasiLowonganPekerjaan.count_informasi_lowongan_pekerjaan,
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
                        text: 'Informasi Lowongan Pekerjaan SB WH'
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

    function diagAspekIntegritas(dataAspekIntegritas) {
        new Chart($('#aspekIntegritas'), {
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

    function diagAspekProfesionalisme(dataAspekProfesionalisme) {
        new Chart($('#aspekProfesionalisme'), {
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

    function diagAspekBerbahasaAsing(dataAspekBerbahasaAsing) {
        new Chart($('#aspekBerbahasaAsing'), {
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

    function diagAspekPenggunaanTeknologi(dataAspekPenggunaanTeknologi) {
        new Chart($('#aspekPenggunaanTeknologi'), {
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

    function diagAspekKomunikasi(dataAspekKomunikasi) {
        new Chart($('#aspekKomunikasi'), {
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

    function diagAspekKerjasama(dataAspekKerjasama) {
        new Chart($('#aspekKerjasama'), {
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

    function diagAspekPengembanganDiri(dataAspekPengembanganDiri) {
        new Chart($('#aspekPengembanganDiri'), {
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
    $('#tbl_alumni').DataTable({
        // "lengthChange": false
        "dom": 'frtp'
    });
    $('#tbl_alumni2').DataTable({});

    $('select[name="tbl_alumni_length"]').css('width', '100%');
    $('select[name="tbl_alumni2_length"]').css(
        'width', '100%');

    $('input[type="search"]').css({
        'padding': '0',
        'margin-bottom': '0'
    });
    // $('.p-1').css({
    //     "font-size",
    //     "1px"
    // });
</script>
