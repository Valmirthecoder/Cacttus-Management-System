<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Session;

class LoggedInController extends Controller
{
    public function index()
    {
    	return view('student', ['user' => Session::get('name')]);
    }
}
