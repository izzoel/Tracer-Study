{{-- ######### Start Form Alumni Sudah Bekerja ######### --}}
<!-- Modal Tambah-->
<div class="modal fade" id="modal_form_sudah_bekerja" tabindex="-1">
    <div class="modal-dialog modal-xl">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title">Tambah Pertanyaan</h5>
            </div>
            <form action="{{ route('add_alumni_sudah_bekerja') }}" method="POST">
                @csrf
                <div class="modal-body">
                    Preview :
                    <hr>
                    <table class="table">
                        <tbody>
                            <tr>
                                <td class="col-auto">
                                    {{ $no_urut_sudah_bekerja + 1 }}.
                                    <input type="hidden" name="no" value="{{ $no_urut_sudah_bekerja + 1 }}">
                                </td>
                                <td>
                                    <div class="form-group">
                                        <div class="form-floating">
                                            <textarea class="form-control" id="pertanyaan" name="pertanyaan" placeholder="pertanyaan" required
                                                style="height: 100px"></textarea>
                                            <label for="pertanyaan" class="text-secondary">Pertanyaan</label>
                                        </div>
                                    </div>
                                </td>

                                <div class="d-none d-lg-block">
                                    <td>
                                        <div class="form-check form-switch form-check-inline mb-1">
                                            <input class="form-check-input" type="checkbox" role="switch"
                                                id="pilihanSB" name="pilihan">
                                            <label class="form-check-label text-dark" for="pilihan">Pilihan</label>
                                        </div>

                                        <div class="form-check form-switch form-check-inline mb-1" id="gandaOpsiSB">
                                            <input class="form-check-input" type="checkbox" name="ganda"
                                                id="ganda">
                                            <label class="form-check-label text-dark" for="ganda">Ganda</label>
                                        </div>

                                        <div class="input-group input-group-sm mb-1 addOpsiSB" id="opsiListSB">
                                            <label class="input-group-text" id="opsi" data-lab="1">1.</label>
                                            <input type="text" class="form-control mb-0 inputOpsiSB" name="opsi[]">
                                        </div>

                                        <div id="newRowSB"></div>
                                        <div class="pull-right buttonListSB">
                                            <a class="btn-sm btn-primary" id="queOpsiSB" onclick="otherOpsiSB()"
                                                role="button">&quest;</a>
                                            <a class="btn-sm btn-primary" id="addOpsiSB" onclick="addOpsiSB()"
                                                role="button">&plus;</a>
                                            <a class="btn-sm btn-primary" id="rmvOpsiSB" onclick="removeOpsiSB()"
                                                role="button">&minus;</a>
                                        </div>
                                    </td>
                                </div>



                                <td>
                                    <div class="form-check form-switch">
                                        <input class="form-check-input" type="checkbox" id="wajib" name="wajib"
                                            checked>
                                        <label class="form-check-label text-dark" for="wajib">wajib</label>
                                    </div>
                                </td>
                            </tr>

                        </tbody>
                    </table>

                </div>
                <div class="modal-footer">
                    <button type="submit" class="btn btn-primary me-4">Save</button>
                </div>
            </form>
        </div>
    </div>
</div>

<!-- Modal Edit-->
@foreach ($form_alumni_sudah_bekerja as $data)
    @php
        $pilihan = explode(';', $data->pilihan);
        $edit_other = count($pilihan) + 1;
        
    @endphp
    <div class="modal fade" id="modal_edit_sudah_bekerja_{{ $data->no }}" tabindex="-1">
        <div class="modal-dialog modal-xl">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title">Edit Pertanyaan</h5>
                </div>
                <form action="{{ route('edit_alumni_sudah_bekerja', $data->id) }}" method="POST">
                    @csrf
                    <div class="modal-body">
                        Preview :
                        <hr>
                        <table class="table">
                            <tbody>
                                <tr>
                                    <td class="col-auto">
                                        <div class="input-group input-group-sm mb-1">
                                            <input type="number" class="form-control mb-0" name="no"
                                                value="{{ $data->no }}" style="min-width: 100%;width: 1rem">
                                        </div>
                                    <td>
                                        <div class="form-group">
                                            <div class="form-floating">
                                                <textarea class="form-control" id="pertanyaan" name="pertanyaan" placeholder="pertanyaan" required
                                                    style="height: 100px">{{ $data->survey }}</textarea>
                                                <label for="pertanyaan" class="text-secondary">Pertanyaan</label>
                                            </div>
                                        </div>


                                    </td>

                                    <td>
                                        <div class="form-check form-switch form-check-inline mb-1">
                                            <input class="form-check-input" type="checkbox"
                                                id="edit_pilihan_{{ $data->no }}" name="pilihan"
                                                {{ $data->pilihan != null ? 'checked' : '' }}>
                                            <label class="form-check-label text-dark"
                                                for="edit_pilihan_{{ $data->no }}">Pilihan</label>
                                        </div>

                                        <div class="form-check form-switch form-check-inline mb-1" id="gandaOpsi">
                                            <input class="form-check-input" type="checkbox" name="ganda"
                                                id="edit_ganda_{{ $data->no }}"
                                                {{ $data->ganda != 0 ? 'checked' : '' }}>
                                            <label class="form-check-label text-dark"
                                                for="edit_ganda_{{ $data->no }}">Ganda</label>
                                        </div>
                                        @if ($data->pilihan != null)
                                            @php
                                                $i = 0;
                                            @endphp
                                            @foreach ($pilihan as $item)
                                                <div
                                                    class="input-group input-group-sm mb-1 editOpsi{{ $data->no }}">
                                                    <label class="input-group-text " id="opsi"
                                                        data-edit="{{ $loop->iteration }}"
                                                        data-lab="{{ $loop->iteration }}">{{ $loop->iteration }}.</label>
                                                    <input type="text" class="form-control mb-0" name="opsi[]"
                                                        value="{{ $item }}" required>
                                                </div>
                                                @php
                                                    $i += 1;
                                                @endphp
                                            @endforeach
                                            @if ($data->other != 0)
                                                <div class="input-group input-group-sm mb-1 editOpsi{{ $data->no }}"
                                                    id="opsiList{{ $data->no }}">
                                                    <label class="input-group-text" data-edit="{{ $i + 1 }}"
                                                        data-lab="{{ $i + 1 }}">{{ $i + 1 }}.</label>
                                                    <input type="text" class="form-control mb-0" placeholder="..."
                                                        disabled>
                                                    <input type="hidden" name="other" value="other">
                                                </div>
                                            @endif
                                        @endif

                                        <div id="editRow{{ $data->no }}"></div>
                                        <div class="pull-right buttonList{{ $data->no }}">
                                            <a class="btn-sm btn-primary" id="queOpsi{{ $data->no }}"
                                                onclick="otherOpsi{{ $data->no }}()" role="button">&quest;</a>
                                            <a class="btn-sm btn-primary" id="addOpsi{{ $data->no }}"
                                                onclick="editOpsi{{ $data->no }}()" role="button">&plus;</a>
                                            <a class="btn-sm btn-primary" id="rmvOpsi{{ $data->no }}"
                                                onclick="removeOpsi{{ $data->no }}()" role="button">&minus;</a>
                                        </div>
                                    </td>
                                    <td>
                                        <div class="form-check form-switch">
                                            <input class="form-check-input" type="checkbox" id="wajib"
                                                name="wajib" checked>
                                            <label class="form-check-label text-dark" for="wajib">wajib</label>
                                        </div>
                                    </td>
                                </tr>

                            </tbody>
                        </table>

                    </div>


                    <div class="modal-footer">
                        <button type="submit" class="btn btn-primary me-4">Save</button>
                    </div>

                </form>
            </div>
        </div>
    </div>
@endforeach
{{-- ######### End Form Alumni Sudah Bekerja ######### --}}


{{-- ######### Start Form Alumni Wirausaha ######### --}}
<!-- Modal Tambah-->
<div class="modal fade" id="modal_form_wirausaha" tabindex="-1">
    <div class="modal-dialog modal-xl">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title">Tambah Pertanyaan</h5>
            </div>
            <form action="{{ route('add_alumni_wirausaha') }}" method="POST">
                @csrf
                <div class="modal-body">
                    Preview :
                    <hr>
                    <table class="table">
                        <tbody>
                            <tr>
                                <td class="col-auto">
                                    {{ $no_urut_wirausaha + 1 }}.
                                    <input type="hidden" name="no" value="{{ $no_urut_wirausaha + 1 }}">
                                </td>
                                <td>
                                    <div class="form-group">
                                        <div class="form-floating">
                                            <textarea class="form-control" id="pertanyaan" name="pertanyaan" placeholder="pertanyaan" required
                                                style="height: 100px"></textarea>
                                            <label for="pertanyaan" class="text-secondary">Pertanyaan</label>
                                        </div>
                                    </div>
                                </td>

                                <div class="d-none d-lg-block">
                                    <td>
                                        <div class="form-check form-switch form-check-inline mb-1">
                                            <input class="form-check-input" type="checkbox" role="switch"
                                                id="pilihanSB" name="pilihan">
                                            <label class="form-check-label text-dark" for="pilihan">Pilihan</label>
                                        </div>

                                        <div class="form-check form-switch form-check-inline mb-1" id="gandaOpsiSB">
                                            <input class="form-check-input" type="checkbox" name="ganda"
                                                id="ganda">
                                            <label class="form-check-label text-dark" for="ganda">Ganda</label>
                                        </div>

                                        <div class="input-group input-group-sm mb-1 addOpsiSB" id="opsiListSB">
                                            <label class="input-group-text" id="opsi" data-lab="1">1.</label>
                                            <input type="text" class="form-control mb-0 inputOpsiSB"
                                                name="opsi[]">
                                        </div>

                                        <div id="newRowSB"></div>
                                        <div class="pull-right buttonListSB">
                                            <a class="btn-sm btn-primary" id="queOpsiSB" onclick="otherOpsi()"
                                                role="button">&quest;</a>
                                            <a class="btn-sm btn-primary" id="addOpsiSB" onclick="addOpsi()"
                                                role="button">&plus;</a>
                                            <a class="btn-sm btn-primary" id="rmvOpsiSB" onclick="removeOpsi()"
                                                role="button">&minus;</a>
                                        </div>
                                    </td>
                                </div>



                                <td>
                                    <div class="form-check form-switch">
                                        <input class="form-check-input" type="checkbox" id="wajib"
                                            name="wajib" checked>
                                        <label class="form-check-label text-dark" for="wajib">wajib</label>
                                    </div>
                                </td>
                            </tr>

                        </tbody>
                    </table>

                </div>
                <div class="modal-footer">
                    <button type="submit" class="btn btn-primary me-4">Save</button>
                </div>
            </form>
        </div>
    </div>
</div>

<!-- Modal Edit-->
@foreach ($form_alumni_wirausaha as $data)
    @php
        $pilihan = explode(';', $data->pilihan);
        $edit_other = count($pilihan) + 1;
        
    @endphp
    <div class="modal fade" id="modal_edit_wirausaha_{{ $data->no }}" tabindex="-1">
        <div class="modal-dialog modal-xl">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title">Edit Pertanyaan</h5>
                </div>
                <form action="{{ route('edit_alumni_sudah_bekerja', $data->id) }}" method="POST">
                    @csrf
                    <div class="modal-body">
                        Preview :
                        <hr>
                        <table class="table">
                            <tbody>
                                <tr>
                                    <td class="col-auto">
                                        <div class="input-group input-group-sm mb-1">
                                            <input type="number" class="form-control mb-0" name="no"
                                                value="{{ $data->no }}" style="min-width: 100%;width: 1rem">
                                        </div>
                                    <td>
                                        <div class="form-group">
                                            <div class="form-floating">
                                                <textarea class="form-control" id="pertanyaan" name="pertanyaan" placeholder="pertanyaan" required
                                                    style="height: 100px">{{ $data->survey }}</textarea>
                                                <label for="pertanyaan" class="text-secondary">Pertanyaan</label>
                                            </div>
                                        </div>


                                    </td>

                                    <td>
                                        <div class="form-check form-switch form-check-inline mb-1">
                                            <input class="form-check-input" type="checkbox"
                                                id="edit_pilihan_{{ $data->no }}" name="pilihan"
                                                {{ $data->pilihan != null ? 'checked' : '' }}>
                                            <label class="form-check-label text-dark"
                                                for="edit_pilihan_{{ $data->no }}">Pilihan</label>
                                        </div>

                                        <div class="form-check form-switch form-check-inline mb-1" id="gandaOpsi">
                                            <input class="form-check-input" type="checkbox" name="ganda"
                                                id="edit_ganda_{{ $data->no }}"
                                                {{ $data->ganda != 0 ? 'checked' : '' }}>
                                            <label class="form-check-label text-dark"
                                                for="edit_ganda_{{ $data->no }}">Ganda</label>
                                        </div>
                                        @if ($data->pilihan != null)
                                            @php
                                                $i = 0;
                                            @endphp
                                            @foreach ($pilihan as $item)
                                                <div
                                                    class="input-group input-group-sm mb-1 editOpsi{{ $data->no }}">
                                                    <label class="input-group-text " id="opsi"
                                                        data-edit="{{ $loop->iteration }}"
                                                        data-lab="{{ $loop->iteration }}">{{ $loop->iteration }}.</label>
                                                    <input type="text" class="form-control mb-0" name="opsi[]"
                                                        value="{{ $item }}" required>
                                                </div>
                                                @php
                                                    $i += 1;
                                                @endphp
                                            @endforeach
                                            @if ($data->other != 0)
                                                <div class="input-group input-group-sm mb-1 editOpsi{{ $data->no }}"
                                                    id="opsiList{{ $data->no }}">
                                                    <label class="input-group-text" data-edit="{{ $i + 1 }}"
                                                        data-lab="{{ $i + 1 }}">{{ $i + 1 }}.</label>
                                                    <input type="text" class="form-control mb-0" placeholder="..."
                                                        disabled>
                                                    <input type="hidden" name="other" value="other">
                                                </div>
                                            @endif
                                        @endif

                                        <div id="editRow{{ $data->no }}"></div>
                                        <div class="pull-right buttonList{{ $data->no }}">
                                            <a class="btn-sm btn-primary" id="queOpsi{{ $data->no }}"
                                                onclick="otherOpsi{{ $data->no }}()" role="button">&quest;</a>
                                            <a class="btn-sm btn-primary" id="addOpsi{{ $data->no }}"
                                                onclick="editOpsi{{ $data->no }}()" role="button">&plus;</a>
                                            <a class="btn-sm btn-primary" id="rmvOpsi{{ $data->no }}"
                                                onclick="removeOpsi{{ $data->no }}()" role="button">&minus;</a>
                                        </div>
                                    </td>
                                    <td>
                                        <div class="form-check form-switch">
                                            <input class="form-check-input" type="checkbox" id="wajib"
                                                name="wajib" checked>
                                            <label class="form-check-label text-dark" for="wajib">wajib</label>
                                        </div>
                                    </td>
                                </tr>

                            </tbody>
                        </table>

                    </div>


                    <div class="modal-footer">
                        <button type="submit" class="btn btn-primary me-4">Save</button>
                    </div>

                </form>
            </div>
        </div>
    </div>
@endforeach
{{-- ######### End Form Alumni Wirausaha ######### --}}


{{-- ######### Start Form Alumni Lanjut Pendidikan ######### --}}
<!-- Modal Tambah-->
<div class="modal fade" id="modal_form_lanjut_pendidikan" tabindex="-1">
    <div class="modal-dialog modal-xl">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title">Tambah Pertanyaan</h5>
            </div>
            <form action="{{ route('add_alumni_wirausaha') }}" method="POST">
                @csrf
                <div class="modal-body">
                    Preview :
                    <hr>
                    <table class="table">
                        <tbody>
                            <tr>
                                <td class="col-auto">
                                    {{ $no_urut_lanjut_pendidikan + 1 }}.
                                    <input type="hidden" name="no"
                                        value="{{ $no_urut_lanjut_pendidikan + 1 }}">
                                </td>
                                <td>
                                    <div class="form-group">
                                        <div class="form-floating">
                                            <textarea class="form-control" id="pertanyaan" name="pertanyaan" placeholder="pertanyaan" required
                                                style="height: 100px"></textarea>
                                            <label for="pertanyaan" class="text-secondary">Pertanyaan</label>
                                        </div>
                                    </div>
                                </td>

                                <div class="d-none d-lg-block">
                                    <td>
                                        <div class="form-check form-switch form-check-inline mb-1">
                                            <input class="form-check-input" type="checkbox" role="switch"
                                                id="pilihanSB" name="pilihan">
                                            <label class="form-check-label text-dark" for="pilihan">Pilihan</label>
                                        </div>

                                        <div class="form-check form-switch form-check-inline mb-1" id="gandaOpsiSB">
                                            <input class="form-check-input" type="checkbox" name="ganda"
                                                id="ganda">
                                            <label class="form-check-label text-dark" for="ganda">Ganda</label>
                                        </div>

                                        <div class="input-group input-group-sm mb-1 addOpsiSB" id="opsiListSB">
                                            <label class="input-group-text" id="opsi" data-lab="1">1.</label>
                                            <input type="text" class="form-control mb-0 inputOpsiSB"
                                                name="opsi[]">
                                        </div>

                                        <div id="newRowSB"></div>
                                        <div class="pull-right buttonListSB">
                                            <a class="btn-sm btn-primary" id="queOpsiSB" onclick="otherOpsi()"
                                                role="button">&quest;</a>
                                            <a class="btn-sm btn-primary" id="addOpsiSB" onclick="addOpsi()"
                                                role="button">&plus;</a>
                                            <a class="btn-sm btn-primary" id="rmvOpsiSB" onclick="removeOpsi()"
                                                role="button">&minus;</a>
                                        </div>
                                    </td>
                                </div>



                                <td>
                                    <div class="form-check form-switch">
                                        <input class="form-check-input" type="checkbox" id="wajib"
                                            name="wajib" checked>
                                        <label class="form-check-label text-dark" for="wajib">wajib</label>
                                    </div>
                                </td>
                            </tr>

                        </tbody>
                    </table>

                </div>
                <div class="modal-footer">
                    <button type="submit" class="btn btn-primary me-4">Save</button>
                </div>
            </form>
        </div>
    </div>
</div>

<!-- Modal Edit-->
@foreach ($form_alumni_lanjut_pendidikan as $data)
    @php
        $pilihan = explode(';', $data->pilihan);
        $edit_other = count($pilihan) + 1;
        
    @endphp
    <div class="modal fade" id="modal_edit_lanjut_pendidikan_{{ $data->no }}" tabindex="-1">
        <div class="modal-dialog modal-xl">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title">Edit Pertanyaan</h5>
                </div>
                <form action="{{ route('edit_alumni_lanjut_pendidikan', $data->id) }}" method="POST">
                    @csrf
                    <div class="modal-body">
                        Preview :
                        <hr>
                        <table class="table">
                            <tbody>
                                <tr>
                                    <td class="col-auto">
                                        <div class="input-group input-group-sm mb-1">
                                            <input type="number" class="form-control mb-0" name="no"
                                                value="{{ $data->no }}" style="min-width: 100%;width: 1rem">
                                        </div>
                                    <td>
                                        <div class="form-group">
                                            <div class="form-floating">
                                                <textarea class="form-control" id="pertanyaan" name="pertanyaan" placeholder="pertanyaan" required
                                                    style="height: 100px">{{ $data->survey }}</textarea>
                                                <label for="pertanyaan" class="text-secondary">Pertanyaan</label>
                                            </div>
                                        </div>


                                    </td>

                                    <td>
                                        <div class="form-check form-switch form-check-inline mb-1">
                                            <input class="form-check-input" type="checkbox"
                                                id="edit_pilihan_{{ $data->no }}" name="pilihan"
                                                {{ $data->pilihan != null ? 'checked' : '' }}>
                                            <label class="form-check-label text-dark"
                                                for="edit_pilihan_{{ $data->no }}">Pilihan</label>
                                        </div>

                                        <div class="form-check form-switch form-check-inline mb-1" id="gandaOpsi">
                                            <input class="form-check-input" type="checkbox" name="ganda"
                                                id="edit_ganda_{{ $data->no }}"
                                                {{ $data->ganda != 0 ? 'checked' : '' }}>
                                            <label class="form-check-label text-dark"
                                                for="edit_ganda_{{ $data->no }}">Ganda</label>
                                        </div>
                                        @if ($data->pilihan != null)
                                            @php
                                                $i = 0;
                                            @endphp
                                            @foreach ($pilihan as $item)
                                                <div
                                                    class="input-group input-group-sm mb-1 editOpsi{{ $data->no }}">
                                                    <label class="input-group-text " id="opsi"
                                                        data-edit="{{ $loop->iteration }}"
                                                        data-lab="{{ $loop->iteration }}">{{ $loop->iteration }}.</label>
                                                    <input type="text" class="form-control mb-0" name="opsi[]"
                                                        value="{{ $item }}" required>
                                                </div>
                                                @php
                                                    $i += 1;
                                                @endphp
                                            @endforeach
                                            @if ($data->other != 0)
                                                <div class="input-group input-group-sm mb-1 editOpsi{{ $data->no }}"
                                                    id="opsiList{{ $data->no }}">
                                                    <label class="input-group-text" data-edit="{{ $i + 1 }}"
                                                        data-lab="{{ $i + 1 }}">{{ $i + 1 }}.</label>
                                                    <input type="text" class="form-control mb-0" placeholder="..."
                                                        disabled>
                                                    <input type="hidden" name="other" value="other">
                                                </div>
                                            @endif
                                        @endif

                                        <div id="editRow{{ $data->no }}"></div>
                                        <div class="pull-right buttonList{{ $data->no }}">
                                            <a class="btn-sm btn-primary" id="queOpsi{{ $data->no }}"
                                                onclick="otherOpsi{{ $data->no }}()" role="button">&quest;</a>
                                            <a class="btn-sm btn-primary" id="addOpsi{{ $data->no }}"
                                                onclick="editOpsi{{ $data->no }}()" role="button">&plus;</a>
                                            <a class="btn-sm btn-primary" id="rmvOpsi{{ $data->no }}"
                                                onclick="removeOpsi{{ $data->no }}()" role="button">&minus;</a>
                                        </div>
                                    </td>
                                    <td>
                                        <div class="form-check form-switch">
                                            <input class="form-check-input" type="checkbox" id="wajib"
                                                name="wajib" checked>
                                            <label class="form-check-label text-dark" for="wajib">wajib</label>
                                        </div>
                                    </td>
                                </tr>

                            </tbody>
                        </table>

                    </div>


                    <div class="modal-footer">
                        <button type="submit" class="btn btn-primary me-4">Save</button>
                    </div>

                </form>
            </div>
        </div>
    </div>
@endforeach
{{-- ######### End Form Alumni Lanjut Pendidikan ######### --}}
