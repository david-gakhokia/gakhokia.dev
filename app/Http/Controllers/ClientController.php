<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Client;
use App\Feedback;
use App\Service;
use App\Staff;

class ClientController extends Controller
{
    public function index()
    {
        $Clients =  Client::paginate(6);
        $Feedbacks =  Feedback::paginate(6);
        $Services =  Service::paginate(4);
        $Staff =  Staff::paginate(6);

        return view('partners', compact (['Clients','Feedbacks','Services','Staff']));
    }
}
