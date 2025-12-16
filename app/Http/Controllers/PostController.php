<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Post;
use App\Models\Category;

class PostController extends Controller
{
    /**
     * Display a listing of the resource.
     * For all port showing
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $keyword = request('search');
        $title = "All Posts";

        $posts = Post::where('title', 'like', '%' . $keyword . '%')
            ->orWhere('excerpt', 'like', '%' . $keyword . '%')
            ->orWhere('content', 'like', '%' . $keyword . '%')
            ->orderBy('id', 'desc')->paginate(6);

        return view('admin.posts', [
            'posts' => $posts,
            'keyword' => $keyword,
            'title' => $title
        ]);
    }

    /**
     * Show the form for creating a new resource.
     * For insert, that keeping port 
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        $categories = Category::all();

        return view('admin.create-post', [
            'categories' => $categories,
            'title' => 'Create New Post'
        ]);
    }

    public function store(Request $request)
    {
        request()->validate([
            'title' => 'required',
            'content' => 'required',
            'excerpt' => 'required',
            'thumbnail' => 'required',

        ]);
        $request['slug'] = implode('-', explode(' ', $request->title)) . '-' . time();
        $request['user_id'] = auth()->user()->id;
        $request['views'] = 0;


        Post::create($request->all());

        return redirect()->route('admin.posts')->with('message', 'Post has been published...');
    }

    /**
     * Display the specified resource.
     * For single post showing
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     * For post editing
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit(Post $post)
    {
        $category = Category::all();
        return view('admin.edit-post', [
            'post' => $post,
            'categories' => $category,
            'cat' => $post->category
        ]);
    }
    public function update(Request $request, Post $post)
    {
        $post->update(request()->all());
        return back()->with('success', 'Post has been updated...');
    }

    /**
     * Remove the specified resource from storage.
     * For delete the data
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy(Post $post)
    {
        $post->delete();
        return back()->with('success', 'Post has been deleted...');
    }
}
