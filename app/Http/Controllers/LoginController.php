<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\User;

class LoginController extends Controller
{
    public function register()
    {
        return view('login.register', [
            'title' => 'Register'
        ]);
    }

    public function registerPost(Request $request)
    {
        $user = User::create([
            'name' => $request->name,
            'username' => $request->username,
            'photo' => $request->photo,
            'email' => $request->email,
            'password' => bcrypt($request->password),
        ]);
        return redirect('/register')->with('message', 'User Created Successfully');
        // $user = new User;
        // $user->name = $request->name;
        // $user->username = $request->username;
        // $user->photo = $request->photo;
        // $user->email = $request->email;
        // $user->password = bcrypt($request->password);
        // $user->save();
        // return redirect('/register')->with('message', 'User Created Successfully');
    }
}
