@extends('components.common-layout')

@section('content')

    <div class="container mt-5 mb-5">
        <div class="row">
            <div class="col-6 offset-3 ">
                <h2 class="text-center">My Notifications</h2>
                <table class="table table-striped table-hover">
                    <thead>
                        <tr>
                            <th>Score</th>
                            <th>Status</th>
                        </tr>
                    </thead>
                    <tbody>
                        @if ($notifications->count() > 0)
                            @foreach ($notifications as $notification)
                                <tr>
                                    @if (isset($notification->data['score']))
                                        <td>{{ $notification->data['score'] }}</td>
                                    @endif
                                    @if (isset($notification->data['status']))
                                        <td>{{ $notification->data['status'] }}</td>
                                        {{ $notification->markAsRead() }}
                                    @endif
                                </tr>
                            @endforeach
                        @else
                            <tr>
                                <td colspan="3" class="text-center">No notifications found</td>
                            </tr>
                        @endif
                    </tbody>
                </table>
            </div>
        </div>
    </div>

@endsection