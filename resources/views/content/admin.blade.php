@extends('layouts.landing')
@section('content')
    <div class="bg-primary p-3">
        <div class="card">
            <div class="card-header" style="background-color: rgb(255, 255, 255)">
                {{-- <h4 class="card-title text-dark m-2">Dashboard</h4>
                <p class="card-category m-2">Dashboard</p> --}}
                <div id="container" style="width:100%; height:400px;"></div>
            </div>
            <div class="card-body">

                <div class="mt-4">Data Responden Alumni</div>
                <table class="table table-sm table-bordered" style="width: 100%" id="tbl_alumni">
                    <thead border="1">
                        <tr>
                            <th>Nama</th>
                            <th>Angkatan</th>
                            <th>Prodi</th>
                            {{-- <th>Age</th>
                            <th>Start date</th>
                            <th>Salary</th> --}}
                        </tr>
                    </thead>
                    <tbody>
                        @foreach ($data_alumni as $data)
                            <tr>
                                <td>{{ $data->bank1 }}</td>
                                <td>{{ $data->bank2 }}</td>
                                <td>{{ $data->bank3 }}</td>
                            </tr>
                        @endforeach
                        {{-- 
                        <tr>
                            <td>Tiger Nixon</td>
                            <td>System Architect</td>
                            <td>Edinburgh</td>
                            <td>61</td>
                            <td>2011-04-25</td>
                            <td>$320,800</td>
                        </tr>
                        <tr>
                            <td>Garrett Winters</td>
                            <td>Accountant</td>
                            <td>Tokyo</td>
                            <td>63</td>
                            <td>2011-07-25</td>
                            <td>$170,750</td>
                        </tr>
                        <tr>
                            <td>Ashton Cox</td>
                            <td>Junior Technical Author</td>
                            <td>San Francisco</td>
                            <td>66</td>
                            <td>2009-01-12</td>
                            <td>$86,000</td>
                        </tr>
                        <tr>
                            <td>Cedric Kelly</td>
                            <td>Senior Javascript Developer</td>
                            <td>Edinburgh</td>
                            <td>22</td>
                            <td>2012-03-29</td>
                            <td>$433,060</td>
                        </tr>
                        <tr>
                            <td>Airi Satou</td>
                            <td>Accountant</td>
                            <td>Tokyo</td>
                            <td>33</td>
                            <td>2008-11-28</td>
                            <td>$162,700</td>
                        </tr>
                        <tr>
                            <td>Brielle Williamson</td>
                            <td>Integration Specialist</td>
                            <td>New York</td>
                            <td>61</td>
                            <td>2012-12-02</td>
                            <td>$372,000</td>
                        </tr> --}}

                    </tbody>
                </table>
            </div>
        </div>
    </div>
@endsection
