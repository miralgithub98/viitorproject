@extends('layouts.app')

@section('content')
<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-8">
            <div class="card">
                <div class="card-header">Blogs
                	 <a class="nav-link" href="{{ route('blogs.create') }}" style="float:right;"><button class="btn btn-primary">Create Blogs</button></a>
                </div>

                <div class="card-body">  
               		@if(count($blogs) > 0)  
					<table class="table table-borderless" id="blogTable">
						
							<thead>
							  <tr>
							  
							    <th>Title</th>
							    <th>Edit</th>
							    <th>Delete</th>
							  </tr>
							</thead>
							<tbody>
									
								@foreach($blogs as $blog)
							
									<tr>
										
										<td>{{ $blog->blog_title }}
										</td>
										<td><a href="{{ route('blogs.edit',$blog->id) }}">Edit</a></td>
										<td>
												<form method="post" action="{{ route('blogs.destroy',$blog->id) }}">
													@csrf
												 {{ method_field('DELETE') }}
													<button class="btn btn-primary">Delete</button>
													
												</form>
											</td>
									</tr>
							   @endforeach
					</tbody>
					</table>
					@else
							<div>
								<h4>No record found.</h4>
							</div>
					@endif

                </div>
            </div>
        </div>
    </div>
</div>
@endsection
@section('script')
<script type="text/javascript">
	$(document).ready(function(){
		$('#blogTable').DataTable({
			//order: [[0, 'desc']],
		});
	});
</script>
@endsection