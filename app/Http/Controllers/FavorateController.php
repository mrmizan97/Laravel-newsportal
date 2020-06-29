<?php

namespace App\Http\Controllers;

use Brian2694\Toastr\Facades\Toastr;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class FavorateController extends Controller
{
    public function add($post){
        $user= Auth::user();
      $isfavorite=$user->favorite_posts()->where('post_id',$post)->count();

      if($isfavorite==0){
          $user->favorite_posts()->attach($post);
          Toastr::info('Post added to favorite list :)');
          return redirect()->back();
      }else{
            $user->favorite_posts()->detach($post);
            Toastr::info('Post removed from favorite list :)');
            return redirect()->back();
      }

    }
}
