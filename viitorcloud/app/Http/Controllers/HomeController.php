<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\User;

class HomeController extends Controller
{
    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        $this->middleware('auth');
        //verify email
        //$this->middleware(['auth','verified']);
    }

    /**
     * Show the application dashboard.
     *
     * @return \Illuminate\Contracts\Support\Renderable
     */
    public function index()
    {
        return view('home');
    }

    public function useredit($id)
    {
      $user = User::find($id);
        return view('users.edit',compact('user'));
    }

    public function userupdate(Request $request,$id)
    {
        //$user = Auth::user();
        $request->validate([  
            'firstName'=>'required|string|max:100', 
            'lastName'=>'required|string|max:100',   
            'dob'=>'required',
        ]);  
  
        $users = User::find($id);
        $users->first_name=$request->firstName;
        $users->last_name=$request->lastName;
        $users->dob=$request->dob;
        $users->save();
    
        return view('users.show',compact('users'));
    }
}
