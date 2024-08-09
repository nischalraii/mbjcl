@extends('layouts.admin')

@section('header', 'Create Company New Page ')

@section('content')
    <form action="{{ route('company.store') }}" method="post" enctype="multipart/form-data">
        @csrf
        <div>
            <div class="my-4">
                <label for="title" class="fs-3">Title</label><br>
                <input type="text" class="form-control w-50 rounded-lg" name="title" placeholder="Enter Name ">
                @error('name')
                    <p class="text-danger">{{ $message }}</p>
                @enderror
            </div>
            <div class="my-4">
                <label for="content" class="fs-3">Content</label><br>
                <textarea name="content" id="editor" rows="10" class=" w-50 rounded-lg" placeholder="Write your content here....."></textarea>
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
                <input type="text" class="form-control w-50 rounded-lg" name="slug" placeholder="Enter Slug ">
                @error('slug')
                    <p class="text-danger">{{ $message }}</p>
                @enderror
            </div>
            <button class="btn btn-dark">Create</button>
        </div>
    </form>
@endsection


@section('scripts')
<script>
    CKEDITOR.replace('editor');
    function updateEditorContent() {
        for (instance in CKEDITOR.instances) {
            CKEDITOR.instances[instance].updateElement();
        }
    }
</script>
@endsection
