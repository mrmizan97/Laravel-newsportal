<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\User;
use Brian2694\Toastr\Facades\Toastr;

class AuthorController extends Controller
{
    public function index(){
    $authors=User::authors()
   ->withCount('posts')
   ->withCount('comments')
   ->withCount('favorite_posts')
   ->get();
return view('admin.authors', compact('authors'));
    }
    public function destroy($id){
        $user=User::findorfail($id)->delete();
        Toastr::success('User successfully Deleted :)','Success !');
        return  redirect()->back();

    }
}
