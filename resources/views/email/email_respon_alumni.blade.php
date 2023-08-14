@component('mail::message')
Hasil Pengisian Survey <span style="color:#FF5733">{{date('d-M-Y')}}</span>
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
<br>
<br>
<table border="0" style="font-family: Roboto,sans-serif;font-size:16px;font-weight:500;">

@foreach ($data_survey as $i)
@php
$respon = explode(';',$i->respon);
@endphp
@foreach (explode(';',$i->survey) as $survey)
<tr>
<td style="color:#2e2e2e">
{{$survey}}
</td>
</tr>
<tr>
<td style="color:#FF5733">
{{$respon[$loop->index]}}
</td>
</tr>
<br>
@endforeach
@endforeach
</table>
@endcomponent
