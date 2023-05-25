<?php

namespace App\Http\Controllers;

use App\Models\Author;
use Illuminate\Http\Request;

class AuthorController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        $authors = Author::paginate(10);

        return view('authors.index')->with('authors', $authors);
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        return view('authors.create', array('author', null));
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        $author = Author::create($request->input());

        if ($author) {
            return redirect()->route('authors.index')->with('authors.create.success'. 'Author created successfully');
        } else {
            return redirect()->back()->with('authors.create.fail'. 'Author could not be added successfully');
        }
    }

    /**
     * Display the specified resource.
     */
    public function show(Author $author)
    {
        return view('authors.create', array('author' => $author))->with('disabled', true);
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(Author $author)
    {
        return view('authors.create', array('author' => $author))->with('disabled', false);
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, Author $author)
    {
        $author->update($request->input());
        return redirect()->route('authors.index')->with('authors.edit.success', 'User updated successfully');
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(Author $author)
    {
        $author->delete();
        return redirect()->back()->with('authors.delete.success', "User deleted successfully");
    }
}
