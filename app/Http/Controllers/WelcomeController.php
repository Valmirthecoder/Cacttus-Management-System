<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Laravel\Socialite\Facades\Socialite;
use Session;

class WelcomeController extends Controller
{
    public function index()
    {
    	return view('welcome');
    }

    public function loginWithOffice()
    {
    	return Socialite::with('live')->redirect();
    }

    public function callback()
    {
    	$user = Socialite::driver('live')->stateless()->user();
    	Session::put('email', $user->email);
    	Session::put('name', $user->name);
    	return redirect()->route('student');
    }
}
