<?php

namespace App\Http\Controllers;

use App\Models\Blog;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class BlogController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        //
          //$blogs = Blog::all();
        // dd($blogs);
          //$products = Product::with('skus')->get();
        $user = Auth::user();
        $blogs = Blog::with('users')->where('user_id',$user->id)->get();
         //$blogs = Blog::with('users')->get();
        
        return view('blogs.list',compact('blogs'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        //
         return view('blogs.create');
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        //
        $user = Auth::user();
        //dd($user->id);
        $request->validate([  
            'blogTitle'=>'required',
        ]);  
  
        $blogs = new Blog;
        $blogs->blog_title = $request->blogTitle;
        $blogs->user_id= $user->id;
        $blogs->save();
        // return view('employees.index');
          //return view('blogs.list',compact('blogs'));
           return redirect()->route('blogs.index');
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Models\Blog  $blog
     * @return \Illuminate\Http\Response
     */
    public function show(Blog $blog)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Models\Blog  $blog
     * @return \Illuminate\Http\Response
     */
    public function edit(Blog $blog)
    {
        //
        $blog = Blog::find($blog->id);
        return view('blogs.edit',compact('blog'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Models\Blog  $blog
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Blog $blog)
    {
        //
         $user = Auth::user();

        $request->validate([  
            'blogTitle'=>'required',    
        ]);  
  
        $blogs = Blog::find($blog->id);
        $blogs->blog_title=$request->blogTitle;
        $blogs->user_id = $user->id;
        $blogs->save();
       
         return redirect()->route('blogs.index');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Models\Blog  $blog
     * @return \Illuminate\Http\Response
     */
    public function destroy(Blog $blog)
    {
        //
         $blogs = Blog::find($blog->id);
        $blogs->delete();
        return redirect()->route('blogs.index');
    }
}
