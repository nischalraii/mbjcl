@extends('layouts.admin')

@section('header', "Edit Company {$page->title}")

@section('content')
    <form action="{{ route('company.update', $page->slug) }}" method="post" enctype="multipart/form-data" onsubmit="updateEditorContent()">
        @csrf
        @method('put')
        <div>
            <div class="my-4">
                <label for="title" class="fs-3">Title</label><br>
                <input type="text" class="form-control w-50 rounded-lg" name="title" placeholder="Enter Name" value="{{ $page->title }}">
                @error('title')
                    <p class="text-danger">{{ $message }}</p>
                @enderror
            </div>
            <div class="my-4">
                <label for="content" class="fs-3">Content</label><br>
                <textarea name="content" id="editor" rows="10" class="form-control w-50 rounded-lg" placeholder="Write your content here...">{{ $page->content }}</textarea>
                @error('content')
                    <p class="text-danger">{{ $message }}</p>
                @enderror
            </div>
            <div class="mb-4">
                <label for="image" class="fs-3">Image</label><br>
                <input type="file" class="form-control w-50 rounded-lg mt-4" name="image">
                @error('image')
                    <p class="text-danger">{{ $message }}</p>
                @enderror
            </div>
            <div class="my-4">
                <label for="slug" class="fs-3">Slug</label><br>
                <input type="text" class="form-control w-50 rounded-lg" name="slug" placeholder="Enter Slug" value="{{ $page->slug }}">
                @error('slug')
                    <p class="text-danger">{{ $message }}</p>
                @enderror
            </div>
            <button type="submit" class="btn btn-dark">Update</button>
        </div>
    </form>
@endsection

@section('scripts')
    <script>
        CKEDITOR.replace('editor');
        
        function updateEditorContent() {
            for (let instance in CKEDITOR.instances) {
                CKEDITOR.instances[instance].updateElement();
            }
        }
    </script>
@endsection
