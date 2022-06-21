@extends('layouts.app')

@section('content')
<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-8">
            <div class="card">
                <div class="card-header">Details</div>

                <div class="card-body">    
					First name - {{ $users->first_name }} <br>
					Last name - {{ $users->last_name }}<br>
					Email - {{ $users->email }}<br>
					Phone - {{ $users->dob }}<br>
                    
                </div>
            </div>
        </div>
    </div>
</div>
@endsection
