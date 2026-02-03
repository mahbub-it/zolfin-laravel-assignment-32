@props(['url'])
<tr>
    <td class="header">
        <a href="{{ $url }}" style="display: inline-block;">
            @if (trim($slot) === 'DreamWebdev')
                @if(isset($message))
                    <img style="max-width:70px;" src="{{ $message->embed(public_path('/assets/img/logo.png')) }}" class="logo"
                        alt="DreamWebdev Logo">
                @else
                    <img style="max-width:70px;" src="{{ asset('/assets/img/logo.png') }}" class="logo" alt="DreamWebdev Logo">
                @endif
            @else
                {!! $slot !!}
            @endif
        </a>
    </td>
</tr>