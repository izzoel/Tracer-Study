<script>
    routeAlumni = "{{ route('statistik_alumni') }}";
    const labelDate = ['2016', '2017', '2018', '2019', '2020', '2021', ];

    $.get(routeAlumni, function(data) {
        new Chart(document.getElementById('dashboardChart'), {
            type: 'bar',
            data: {
                labels: labelDate,
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
        const labelDate = ['2016', '2017', '2018', '2019', '2020', '2021', ];

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
                    labels: labelDate,
                    datasets: [{
                        label: '# Alumni ' + prodi,
                        data: data,
                        borderWidth: 1
                    }, {
                        label: '# Alumni ' + prodi + ' Yang Mengisi',
                        data: [4, 5, 3, 7, 5],
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
            new Chart($('#kegiatanSetelahLulus'), {
                type: 'pie',
                data: {
                    labels: ['D3 TLM', 'S1 ARS', 'S1 Gizi'],
                    datasets: [{
                        label: 'Jumlah Responden',
                        data: [12, 19, 3],
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
                            text: 'Kegiatan Setelah Lulus (Kategori?)'
                        }
                    }
                },
            });
        });
    }

    $('.sub-nav.nav-link[role="tab"]').on("click", function() {
        prodi = $('.sub-nav.active #tab-title').text();
        const labelDate = ['2016', '2017', '2018', '2019', '2020', '2021', ];

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
                    labels: labelDate,
                    datasets: [{
                        label: '# Alumni ' + prodi,
                        data: data,
                        borderWidth: 1
                    }, {
                        label: '# Alumni ' + prodi + ' Yang Mengisi',
                        data: [4, 5, 3, 7, 5],
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


            new Chart(document.getElementById('kegiatanSetelahLulus'), {
                type: 'pie',
                data: {
                    labels: ['D3 TLM', 'S1 ARS', 'S1 Gizi'],
                    datasets: [{
                        label: 'Jumlah Responden',
                        data: [12, 19, 3],
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
                            text: 'Kegiatan Setelah Lulus (Kategori?)'
                        }
                    }
                },
            });
        });
    });



    new Chart(document.getElementById('D3tempatKerja'), {
        type: 'pie',
        data: {
            labels: ['D3 TLM', 'S1 ARS', 'S1 Gizi'],
            datasets: [{
                label: 'Jumlah Responden',
                data: [12, 19, 3],
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
                    text: 'Tempat Kerja'
                }
            }
        },
    });
    new Chart(document.getElementById('D3informasiLowonganPekerjaan'), {
        type: 'pie',
        data: {
            labels: ['D3 TLM', 'S1 ARS', 'S1 Gizi'],
            datasets: [{
                label: 'Jumlah Responden',
                data: [12, 19, 3],
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

    // new Chart(document.getElementById('diagInfoLowonganFISH'), {
    //     type: 'pie',
    //     data: {
    //         labels: ['S1 Hukum', 'S1 Manajemen', 'S1 PGSD'],
    //         datasets: [{
    //             label: 'Jumlah Responden',
    //             data: [12, 5, 3],
    //             borderWidth: 1,
    //             order: 0
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
    //                 text: 'Fakultas Ilmu Sosial dan Humaniora'
    //             }
    //         }
    //     },
    // });

    new Chart(document.getElementById('diagMasaTunggu'), {
        type: 'bar',
        data: {
            labels: ['Jumlah Responden'],
            datasets: [{
                label: '≤ 3 bulan',
                data: [12],
                borderWidth: 1,
            }, {
                label: '3 < MT < 12',
                data: [5],
                borderWidth: 1,
            }, {
                label: 'MT ≥ 12',
                data: [2],
                borderWidth: 1,
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

    new Chart(document.getElementById('diagRelevansiPekerjaan'), {
        type: 'bar',
        data: {
            labels: ['Jumlah Responden'],
            datasets: [{
                label: '≤ 3 bulan',
                data: [12],
                borderWidth: 1,
            }, {
                label: '3 < MT < 12',
                data: [5],
                borderWidth: 1,
            }, {
                label: 'MT ≥ 12',
                data: [2],
                borderWidth: 1,
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

    new Chart(document.getElementById('kegiatanYangBelumBekerja'), {
        type: 'bar',
        data: {
            labels: ['Jumlah Responden'],
            datasets: [{
                label: '≤ 3 bulan',
                data: [12],
                borderWidth: 1,
            }, {
                label: '3 < MT < 12',
                data: [5],
                borderWidth: 1,
            }, {
                label: 'MT ≥ 12',
                data: [2],
                borderWidth: 1,
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

    new Chart(document.getElementById('kegiatanYangBelumBekerja'), {
        type: 'bar',
        data: {
            labels: ['Jumlah Responden'],
            datasets: [{
                label: '≤ 3 bulan',
                data: [12],
                borderWidth: 1,
            }, {
                label: '3 < MT < 12',
                data: [5],
                borderWidth: 1,
            }, {
                label: 'MT ≥ 12',
                data: [2],
                borderWidth: 1,
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
