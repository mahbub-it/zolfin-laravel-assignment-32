<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Customer;
use Illuminate\Support\Facades\Auth;

class CustomerController extends Controller
{
    public function register()
    {
        return view('customer.register', [
            'title' => 'Register'
        ]);
    }

    public function registerPost(Request $request)
    {
        $info = $request->validate([
            'name' => 'required|max:255',
            'username' => 'required',
            'photo' => 'required|image|mimes:jpeg,png,jpg',
            'email' => 'required|email|unique:customers',
            'password' => 'required|min:8',

        ]);

        $user = new Customer();

        $user->name = $request->name;
        $user->username = $request->username;

        $photo_name = time() . '-' . $request->file('photo')->getClientOriginalName();
        $request->file('photo')->storeAs('/public/images', $photo_name);

        $user->photo = $photo_name;
        $user->email = $request->email;
        $user->password = $request->password;


        if ($user->save()) {

            Auth::guard('customer')->attempt([
                'email' => $request->email,
                'password' => $request->password
            ]);

            return redirect()->route('customer.dashboard');
        }
    }

    public function login()
    {
        return view('customer.login', [
            'title' => 'Login'
        ]);

    }

    public function loginPost(Request $request)
    {
        $credentials = $request->validate([
            'email' => 'required|email|exists:customers,email',
            'password' => 'required|min:8',
        ]);

        if (Auth::guard('customer')->attempt($credentials)) {

            $request->session()->regenerate();

            return redirect()->route('customer.dashboard');
        } else {
            return redirect()->route('customer.login')->with('wrong', 'The provided credentials do not match our records.');
        }
    }

    public function dashboard()
    {
        return view('customer.dashboard', [
            'title' => 'Customer Dashboard'
        ]);
    }

    public function signout(Request $request)
    {
        Auth::guard('customer')->logout();

        $request->session()->invalidate();

        $request->session()->regenerateToken();

        return redirect()->route('customer.login')->with('message', 'You have been logged out! Please login again or got to the Home page.');
    }
}
