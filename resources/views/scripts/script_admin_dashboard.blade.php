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
        routeKategori = "{{ route('diagram', '') }}" + "/kategori";
        routeTempatKerja = "{{ route('diagram', '') }}" + "/tempat_kerja";
        routeInformasiLowongan = "{{ route('diagram', '') }}" + "/informasi_lowongan";
        routeMasaTungguPekerjaan = "{{ route('diagram', '') }}" + "/masa_tunggu_pekerjaan";
        routeRelevansiPekerjaan = "{{ route('diagram', '') }}" + "/relevansi_pekerjaan";
        routeKegiatanYangBelumBekerja = "{{ route('diagram', '') }}" + "/kegiatan_belum_bekerja";

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
                diagTempatKerja(dataTempatKerja);
            });
            $.get(routeInformasiLowongan, function(dataInformasiLowonganPekerjaan) {
                diagInformasiLowonganPekerjaan(dataInformasiLowonganPekerjaan);
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


        });
    }

    $('.sub-nav.nav-link[role="tab"]').on("click", function() {
        prodi = $('.sub-nav.active #tab-title').text();
        routeProdi = "{{ route('statistik_prodi', '') }}" + "/" + prodi;
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
                diagTempatKerja(dataTempatKerja);
            });

        });
    });

    // $.get(routeMasaTungguPekerjaan, function(dataMasaTungguPekerjaan) {
    //     // var arr = [];
    //     // var lab = ['≤ 3 bulan', '3 < MT < 12', 'MT > 12', '-']
    //     // var i = 0;
    //     // $.each(lab, function(masa_tunggu_pekerjaan, values) {
    //     //     // $.each(dataMasaTungguPekerjaan.masa_tunggu_pekerjaan, function(masa_tunggu_pekerjaan, values) {

    //     //     ar2 = {
    //     //         // label: lab[i],
    //     //         label: [lab[i]],
    //     //         data: dataMasaTungguPekerjaan.masa_tunggu_pekerjaan,
    //     //         // data: values[i],
    //     //         borderWidth: 1
    //     //     };
    //     //     // arr = {
    //     //     //     label: i
    //     //     // };
    //     //     arr.push(ar2);
    //     //     console.log(dataMasaTungguPekerjaan.count_masa_tunggu_pekerjaan);
    //     //     i += 1;
    //     // });


    //     // var myJsonString = JSON.stringify(yourArray);

    //     // var json = '{"value":"validJSON"}';
    //     // var obj = JSON.parse(json);
    //     // console.log(json);


    //     // diagMasaTungguDapatPekerjaan(dataMasaTungguPekerjaan);
    //     // $.each(dataMasaTungguPekerjaan, function(masa_tunggu_pekerjaan, values) {
    //     // console.log(masa_tunggu_pekerjaan + '' + val);
    //     // var arr = dataMasaTungguPekerjaan.masa_tunggu_pekerjaan;


    //     // });
    //     // var i;

    //     // for (i = 0; i < 1; ++i) {
    //     //     // console.log('datasets: [{label: ' + i + ',data:' + i + ',borderWidth:' + i + '}]');
    //     //     // arr = 'datasets: [{label: ' + i + ',data:' + i + ',borderWidth:' + 1 + '}]';
    //     //     arr = {
    //     //         label: dataMasaTungguPekerjaan.masa_tunggu_pekerjaan
    //     //     };
    //     // };

    //     // console.log(arr);

    //     // console.log(arr);
    //     // new Chart($('#masaTungguDapatPekerjaan'), {
    //     //     type: 'bar',
    //     //     data: {
    //     //         // labels: ['≤ 3 bulan', '3 < MT < 12', 'MT > 12', '-'],
    //     //         // arr
    //     //         datasets: arr

    //     //         // datasets: [

    //     //         //     {
    //     //         //         label: arr.label,
    //     //         //         data: 1,
    //     //         //         // data: [dataMasaTungguDapatPekerjaan.count_masa_tunggu_pekerjaan],
    //     //         //         borderWidth: 1,
    //     //         //         // backgroundColor: [
    //     //         //         //     'rgba(54, 162, 235, 0.5)',
    //     //         //         //     'rgba(255, 99, 132, 0.5)',
    //     //         //         //     'rgba(255, 206, 86, 0.5)',
    //     //         //         //     'rgba(153, 102, 255, 0.5)'
    //     //         //         // ],
    //     //         //         // borderColor: [
    //     //         //         //     'rgba(54, 162, 235, 1)',
    //     //         //         //     'rgba(255, 99, 132, 1)',
    //     //         //         //     'rgba(255, 206, 86, 1)',
    //     //         //         //     'rgba(153, 102, 255, 1)'
    //     //         //         // ]
    //     //         //         // strokeColor: dataset.strokeColor,
    //     //         //     }


    //     //         // ]
    //     //         // datasets: [{
    //     //         //     dataMasaTungguDapatPekerjaan
    //     //         // }, ]

    //     //     },
    //     //     options: {
    //     //         responsive: true,
    //     //         maintainAspectRatio: false,
    //     //         plugins: {
    //     //             legend: {
    //     //                 position: 'top',
    //     //             },
    //     //             title: {
    //     //                 display: true,
    //     //                 text: 'Masa Tunggu Mendapat Pekerjaan'
    //     //             }
    //     //         }
    //     //     },
    //     // });

    //     diagMasaTungguDapatPekerjaan();


    // })

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

    function diagTempatKerja(dataTempatKerja) {
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
                        text: 'Tempat Kerja (BUMN?Swasta?) kategori SB WH'
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

        // new Chart($('#masaTungguDapatPekerjaan'), {
        //     type: 'bar',
        //     data: {
        //         labels: ['a', 'b', 'c'],
        //         datasets: [{
        //             label: ['a', 'b', 'c'],
        //             data: ['a', 'b', 'c'],
        //             // data: [dataMasaTungguDapatPekerjaan.count_masa_tunggu_pekerjaan],
        //             borderWidth: 1,
        //             // backgroundColor: [
        //             //     'rgba(54, 162, 235, 0.5)',
        //             //     'rgba(255, 99, 132, 0.5)',
        //             //     'rgba(255, 206, 86, 0.5)',
        //             //     'rgba(153, 102, 255, 0.5)'
        //             // ],
        //             // borderColor: [
        //             //     'rgba(54, 162, 235, 1)',
        //             //     'rgba(255, 99, 132, 1)',
        //             //     'rgba(255, 206, 86, 1)',
        //             //     'rgba(153, 102, 255, 1)'
        //             // ]
        //             // strokeColor: dataset.strokeColor,
        //         }]
        //         // datasets: [{
        //         //     dataMasaTungguDapatPekerjaan
        //         // }, ]

        //     },
        //     options: {
        //         responsive: true,
        //         maintainAspectRatio: false,
        //         plugins: {
        //             legend: {
        //                 position: 'top',
        //             },
        //             title: {
        //                 display: true,
        //                 text: 'Masa Tunggu Mendapat Pekerjaan'
        //             }
        //         }
        //     },
        // });
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

    // new Chart(document.getElementById('kegiatanYangBelumBekerja'), {
    //     type: 'bar',
    //     data: {
    //         labels: ['Jumlah Responden'],
    //         datasets: [{
    //             label: '≤ 3 bulan',
    //             data: [12],
    //             borderWidth: 1,
    //         }, {
    //             label: '3 < MT < 12',
    //             data: [5],
    //             borderWidth: 1,
    //         }, {
    //             label: 'MT ≥ 12',
    //             data: [2],
    //             borderWidth: 1,
    //         }]
    //     },
    //     options: {
    //         responsive: true,
    //         maintainAspectRatio: false,
    //         plugins: {
    //             legend: {
    //                 position: 'top',
    //             },
    //             title: {
    //                 display: true,
    //                 text: 'Masa Tunggu Mendapat Pekerjaan'
    //             }
    //         }
    //     },
    // });


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
