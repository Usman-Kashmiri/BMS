@extends('layouts.app')

@section('content')
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-md-10">
                <a href="{{ route('authors.create') }}"
                    class="text-right btn btn-inline btn-sm btn-outline-primary">Create</a>
                <div class="card mt-2">
                    <div class="card-header">
                        <div class="row">
                            <h2 class="text-left"> {{ __('Author Management') }} </h2>
                        </div>
                    </div>

                    <div class="card-body">
                        @if (session()->has('authors.delete.success'))
                            <div class="alert alert-dismissable alert-danger" role="alert">
                                <b>{{ session()->get('authors.delete.success') }}</b>
                                <button type="button" class="btn-close" data-bs-dismiss="alert"
                                    aria-label="Close"></button>

                            </div>
                        @endif
                        @if (session()->has('authors.create.success'))
                            <div class="alert alert-dismissable alert-success" role="alert">
                                <b>{{ session()->get('authors.create.success') }}</b>
                                <button type="button" class="btn-close" data-bs-dismiss="alert"
                                    aria-label="Close"></button>

                            </div>
                        @endif
                        @if (session()->has('authors.create.fail'))
                            <div class="alert alert-dismissable alert-danger" role="alert">
                                <b>{{ session()->get('authors.create.fail') }}</b>
                                <button type="button" class="btn-close" data-bs-dismiss="alert"
                                    aria-label="Close"></button>

                            </div>
                        @endif
                        <!-- Edit Session Variables -->
                        @if (session()->has('authors.edit.success'))
                            <div class="alert alert-dismissable alert-success" role="alert">
                                <b>{{ session()->get('authors.edit.success') }}</b>
                                <button type="button" class="btn-close" data-bs-dismiss="alert"
                                    aria-label="Close"></button>

                            </div>
                        @endif
                        <table class="table table-bordered">
                            <thead>
                                <tr>
                                    <th>Name</th>
                                    <th>Email</th>
                                    <th>Status</th>
                                    <th>Created On</th>
                                    <th>Modified On</th>
                                    <th>Actions</th>
                                </tr>
                            </thead>
                            <tbody>
                                @foreach ($authors as $author)
                                    <tr>
                                        <td>{{ $author->name }}</td>
                                        <td>{{ $author->email }}</td>
                                        <td>{{ $author->active ? 'Active' : 'Inactive' }}</td>
                                        <td>{{ $author->created_at->diffForHumans() }}</td>
                                        <td>{{ $author->updated_at->diffForHumans() }}</td>
                                        <td>
                                            <div class="row">
                                                <div class="col-3">
                                                    <a href="{{ route('authors.edit', ['author' => $author]) }}"
                                                        class="btn btn-sm btn-inline btn-outline-warning"><i class="bi bi-pencil"></i></a>
                                                    <a href="{{ route('authors.show', ['author' => $author]) }}"
                                                        class="btn btn-sm btn-inline btn-outline-success"><i class="bi bi-eye"></i></a>
                                                    <form class="form-inline"
                                                        action="{{ route('authors.destroy', ['author' => $author]) }}"
                                                        method="POST">
                                                        @method('DELETE')
                                                        @csrf()
                                                        <button type="submit" value="Del"
                                                            class="btn btn-sm btn-inline btn-outline-danger"><i
                                                                class="bi bi-trash3"></i></button>
                                                    </form>
                                                </div>
                                            </div>
                                        </td>
                                    </tr>
                                @endforeach
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </div>
@endsection
