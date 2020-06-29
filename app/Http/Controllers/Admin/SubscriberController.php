<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Subscriber;
use Brian2694\Toastr\Facades\Toastr;
use Illuminate\Http\Request;

class SubscriberController extends Controller
{
    public function index(Request $request)
    {
        $subscribers=Subscriber::latest()->get();
        return view('admin.subscriber',compact('subscribers'));

    }
    public function destroy($id){
        $sub=Subscriber::findorfail($id);
        $sub->delete();
        Toastr::success('Subscriber successfully Deleted :)');
        return redirect()->back();
    }
}

