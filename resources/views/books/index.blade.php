@extends('layouts.app')

@section('content')
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-md-10">
                <a href="{{ route('books.create') }}" class="text-right btn btn-inline btn-sm btn-outline-primary">Create</a>
                <div class="card mt-2">
                    <div class="card-header">
                        <div class="row">
                            <h2 class="text-left"> {{ __('Book Management') }} </h2>
                        </div>
                    </div>

                    <div class="card-body">
                        @if (session()->has('books.delete.success'))
                            <div class="alert alert-dismissable alert-danger" role="alert">
                                <b>{{ session()->get('books.delete.success') }}</b>
                                <button type="button" class="btn-close" data-bs-dismiss="alert"
                                    aria-label="Close"></button>

                            </div>
                        @endif
                        @if (session()->has('books.create.success'))
                            <div class="alert alert-dismissable alert-success" role="alert">
                                <b>{{ session()->get('books.create.success') }}</b>
                                <button type="button" class="btn-close" data-bs-dismiss="alert"
                                    aria-label="Close"></button>

                            </div>
                        @endif
                        @if (session()->has('books.create.fail'))
                            <div class="alert alert-dismissable alert-danger" role="alert">
                                <b>{{ session()->get('books.create.fail') }}</b>
                                <button type="button" class="btn-close" data-bs-dismiss="alert"
                                    aria-label="Close"></button>

                            </div>
                        @endif
                        <!-- Edit Session Variables -->
                        @if (session()->has('books.edit.success'))
                            <div class="alert alert-dismissable alert-success" role="alert">
                                <b>{{ session()->get('books.edit.success') }}</b>
                                <button type="button" class="btn-close" data-bs-dismiss="alert"
                                    aria-label="Close"></button>

                            </div>
                        @endif
                        <div class="row">
                            @foreach ($books as $book)
                                <div class="col-4 mb-2">
                                    <div class="card">
                                        <div class="card-header">
                                            {{ $book->name }} - Edition {{ $book->edition }}
                                        </div>
                                        <div class="card-body">
                                            Status: {{ $book->active ? 'Active' : 'Inactive' }}
                                            <br>
                                            Authors: @foreach ($book->authors as $author)
                                                {{ $author->name }},
                                            @endforeach
                                        </div>
                                    </div>
                                </div>
                            @endforeach
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
@endsection
