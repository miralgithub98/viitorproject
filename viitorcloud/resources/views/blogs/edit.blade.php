@extends('layouts.app')

@section('content')
<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-8">
            <div class="card">
                <div class="card-header">Blogs</div>

                <div class="card-body">    
					<form action="{{ route('blogs.update', $blog->id) }}" method="POST" id="userBlog">
						@csrf
						{{ method_field('PUT') }}  
					  <div class="form-group">
					    <label for="blogTitle">Post Title</label>
					    <input type="text" name="blogTitle" class="form-control" id="blogTitle" placeholder="Enter Title" value="{{ $blog->blog_title }}">
					   <!--  <small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small> -->
					  </div>
					  
					  <button type="submit" class="btn btn-primary">Submit</button>
					</form>

                </div>
            </div>
        </div>
    </div>
</div>
@endsection
@section('script')
<script type="text/javascript">
    if ($("#userBlog").length > 0) {
            $("#userBlog").validate({
                rules: {
                            blogTitle: {
                                required: true,
                                maxlength: 20
                            },
                        },
                messages: {
                            blogTitle: {
                                required: "Please enter Title",
                            },
                        },
                    })  
        }      
</script>
@endsection

