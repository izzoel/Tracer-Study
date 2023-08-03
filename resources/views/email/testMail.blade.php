@component('mail::message')
    <table border="0" style="font-family: Roboto,sans-serif;font-size:16px;font-weight:500;">
        <tr>
            <td style="color:#222222">
                Nama
            </td>
            <td style="color:#222222">:</td>
            <td style="color:#FF5733">
                {{ $data_email['nama'] }}
            </td>
        </tr>
        <tr>
            <td style="color:#222222">
                NIM
            </td>
            <td style="color:#222222">:</td>
            <td style="color:#FF5733">
                {{ $data_email['nim'] }}
            </td>
        </tr>
        <tr>
            <td style="color:#222222">
                Prodi
            </td>
            <td style="color:#222222">:</td>
            <td style="color:#FF5733">
                {{ $data_email['prodi'] }}
            </td>
        </tr>
        <tr>
            <td style="color:#222222">
                Angkatan
            </td>
            <td style="color:#222222">:</td>
            <td style="color:#FF5733">
                {{ $data_email['angkatan'] }}
            </td>
        </tr>
    </table>


    @foreach ($data_survey as $i)
        {!! $i !!}
        {{-- @if (isset($bundle[$i->id]))
            @foreach ($data_email->skip(5) as $d)
                {!! $i->survey . $d !!}
            @endforeach
        @endif --}}
    @endforeach
@endcomponent
