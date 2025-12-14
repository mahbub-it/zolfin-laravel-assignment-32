@extends('admin.master-admin')

@section('content')

    @include('admin.left-sidemenu')
    <!-- partial -->
    <div class="main-panel">
        <div class="content-wrapper">
            <div class="row">

                <div class="col-lg-12 grid-margin stretch-card">
                    <div class="card">
                        <div class="card-body">

                            <h4 class="card-title">Edit Post</h4>
                            <hr>
                            <form class="forms-sample" method="POST" action="{{route('admin.post.update', $post->id)}}">
                                @csrf
                                @method('PUT')
                                <div class="form-group">
                                    <label for="posttitle">Post Title</label>
                                    <input type="text" class="form-control" id="posttitle" placeholder="Post Title">
                                </div>
                                <div class="form-group">
                                    <label>Post Thumbnail</label>
                                    <input type="file" name="img[]" class="file-upload-default">
                                    <div class="input-group col-xs-12">
                                        <input type="text" class="form-control file-upload-info" placeholder="Upload Image">
                                        <span class="input-group-append">
                                            <button class="file-upload-browse btn btn-info" type="button">Upload</button>
                                        </span>
                                    </div>
                                </div>
                                <div class="form-group">
                                    <label for="postexcerpt">Post Excerpt</label>
                                    <textarea class="form-control" id="postexcerpt" rows="2"></textarea>
                                </div>
                                <div class="form-group">
                                    <label for="postcontent">Post Content</label>
                                    <textarea class="form-control" id="postcontent" rows="2"></textarea>
                                </div>
                                <div class="form-group">
                                    <label for="postcategory">Post Category</label>
                                    <select class="form-control">
                                        <option value="">Category 1</option>
                                        <option value="">Category 2</option>
                                        <option value="">Category 3</option>
                                    </select>
                                </div>

                                <button type="submit" class="btn btn-success mr-2">Edit Post</button>
                                <button type="reset" class="btn btn-light">Cancel</button>
                            </form>
                        </div>

                    </div>
                </div>
            </div>
        </div>
        <!-- content-wrapper ends -->
@endsection('content')