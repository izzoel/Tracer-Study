@extends('layouts.landing')
@section('content')
    <div class="bg-primary p-3">
        <div class="card">
            <div class="card-header" style="background-color: rgb(255, 255, 255)">
                <h4 class="card-title text-dark m-2">Form Survey Tracer Study Pengguna Lulusan</h4>
                <p class="card-category m-2">Formulir pengisisan untuk Pengguna Lulusan</p>
            </div>
            <div class="card-body">

                <form action="" method="POST">
                    @csrf
                    <div id="survey">
                        @foreach ($form_lulusan as $data)
                            <table class="table table-borderless responsive ">
                                <tbody>
                                    <tr>
                                        <td class="align-top" style="min-width:5%;width:5%">1.&nbsp;</td>
                                        <td class="text-break pb-0 mb-0" colspan="2">Apakah sudah pernah mengisi formulir
                                            tracer study?<span class="ms-0 ps-0 me-0 pe-0 text-danger">*</span></td>
                                    </tr>
                                    <tr>
                                        <td></td>
                                        <td class="col pe-0 pt-0">
                                            <div class="row ms-0">
                                                <div class="form-check mb-0 ps-0 me-0"><input
                                                        class="form-check-input gandaOpsi1" type="radio" id="11"
                                                        required="" name="bank1" value="Pertama kali mengisi"
                                                        for="11">‌<label for="11"
                                                        style="float:left;width: 75%;"><span
                                                            class="form-check-label text-dark">Pertama kali
                                                            mengisi</span></label></div>
                                            </div>
                                            <div class="row ms-0">
                                                <div class="form-check mb-0 ps-0 me-0"><input
                                                        class="form-check-input gandaOpsi1" type="radio" id="12"
                                                        required="" name="bank1"
                                                        value="Sudah pernah mengisi dan hendak update data pekerjaan pertama"
                                                        for="12">‌<label for="12"
                                                        style="float:left;width: 75%;"><span
                                                            class="form-check-label text-dark">Sudah pernah mengisi dan
                                                            hendak update data pekerjaan pertama</span></label></div>
                                            </div>
                                        </td>
                                        <td></td>
                                    </tr>
                                </tbody>
                            </table>
                        @endforeach

                    </div>
                    <br>
                    <br>
                </form>

            </div>
        </div>
    </div>
    </div>
@endsection
