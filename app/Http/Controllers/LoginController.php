<?php

namespace App\Http\Controllers;

use App\Models\User;
use Illuminate\Foundation\Auth\EmailVerificationRequest;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Auth\Events\Registered;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Password;
use Illuminate\Support\Str;
use Illuminate\Auth\Events\PasswordReset;

class LoginController extends Controller
{
    public function register()
    {
        return view('authentication.register', [
            'title' => 'Register'
        ]);
    }

    public function registerPost(Request $request)
    {
        $info = $request->validate([
            'name' => 'required|max:255',
            'username' => 'required',
            'photo' => 'required|image|mimes:jpeg,png,jpg',
            'email' => 'required|email|unique:users',
            'password' => 'required|min:8',

        ]);

        $user = new User();

        $user->name = $request->name;
        $user->username = $request->username;

        $photo_name = time() . '-' . $request->file('photo')->getClientOriginalName();
        $request->file('photo')->storeAs('/public/images', $photo_name);

        $user->photo = $photo_name;
        $user->email = $request->email;
        $user->password = $request->password;


        if ($user->save()) {

            event(new Registered($user));

            Auth::attempt(['email' => $request->email, 'password' => $request->password]);

            return redirect('/dashboard')->with('message', 'User Created Successfully...');
        }
    }

    public function dashboard()
    {
        return view('admin.dashboard', [
            'title' => 'Dashboard'
        ]);
    }
    public function login()
    {
        return view('authentication.login', [
            'title' => 'Login'
        ]);

    }

    public function loginPost(Request $request)
    {
        $credentials = $request->validate([
            'email' => 'required|email|exists:users,email',
            'password' => 'required|min:8',
        ]);

        if (Auth::attempt($credentials)) {

            $request->session()->regenerate();

            return redirect('dashboard')->with('message', 'Login Successfully');
        } else {
            return redirect('login')->with('wrong', 'The provided credentials do not match our records.');
        }

    }
    public function signout(Request $request)
    {
        Auth::logout();

        $request->session()->invalidate();

        $request->session()->regenerateToken();

        return redirect('/login')->with('message', 'Logout Successfully');
    }

    //Email Verify
    public function emailNotice()
    {
        return view('authentication.varify-notice', [
            'title' => 'Verify Email'
        ]);
    }

    public function emailVerify(EmailVerificationRequest $request)
    {
        $request->fulfill();

        return redirect('/dashboard')->with('message', 'Email Verified Successfully');
    }

    public function emailVerifyPost(Request $request)
    {
        $request->user()->sendEmailVerificationNotification();
        return back()->with('message', 'The verification email has been sent! Please check your email');
    }

    // Reset Password Methods

    public function resetPassword()
    {
        return view('authentication.reset-password-token', ['title' => 'Reset Password']);
    }

    public function resetPasswordPost(Request $request)
    {
        $credentials = $request->validate([
            'email' => 'required|email|exists:users,email'
        ]);

        $status = Password::sendResetLink([
            'email' => $request->only('email')
        ]);

        return $status == Password::RESET_LINK_SENT ?
            back()->with('message', 'The reset password link has been sent! Please check your email') : back()->withErrors(['email' => __($status)]);

    }

    public function resetPasswordToken($token)
    {
        return view('authentication.new-password', ['title' => 'Reset Password Token', 'token' => $token]);
    }

    public function newPasswordPost(Request $request)
    {
        $request->validate([
            'token' => 'required',
            'email' => 'required|email',
            'password' => 'required|min:8|confirmed',
        ]);

        $status = Password::reset(
            $request->only('email', 'password', 'password_confirmation', 'token'),
            function ($user, $password) {
                $user->forceFill([
                    'password' => $password
                ])->setRememberToken(Str::random(60));

                $user->save();

                event(new PasswordReset($user));
            }
        );

        return $status == Password::PASSWORD_RESET ?
            redirect('/login')->with('status', __($status)) :
            back()->withErrors(['email' => __($status)]);
    }
}


// public function goToDB($data)
// {
//     return User::create([
//         'name' => $data['name'],
//         'username' => $data['username'],
//         'photo' => $data['photo'],
//         'email' => $data['email'],
//         'password' => bcrypt($data['password']),
//     ]);
// }
// }

// dd($information);

// $user = new User;
// $user->name = $request->name;
// $user->username = $request->username;
// $user->photo = $request->photo;
// $user->email = $request->email;
// $user->password = bcrypt($request->password);
// $user->save();
// return redirect('/register')->with('message', 'User Created Successfully');
