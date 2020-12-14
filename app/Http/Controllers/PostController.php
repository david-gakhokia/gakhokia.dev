<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Post;
class PostController extends Controller
{

    public function index()
    {
        $Posts = Post::latest()->paginate(6);
        return view('pages.posts.index', compact ('Posts'));
    }

    public function show($slug)
    {
        $Post = Post::where('slug', $slug)->first();

        $previous = Post::where('slug', '<', $Post->slug)->max('slug');

        $next = Post::where('slug', '>', $Post->slug)->min('slug');

        return view('posts.show')->with('previous', $previous)->with('next', $next)->with('Post', $Post);       
    }
}
