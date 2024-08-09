<?php

namespace App\Http\Controllers;

use App\Models\Company;
use Carbon\Carbon;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Yajra\DataTables\Facades\DataTables;

class CompanyController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        //
        return view('admin.company.index');
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        //
        return view('admin.company.create');
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
        $company = Company::create($data);

        return redirect()->route('company.index')->with('success', 'Company page created successfully.');
    }

    /**
     * Display the specified resource.
     */
    public function show(string $title)
    {
        //
        $page = Company::where('slug', $title)->first();
        return view('company.show', compact('page'))->with('sth', $page);
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(string $slug)
    {
        //
        $page = Company::where('slug', $slug)->first();
        return view('admin.company.edit', compact('page'));
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(Request $request, $slug)
    {
        $request->validate([
            'title' => 'required|min:3',
            'content' => 'nullable',
            'image' => 'nullable|image|mimes:jpeg,png,jpg,gif,svg|max:2048',
            'slug' => 'required',
        ]);

        $company = Company::where('slug', $slug)->firstOrFail();

        $data = $request->only(['title', 'content', 'slug']);

        if ($request->hasFile('image')) {
            // Delete the old image if it exists
            if ($company->image && file_exists(public_path('images/' . $company->image))) {
                unlink(public_path('images/' . $company->image));
            }

            // Handle the new image upload
            $originalName = pathinfo($request->image->getClientOriginalName(), PATHINFO_FILENAME);
            $extension = $request->image->getClientOriginalExtension();
            $imageName = $originalName . '_' . now()->format('Ymd_His') . '.' . $extension;
            $request->image->move(public_path('images'), $imageName);
            $data['image'] = $imageName;
        }

        $company->update($data);

        return redirect()->route('company.index', $company->slug)->with('success', 'Company page updated successfully.');
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
        $company = Company::all();

        return DataTables::of($company)
            ->addColumn('action', function ($row) {
                $action = '<a href="' . route('company.edit', $row->slug) . '"><button class="btn btn-primary mr-4 edit">Edit</button></a> &nbsp';
                $action .= '<button data-id="' . $row->id . '" class="btn btn-danger delete">Delete</button>';
                return $action;
            })
            ->rawColumns(['title', 'content', 'image', 'date', 'action'])
            ->make(true);
    }
}
