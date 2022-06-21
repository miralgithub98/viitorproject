<?php

namespace App\Http\Controllers\Auth;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class AuthController extends Controller
{
    //
    public function __construct()
    {
        $this->middleware('guest', ['except' => ['logout', 'getLogout']]);
    }

    public function logout(Request $request)
    {
        Auth::logout();
        //return view('user.index');
        //return redirect->('user.index');
        return redirect()->route('/');
    }
}
