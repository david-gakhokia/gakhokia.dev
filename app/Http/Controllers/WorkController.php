<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Work;
use App\Education;
use App\Experience;
use App\Skill;
use App\Client;
use App\Post;

class WorkController extends Controller
{
    public function index()
    {
     
    
        $Works = Work::latest()->paginate(50);
        $Education = Education::latest()->paginate(3);
        $Experiences = Experience::latest()->paginate(9);
        $Skills = Skill::latest()->paginate(12);
        $Clients = Client::latest()->paginate(8);
        $Posts = Post::latest()->paginate(6);

    
        return view('works',
            compact([
                    'Works',
                    'Education',
                    'Experiences',
                    'Skills',
                    'Clients',
                    'Posts'
                    ])
                    );
    }
}
