<nav class="bg-sky-600 text-teal-50">
    <div class="container mx-auto">
        <div class="max-w-screen-xl flex flex-wrap items-center justify-between mx-auto p-1">
            <!-- Main Navigation Items -->
            <div class="hidden w-full md:flex md:w-auto" id="navbar-solid-bg">
                <ul class="flex flex-col md:flex-row md:space-x-8 md:mt-0 md:border-0 bg-gray-50 md:bg-transparent rounded-lg font-medium">
                    <li>
                        <a href="{{route('index')}}" class="block py-2 px-3 md:p-0 text-teal-50 rounded hover:bg-gray-100 md:hover:bg-transparent md:border-0 md:hover:text-orange-500 dark:text-white md:dark:hover:text-blue-500 dark:hover:bg-gray-700 dark:hover:text-white">
                            Home
                        </a>
                    </li>
                    @foreach ($main_items as $item)
                        <li class="relative group">
                            @if ($child_items->where('parent', $item->name)->count())
                            <a href="#" class="block py-2 px-3 md:p-0 text-teal-50 rounded hover:bg-gray-100 md:hover:bg-transparent md:border-0 md:hover:text-orange-500 dark:text-white md:dark:hover:text-blue-500 dark:hover:bg-gray-700 dark:hover:text-white">
                                {{ $item->name }} <i class="fa-solid fa-angle-down text-xs"></i>
                            </a>
                                <ul class="absolute left-0 hidden mt-[-1px] space-y-2 group-hover:block bg-gray-50 rounded-lg shadow-lg transform -translate-y-1" style="z-index: 1;width:200px">
                                    @foreach ($child_items as $child)
                                        @if ($child['parent'] == $item->name)
                                            <li>
                                                <a class="block py-2 px-3 text-zinc-700 rounded hover:bg-gray-100 md:hover:bg-transparent md:border-0 md:hover:text-zinc-950 dark:text-white md:dark:hover:text-blue-500 dark:hover:bg-gray-700 dark:hover:text-white" 
                                                href="{{route($item->slug . '.show',$child->slug)}}">
                                                    {{ $child->name }}
                                                </a>
                                            </li>
                                        @endif
                                    @endforeach
                                </ul>
                            @else
                            <a href="#" class="block py-2 px-3 md:p-0 text-teal-50 rounded hover:bg-gray-100 md:hover:bg-transparent md:border-0 md:hover:text-orange-500 dark:text-white md:dark:hover:text-blue-500 dark:hover:bg-gray-700 dark:hover:text-white">
                                {{ $item->name }} 
                            </a>
                            @endif
                        </li>
                    @endforeach
                </ul>
            </div>
        </div>
    </div>
</nav>



{{-- {{ if children }}
    <li class="nav-item dropdown group">
        <a class="nav-link block py-2 px-3 md:p-0 text-teal-50 rounded hover:text-orange-500 md:hover:bg-transparent md:border-0 md:hover:text-orange-500 " href="#" role="button" aria-expanded="false">
            {{title}}  <i class="fa-solid fa-angle-down text-xs"></i>
        </a>
        <ul class="dropdown-menu hidden group-hover:block">
            {{children}}
            <li><a class="dropdown-item block py-2 px-3 md:p-0 text-zinc-700 rounded hover:bg-gray-100 md:hover:bg-transparent md:border-0 md:hover:text-zinc-950 dark:text-white md:dark:hover:text-blue-500 dark:hover:bg-gray-700 dark:hover:text-white md:dark:hover:bg-transparent" href="{{url}}">{{title}}</a></li>
            {{ /children }}
        </ul>
    </li>
    {{ else }}
    <li><a href="{{url}}" class="block py-2 px-3 md:p-0 text-teal-50 rounded hover:bg-gray-100 md:hover:bg-transparent md:border-0 md:hover:text-orange-500 dark:text-white md:dark:hover:text-blue-500 dark:hover:bg-gray-700 dark:hover:text-white md:dark:hover:bg-transparent">{{title}}</a></li>
    {{ endif }}
    {{ /nav:main_nav }} --}}
