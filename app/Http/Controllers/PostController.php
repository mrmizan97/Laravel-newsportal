<?php

namespace App\Http\Controllers;

use App\Category;
use App\Post;
use App\Tag;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Session;

class PostController extends Controller
{
   public function details($slug){

       $post=Post::where('slug',$slug)->approved()->published()->first();

       $blogkey='blog_'.$post->id;
       if (!Session::has($blogkey)) {
           $post->increment('view_count');
           Session::put($blogkey,1);
       }

       $randomposts=Post::approved()->published()->take(4)->inRandomOrder()->get();
       return view('post',compact('post', 'randomposts'));
   }
   public function index(){
         $posts=Post::latest()->approved()->published()->paginate(4);
       return view('posts',compact('posts'));
   }
   public function postByCategory($slug){

      $category=Category::where('slug',$slug)->first();
      $posts= $category->posts()->approved()->published()->get();
      return view('category_posts',compact('posts', 'category'));

   }
   public function postBytag($slug){

      $tag=Tag::where('slug',$slug)->first();
        $posts = $tag->posts()->approved()->published()->get();

      return view('tag_posts',compact('tag','posts'));

   }
}

