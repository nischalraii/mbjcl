@extends('layouts.front2')

@section('content')
<div class="container-lg py-4">
    <div class="text-5xl py-4 mb-4 font-medium text-orange-500">
        {{ $page->title }}
    </div>

    @if(isset($page->image))
        <div class="flex mb-4">
            @if(str_contains($page->content,'null'))
            <div>
                <img src="{{ asset('images/' . $page->image) }}" style="width: 100%;" class="mx-auto" alt="{{ $page->title }}">
            </div>
            @else
            <div>
                <img src="{{ asset('images/' . $page->image) }}" style="width: 70%;" class="mx-auto" alt="{{ $page->title }}">
            </div>
            <div class="text-justify w-50 my-auto">
                
                {!!$page->content!!}
            </div>
            @endif
        </div>
    @else
        <div class="flex mb-4">
            <div class="text-justify w-75 my-auto">
                {!! $page->content !!}
            </div>
        </div>
    @endif
</div>
@endsection
