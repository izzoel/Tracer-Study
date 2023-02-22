@extends('layouts.landing')
@section('content')
    <div class="bg-primary p-3">
        <div class="card">
            <div class="card-header" style="background-color: rgb(255, 255, 255)">
                {{-- <h4 class="card-title text-dark m-2">Dashboard</h4>
                <p class="card-category m-2">Dashboard</p> --}}
                <div id="container" class="p-5" style="width:100%; height:400px;"></div>
            </div>
            <div class="row">
                <div class="col">
                    <div class="card-body">
                        <div class="mt-4">Data Responden Alumni</div>
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
                {{-- <div class="col">
                    <div class="card-body">

                        <div class="mt-4">Data Responden Alumni2</div>
                        <table class="table table-sm table-striped table-hover table-bordered p-0" style="width: 100%"
                            id="tbl_alumni2">
                            <thead border="1">
                                <tr class="p-0">
                                    <th>Nama</th>
                                    <th>Angkatan</th>
                                    <th>Prodi</th>
                                </tr>
                            </thead>
                            <tbody>

                            </tbody>
                        </table>
                    </div>
                </div> --}}
            </div>
        </div>
    </div>
@endsection
