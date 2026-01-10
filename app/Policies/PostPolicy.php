<?php

namespace App\Policies;

use App\Models\User;
use App\Models\Post;
use Illuminate\Auth\Access\HandlesAuthorization;
use Illuminate\Auth\Access\Response;

class PostPolicy
{

    use HandlesAuthorization;

    public function edit_post(User $user, Post $post)
    {
        return $user->id === $post->user_id ? Response::allow() : Response::deny('You are not authorized to edit this post...');
    }
}
