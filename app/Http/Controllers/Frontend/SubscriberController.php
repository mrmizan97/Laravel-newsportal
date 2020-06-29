<?php

namespace App\Http\Controllers\Frontend;

use App\Http\Controllers\Controller;
use App\Subscriber;
use Brian2694\Toastr\Facades\Toastr;
use Illuminate\Http\Request;

class SubscriberController extends Controller
{
    public function store(Request $request){
       $this->validate($request,[
           'email'=> 'required|email|unique:subscribers'
       ]);
       $sub=new Subscriber();
       $sub->email=$request->email;
       $sub->save();
       Toastr::success('Thank you ! you have subscribed us :)');
       return  redirect()->back();
    }
}
