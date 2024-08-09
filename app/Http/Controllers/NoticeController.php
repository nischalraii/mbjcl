<?php

namespace App\Http\Controllers;

use App\Models\Notice;
use Illuminate\Http\Request;
use Yajra\DataTables\Facades\DataTables;

class NoticeController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        //
        return view('admin.notice.index');

    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        //
        return view('admin.notice.create');
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(Request $request)
    {
        //
        $request->validate([
            'title' => 'required|min:3',
            'content' => 'required',
            'image' => 'nullable|image|mimes:jpeg,png,jpg,gif,svg|max:2048',
            'slug' => 'required',
        ]);

        $data = $request->only(['title', 'content', 'slug']);

        if ($request->hasFile('image')) {
            $originalName = pathinfo($request->image->getClientOriginalName(), PATHINFO_FILENAME);
            $extension = $request->image->getClientOriginalExtension();
            $imageName = $originalName . '_' . now()->format('Ymd_His') . '.' . $extension;
            $request->image->move(public_path('images'), $imageName);
            $data['image'] = $imageName;
        }
        $notice = Notice::create($data);

        return redirect()->route('notice.index')->with('success', 'Notice page created successfully.');
    }

    /**
     * Display the specified resource.
     */
    public function show(string $title)
    {
        //
        $page = Notice::where('slug', $title)->first();
        return view('company.show', compact('page'))->with('sth', $page);
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(string $id)
    {
        //
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, string $id)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(string $id)
    {
        //
    }

    public function data()
    {
        $notice = Notice::all();

        return DataTables::of($notice)
            ->addColumn('action', function ($row) {
                $action = '<a href="' . route('company.edit', $row->slug) . '"><button class="btn btn-primary mr-4 edit">Edit</button></a> &nbsp';
                $action .= '<button data-id="' . $row->id . '" class="btn btn-danger delete">Delete</button>';
                return $action;
            })
            ->rawColumns(['title', 'content', 'image', 'date', 'action'])
            ->make(true);
    }
}
