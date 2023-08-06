@component('mail::message')
    <table border="0" style="font-family: Roboto,sans-serif;font-size:16px;font-weight:500;">
        <tr>
            <td style="color:#222222">
                Nama
            </td>
            <td style="color:#222222">:</td>
            <td style="color:#FF5733">
                {{ $data['nama'] }}
            </td>
        </tr>
        <tr>
            <td style="color:#222222">
                NIM
            </td>
            <td style="color:#222222">:</td>
            <td style="color:#FF5733">
                {{ $data['nim'] }}
            </td>
        </tr>
        <tr>
            <td style="color:#222222">
                Prodi
            </td>
            <td style="color:#222222">:</td>
            <td style="color:#FF5733">
                {{ $data['prodi'] }}
            </td>
        </tr>
        <tr>
            <td style="color:#222222">
                Angkatan
            </td>
            <td style="color:#222222">:</td>
            <td style="color:#FF5733">
                {{ $data['angkatan'] }}
            </td>
        </tr>
    </table>

<table border="0" style="font-family: Roboto,sans-serif;font-size:16px;font-weight:500;">
@foreach ($data_survey as $i)
<td>
<tr>{{$i->survey}}</tr>
</td>
@endforeach
</table>
@endcomponent
