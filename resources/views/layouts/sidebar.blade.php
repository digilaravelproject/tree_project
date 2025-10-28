<body>
    <div class="app-wrapper">

        <div class="loader-wrapper">
            <div class="loader_16"></div>
        </div>

        <!-- Menu Navigation starts -->
        <nav>
            <div class="app-logo">
                <a class="logo d-inline-block " href="index.html">

                    <img src="{{ asset('assets/images/logo/1.png') }}" alt="#">
                </a>



                <span class="bg-light-primary toggle-semi-nav">
                    <i class="ti ti-chevrons-right f-s-20"></i>
                </span>
            </div>
            <div class="app-nav" id="app-simple-bar">

                <ul class="main-nav p-0 mt-2">

                    <li class="no-sub">
                        <a class="" href="{{ route('home') }}">
                            <i class="ph-duotone  ph-house-line"></i> Dashboard
                        </a>
                    </li>
                    {{-- @can('district_dashboard')
                        <li class="no-sub">
                            <a class="" href="{{ route('district.dashboard') }}">
                                <i class="ph-duotone  ph-map-pin-line"></i> Project
                            </a>
                        </li>
                    @endcan --}}
                    {{-- 
                    <li>
                        <a class="" data-bs-toggle="collapse" href="#dashboard" aria-expanded="false">
                            <!-- <i class="ph-duotone  ph-house-line"></i> -->
                            <i class="ph-duotone ph-boat"></i>
                            Project
                            <span class="badge text-bg-success badge-notification ms-2">3</span>
                        </a>
                        <ul class="collapse" id="dashboard">
                            <li><a href="{{ route('add.project') }}">Add Project</a></li>
                            <li><a href="{{ route('project.list') }}">Project List</a></li>
                            <li><a href="{{ route('project.list') }}">Project Setting</a></li>
                        </ul>
                    </li> --}}
                    @canany(['project', 'project.store', 'project.create', 'project.edit', 'project.view',
                        'project.delete'])
                        <li>
                            <a class="" data-bs-toggle="collapse" href="#dashboard" aria-expanded="false">
                                <i class="ph-duotone ph-boat"></i>
                                Project
                                <span class="badge text-bg-success badge-notification ms-2">3</span>
                            </a>
                            <ul class="collapse" id="dashboard">
                                @can('project.store')
                                    <li><a href="{{ route('add.project') }}">Add Project</a></li>
                                @endcan

                                @can('project.list')
                                    <li><a href="{{ route('project.list') }}">Project List</a></li>
                                @endcan

                                @can('project.list')
                                    <li><a href="{{ route('project.list') }}">Project Setting</a></li>
                                @endcan
                            </ul>
                        </li>
                    @endcanany


                    <li>
                        <a class="" data-bs-toggle="collapse" href="#ghaats" aria-expanded="false">
                            <i class="ph-duotone  ph ph-waves"></i>
                            Tree Data
                            <span class="badge text-bg-success badge-notification ms-2">2</span>
                        </a>
                        <ul class="collapse" id="ghaats">
                            <li><a href="{{ route('add.tree') }}">Ragister New Tree </a></li>
                            <li><a href="{{ route('tree.list') }}">Tree List</a></li>
                        </ul>
                    </li>


                    <li>
                        <a class="" data-bs-toggle="collapse" href="#Jacket" aria-expanded="false">
                            <i class="ph-duotone ph-shield"></i>
                            Map
                            <span class="badge text-bg-success badge-notification ms-2">1</span>
                        </a>
                        <ul class="collapse" id="Jacket">
                            <li><a href="{{ route('tree.map') }}">Tree On Map</a></li>
                            {{-- <li><a href="{{ route('distribution.tracking') }}">Distribution Tracking</a></li> --}}
                        </ul>
                    </li>

                    <li>
                        <a class="" data-bs-toggle="collapse" href="#Inspection" aria-expanded="false">
                            <i class="ph-duotone ph-magnifying-glass"></i>
                            Master
                            <span class="badge text-bg-success badge-notification ms-2">1</span>
                        </a>
                        <ul class="collapse" id="Inspection">
                            <li><a href="{{ route('report') }}">Report</a></li>
                            {{-- <li><a href="{{ route('Records') }}">Inspection Records</a></li>
                            <li><a href="{{ route('Schedule') }}">Inspection schedule</a></li>
                            <li><a href="{{ route('Analytics') }}">Analytics</a></li> --}}
                        </ul>
                    </li>
                    @can('user_management')
                        <li>
                            <a class="" data-bs-toggle="collapse" href="#User" aria-expanded="false">
                                <i class="ph-duotone ph-user"></i>
                                User Management
                                <span class="badge text-bg-success badge-notification ms-2">3</span>
                            </a>
                            <ul class="collapse" id="User">
                                @can('user_management.role.view')
                                    <li><a href="{{ route('roles.index') }}">Role</a></li>
                                @endcan
                                @can('user_management.user.create')
                                    <li><a href="{{ route('create.user') }}">Create User</a></li>
                                @endcan
                                @can('user_management.user.view')
                                    <li><a href="{{ route('user.list') }}">User List</a></li>
                                @endcan
                            </ul>
                        </li>
                    @endcan
                    {{-- <li>
                        <a class="" data-bs-toggle="collapse" href="#other" aria-expanded="false">
                            <!-- <i class="ph-duotone  ph-house-line"></i> -->
                            <i class="ph-duotone ph-boat"></i>
                            Other
                            <span class="badge text-bg-success badge-notification ms-2">6</span>
                        </a>
                        <ul class="collapse" id="other">
                            <li><a href="{{ route('rate.app') }}">Rate App</a></li>
                            <li><a href="{{ route('faqs.index') }}">FAQ</a></li>
                            <li><a href="{{ route('videos.index') }}">Video Tutorial</a></li>
                            <li><a href="{{ route('contacts.index') }}">Contact Us</a></li>
                            <li><a href="{{ route('notes.index') }}">Note</a></li>
                            <li><a href="{{ route('privacy.index') }}">Privacy Policy</a></li>

                        </ul>
                    </li> --}}
                    @canany(['other', 'other.faqs', 'other.videos', 'other.contacts', 'other.notes', 'other.privacy'])
                        <li>
                            <a class="" data-bs-toggle="collapse" href="#other" aria-expanded="false">
                                <i class="ph-duotone ph-boat"></i>
                                Other
                                <span class="badge text-bg-success badge-notification ms-2">6</span>
                            </a>
                            <ul class="collapse" id="other">
                                @can('other')
                                    <li><a href="{{ route('rate.app') }}">Rate App</a></li>
                                @endcan

                                @can('other.faqs')
                                    <li><a href="{{ route('faqs.index') }}">FAQ</a></li>
                                @endcan

                                @can('other.videos')
                                    <li><a href="{{ route('videos.index') }}">Video Tutorial</a></li>
                                @endcan

                                @can('other.contacts')
                                    <li><a href="{{ route('contacts.index') }}">Contact Us</a></li>
                                @endcan

                                @can('other.notes')
                                    <li><a href="{{ route('notes.index') }}">Note</a></li>
                                @endcan

                                @can('other.privacy')
                                    <li><a href="{{ route('privacy.index') }}">Privacy Policy</a></li>
                                @endcan
                            </ul>
                        </li>
                    @endcanany


                    <li class="no-sub">
                        <a class="" href="mailto:teqlathemes@gmail.com">
                            <i class="ph-duotone  ph-chats"></i> Support
                        </a>
                    </li>
                </ul>
            </div>

            <div class="menu-navs">
                <span class="menu-previous"><i class="ti ti-chevron-left"></i></span>
                <span class="menu-next"><i class="ti ti-chevron-right"></i></span>
            </div>

        </nav>
