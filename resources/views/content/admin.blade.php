@extends('layouts.landing')
@section('content')
    <div class="bg-primary p-3">
        <div class="card">
            <div class="card-body">
                <div style="height:75vh">
                    <canvas id="myChart"></canvas>
                </div>
            </div>
        </div>
    </div>

    <div class="bg-primary p-3">
        <div class="card">
            <div class="card-header bg-white">
                <div class="">Diagram informasi lowongan pekerjaan</div>
            </div>
            <div class="card-body">
                <div class="row">
                    <div class="col mb-5">
                        <canvas id="diagInfoLowonganFF"></canvas>
                    </div>
                    <div class="col mb-5">
                        <canvas id="diagInfoLowonganSaintek"></canvas>
                    </div>
                    <div class="col mb-5">
                        <canvas id="diagInfoLowonganFISH"></canvas>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <div class="bg-primary p-3">
        <div class="row">
            <div class="col">
                <div class="card">
                    <div class="card-header bg-white">
                        <div class="">Diagram masa tunggu dapat pekerjaan</div>
                    </div>
                    <div class="card-body">
                        <div class="" style="height:55vh">
                            <canvas id="diagMasaTunggu"></canvas>
                        </div>
                    </div>
                </div>
            </div>
            <div class="col">
                <div class="card">
                    <div class="card-header bg-white">
                        <div class="">Diagram masa tunggu dapat pekerjaan</div>
                    </div>
                    <div class="card-body">
                        <div class="" style="height:55vh">
                            <canvas id="diagRelevansiPekerjaan"></canvas>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <div class="bg-primary p-3">
        <div class="card">
            <div class="card-header bg-white">
                <div class="">Data Responden Alumni</div>
            </div>
            <div class="card-body">
                <div class="row">
                    <div class="col">
                        <table class="table table-sm table-striped table-hover table-bordered p-0" style="width: 100%"
                            id="tbl_alumni">
                            <thead border="1">
                                <tr class="p-0">
                                    <th>Nama</th>
                                    <th>Angkatan</th>
                                    <th>Prodi</th>
                                </tr>
                            </thead>
                            <tbody>
                                @foreach ($data_alumni as $data)
                                    <tr>
                                        @for ($i = 1; $i < $loop->count + 1; $i++)
                                            <td class="p-1">{{ $data['bank' . $i] }}</td>
                                        @endfor
                                    </tr>
                                @endforeach
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </div>

    {{-- <div class="bg-primary p-3">
        <div class="card">
            <div class="card-header bg-white">
                <div class="">Data Responden Alumni</div>
            </div>
            <div class="card-body">
                <div class="row">
                    <div class="col">

                        <table class="table table-sm table-striped table-hover table-bordered p-0" style="width: 100%"
                            id="tbl_alumni">
                            <thead border="1">
                                <tr class="p-0">
                                    <th>Nama</th>
                                    <th>Angkatan</th>
                                    <th>Prodi</th>
                                </tr>
                            </thead>
                            <tbody>
                                @foreach ($data_alumni as $data)
                                    <tr>
                                        @for ($i = 1; $i < $loop->count + 1; $i++)
                                            <td class="p-1">{{ $data['bank' . $i] }}</td>
                                        @endfor
                                    </tr>
                                @endforeach
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>  --}}

    {{-- </div> --}}
    {{-- 
    <div class="bg-primary p-3">
        <div class="card">
            <div class="card-header bg-white">
                <div class="">Diagram informasi lowongan pekerjaan</div>
            </div>
            <div class="card-body">
                <div class="row">
                    <div class="col mb-5">
                        <canvas id="diagInfoLowonganFF"></canvas>
                    </div>
                    <div class="col mb-5">
                        <canvas id="diagInfoLowonganSaintek"></canvas>
                    </div>
                    <div class="col mb-5">
                        <canvas id="diagInfoLowonganFISH"></canvas>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <div class="bg-primary p-3">
        <div class="card">
            <div class="card-header bg-white">
                <div class="">Diagram masa tunggu dapat pekerjaan</div>
            </div>
            <div class="card-body">
                <div class="row">
                    <div class="col mb-5" style="height:35vh">
                        <canvas id="diagMasaTunggu"></canvas>
                    </div>
                </div>
            </div>
        </div>
    </div>



    <div class="bg-primary p-3">
        <div class="card">
            <div class="card-header bg-white">
                <div class="">Data Responden Alumni</div>
            </div>
            <div class="card-body">
                <div class="row">
                    <div class="col">

                        <table class="table table-sm table-striped table-hover table-bordered p-0" style="width: 100%"
                            id="tbl_alumni">
                            <thead border="1">
                                <tr class="p-0">
                                    <th>Nama</th>
                                    <th>Angkatan</th>
                                    <th>Prodi</th>
                                </tr>
                            </thead>
                            <tbody>
                                @foreach ($data_alumni as $data)
                                    <tr>
                                        @for ($i = 1; $i < $loop->count + 1; $i++)
                                            <td class="p-1">{{ $data['bank' . $i] }}</td>
                                        @endfor
                                    </tr>
                                @endforeach
                            </tbody>
                        </table>
                    </div>
                </div>
            </div> --}}

    {{-- </div> --}}
    {{-- </div> --}}
@endsection
