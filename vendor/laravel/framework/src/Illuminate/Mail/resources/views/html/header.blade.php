@props(['url'])
<tr>
<td class="header">
<a href="{{ $url }}" style="display: inline-block;">
@if (trim($slot) === 'Laravel')
<img src="https://tracer.unbl.ac.id/images/landing-hero.png" width="225" alt="Tracer UNBL Logo">
@else
{{ $slot }}
@endif
</a>
</td>
</tr>
