<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class TutorialController extends Controller
{
    public function index(){
        $tasks = [
            'Task number 1',
            'Do my Homeworks',
            'Finish my website'
        ];
        return view('frontpage', compact('tasks'));
    }

    public function task($id){
        $task = Task::find($id);
    }
}
