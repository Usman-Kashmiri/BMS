@extends('layouts.app')

@section('content')
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-md-8">
                <div class="card">
                    <div class="card-header">
                        <h2> {{ __('Author Management') }} </h2>
                    </div>
                    <div class="card-body">
                        <h4>
                            @if (isset($author))
                                {{$author->name}} - {{$author->id}}
                                @else
                                {{__('Add Author')}}
                            @endif
                        </h4>
                        <form method="POST" action="@if(isset($author)) {{route('authors.update', $author)}} @else {{route('authors.store')}} @endif">
                            @if(isset($author)) @method('PUT') @endif
                            @csrf
                            <div class="row">
                                <div class="col-4">
                                    <div class="form-group">
                                        <label for="name">Name</label>
                                        <input type="text" @if(session()->get('disabled')) disabled @endif @if(isset($author)) value="{{$author->name}}" @endif class="form-control" name="name">
                                    </div>
                                </div>
                                <div class="col-4">
                                    <div class="form-group">
                                        <label for="email">Email</label>
                                        <input type="email" @if(session()->get('disabled')) disabled @endif @if(isset($author)) value="{{$author->email}}" @endif class="form-control" name="email">
                                    </div>
                                </div>
                                <div class="col-4">
                                    <div class="form-group">
                                        <label for="status">Status</label>
                                        <select class="form-select" name="active" @if(session()->get('disabled')) disabled @endif>
                                            <option value="1" @if(isset($author) && $author->active) selected @endif>Active</option>
                                            <option value="0" @if(isset($author) && !$author->active) selected @endif>Inctive</option>
                                        </select>
                                    </div>
                                </div>
                            </div>
                            <div class="row mt-2  float-right">
                                <div class="col-1">
                                    <input type="submit" class="btn btn-outline-primary">
                                </div>
                                <div class="col-1 ms-2">
                                    <input type="reset" class="btn btn-outline-warning">
                                </div>
                            </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
@endsection
