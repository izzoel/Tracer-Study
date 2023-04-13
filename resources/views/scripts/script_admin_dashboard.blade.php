<script>
    const ctx = document.getElementById('myChart');

    new Chart(ctx, {
        type: 'bar',
        data: {
            labels: ['2020', '2021', '2022', '2023'],
            datasets: [{
                label: 'Jumlah Responden Alumni',
                data: [12, 19, 3, 5],
                borderWidth: 1,
                order: 0
            }, {
                label: 'Jumlah Responden Pengguna Lulusan',
                data: [10],
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


    new Chart(document.getElementById('diagInfoLowonganFF'), {
        type: 'pie',
        data: {
            labels: ['D3 Farmasi', 'S1 Farmasi', 'Profesi Apoteker'],
            datasets: [{
                label: 'Jumlah Responden',
                data: [12, 5, 15],
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
                    text: 'Fakultas Farmasi'
                }
            }
        },
    });

    new Chart(document.getElementById('diagInfoLowonganSaintek'), {
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
                    text: 'Fakultas Sain dan Teknologi'
                }
            }
        },
    });

    new Chart(document.getElementById('diagInfoLowonganFISH'), {
        type: 'pie',
        data: {
            labels: ['S1 Hukum', 'S1 Manajemen', 'S1 PGSD'],
            datasets: [{
                label: 'Jumlah Responden',
                data: [12, 5, 3],
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
                    text: 'Fakultas Ilmu Sosial dan Humaniora'
                }
            }
        },
    });

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


    const labelDate = ['Jan', 'Feb', 'Mar', 'Apr', 'Mei', 'Jun', 'Jul', 'Agust', 'Sep', 'Okt', 'Nov', 'Des'];

    new Chart($('#respondenProdiD3Farmasi'), {
        type: 'line',
        data: {
            labels: labelDate,
            datasets: [{
                label: '# Responden D3 Farmasi',
                data: [12, 19, 3, 5, 2, 3, 21, 15, 4, 10],
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

    new Chart($('#respondenProdiD3Tlm'), {
        type: 'line',
        data: {
            labels: labelDate,
            datasets: [{
                label: '# Responden D3 TLM',
                data: [12, 19, 3, 5, 2, 3],
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

    new Chart($('#respondenProdiS1Farmasi'), {
        type: 'line',
        data: {
            labels: labelDate,
            datasets: [{
                label: '# Responden S1 Farmasi',
                data: [12, 19, 3, 5, 2, 3],
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

    new Chart($('#respondenProdiS1Ars'), {
        type: 'line',
        data: {
            labels: labelDate,
            datasets: [{
                label: '# Responden S1 ARS',
                data: [12, 19, 3, 5, 2, 3],
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

    new Chart($('#respondenProdiS1Gizi'), {
        type: 'line',
        data: {
            labels: labelDate,
            datasets: [{
                label: '# Responden S1 Gizi',
                data: [12, 19, 3, 5, 2, 3],
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

    new Chart($('#respondenProdiS1Hukum'), {
        type: 'line',
        data: {
            labels: labelDate,
            datasets: [{
                label: '# Responden S1 Hukum',
                data: [12, 19, 3, 5, 2, 3],
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

    new Chart($('#respondenProdiS1Manajemen'), {
        type: 'line',
        data: {
            labels: labelDate,
            datasets: [{
                label: '# Responden S1 Manajemen',
                data: [12, 19, 3, 5, 2, 3],
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

    new Chart($('#respondenProdiS1Pgsd'), {
        type: 'line',
        data: {
            labels: labelDate,
            datasets: [{
                label: '# Responden S1 PGSD',
                data: [12, 19, 3, 5, 2, 3],
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

    new Chart($('#respondenProdiApoteker'), {
        type: 'line',
        data: {
            labels: labelDate,
            datasets: [{
                label: '# Responden Apoteker',
                data: [12, 19, 3, 5, 2, 3],
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


    function download() {
        const imagelLink = document.createElement('a');
        const canvas = document.getElementById('respondenProdiD3Farmasi');
        imagelLink.download = 'responden_Prodi_D3_Farmasi';
        imagelLink.href = canvas.toDataURL('image/png', 1);

        document.write('<img src="' + imagelLink + '">');
        console.log(imagelLink.href);
    }

















    // new Chart(document.getElementById('respondenProdiD3Farmasi'), {
    //     type: 'line',
    //     data: {
    //         datasets: [{
    //             label: 'Jumlah Responden Alumni',
    //             data: [3, 5],
    //             borderWidth: 1,
    //             order: 0
    //         }]
    //     },
    //     options: {
    //         responsive: true,
    //         // maintainAspectRatio: false,
    //         plugins: {
    //             legend: {
    //                 position: 'top',
    //             },
    //             title: {
    //                 display: true,
    //                 text: 'Total Responden Tracer Study'
    //             }
    //         }
    //     },
    //     // options: {
    //     //     plugins: {
    //     //         filler: {
    //     //             propagate: false,
    //     //         },
    //     //         title: {
    //     //             display: true,
    //     //             text: (ctx) => 'Fill: ' + ctx.chart.data.datasets[0].fill
    //     //         }
    //     //     },
    //     //     interaction: {
    //     //         intersect: false,
    //     //     }
    //     // },
    //     // data: {
    //     //     labels: ['Jumlah Responden'],
    //     //     datasets: [{
    //     //         label: 'Dataset',
    //     //         data: generateData(),
    //     //         borderColor: Utils.CHART_COLORS.red,
    //     //         backgroundColor: Utils.transparentize(Utils.CHART_COLORS.red),
    //     //         fill: false
    //     //     }]
    //     // },
    //     // options: {
    //     //     responsive: true,
    //     //     maintainAspectRatio: false,
    //     //     plugins: {
    //     //         legend: {
    //     //             position: 'top',
    //     //         },
    //     //         title: {
    //     //             display: true,
    //     //             text: 'Masa Tunggu Mendapat Pekerjaan'
    //     //         }
    //     //     }
    //     // },
    // });

    // const data = {
    //     labels: generateLabels(),
    //     datasets: [{
    //         label: 'Dataset',
    //         data: generateData(),
    //         borderColor: Utils.CHART_COLORS.red,
    //         backgroundColor: Utils.transparentize(Utils.CHART_COLORS.red),
    //         fill: false
    //     }]
    // };



















    // ############### Datatables
    $('#tbl_alumni').DataTable({
        // "lengthChange": false
        "dom": 'frtp'
    });
    $('#tbl_alumni2').DataTable({});

    $('select[name="tbl_alumni_length"]').css('width', '100%');
    $('select[name="tbl_alumni2_length"]').css('width', '100%');

    $('input[type="search"]').css({
        'padding': '0',
        'margin-bottom': '0'
    });
    // $('.p-1').css({
    //     "font-size",
    //     "1px"
    // });
</script>
