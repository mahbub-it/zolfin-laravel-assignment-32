<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\User;

class NotificationController extends Controller
{
    public function index()
    {
        // return view('notifications.index');

        $user = auth()->user();

        $notifications = $user->readNotifications;

        return view('notifications.index', compact('notifications'));

    }
}
