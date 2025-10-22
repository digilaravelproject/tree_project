@extends('layouts.app')
@section('title')
    | {{ $page_title }}
@endsection

@section('content')
    <!-- Menu Navigation ends -->

    <main>
        <div class="container-fluid">
            <div class="row">
                <div class="col-lg-12 col-xxl-12">
                    <div class="row">
                        <div class="col-sm-4">
                            <div class="card eshop-cards">
                                <div class="card-body">
                                    <div class="d-flex justify-content-between align-items-center">
                                        <span class="bg-primary h-40 w-40 d-flex-center b-r-15 f-s-18">
                                            <i class="ph-bold  ph-map-pin-line"></i>
                                        </span>
                                        <div class="dropdown">
                                            <a href="#" class="text-primary" role="button" data-bs-toggle="dropdown"
                                                aria-expanded="false">
                                                Last Month<i class="ti ti-chevron-down ms-1"></i>
                                            </a>
                                            <ul class="dropdown-menu  dropdown-menu-end">
                                                <li><a class="dropdown-item" href="#">Last Month</a></li>
                                                <li><a class="dropdown-item" href="#">Last Week</a></li>
                                                <li><a class="dropdown-item" href="#">Last Year</a></li>
                                            </ul>
                                        </div>
                                    </div>
                                    <div class="d-flex justify-content-between align-items-center">
                                        <div class="flex-shrink-0 align-self-end">
                                            <p class="f-s-16 mb-0">Total Boats</p>
                                            <h5>25,220k <span class="f-s-12 text-danger">-45%</span></h5>
                                        </div>
                                        <div class="visits-chart">
                                            <div id="visitsChart"></div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-sm-4">
                            <div class="card eshop-cards">
                                <div class="card-body">
                                    <div class="d-flex justify-content-between align-items-center">
                                        <span class="bg-secondary h-40 w-40 d-flex-center b-r-15 f-s-18">
                                            <i class="ph-bold  ph-shopping-cart"></i>
                                        </span>
                                        <div class="dropdown">
                                            <a href="#" class="text-secondary " role="button"
                                                data-bs-toggle="dropdown" aria-expanded="false">
                                                Weekly<i class="ti ti-chevron-down ms-1"></i>
                                            </a>
                                            <ul class="dropdown-menu  dropdown-menu-end">
                                                <li><a class="dropdown-item" href="#">Monthly</a></li>
                                                <li><a class="dropdown-item" href="#">Weekly</a></li>
                                                <li><a class="dropdown-item" href="#">Yearly</a></li>
                                            </ul>
                                        </div>
                                    </div>
                                    <div class="d-flex justify-content-between align-items-center position-relative">
                                        <div class="flex-shrink-0 align-self-end">
                                            <p class="f-s-16 mb-0">Active Ghaats</p>
                                            <h5>45,782k <span class="f-s-12 text-success">+65%</span></h5>
                                        </div>
                                        <div class="order-chart">
                                            <div id="orderChart"></div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-sm-4">
                            <div class="card eshop-cards">
                                <div class="card-body">
                                    <div class="d-flex justify-content-between align-items-center">
                                        <span class="bg-success h-40 w-40 d-flex-center b-r-15 f-s-18">
                                            <i class="ph-bold  ph-pulse"></i>
                                        </span>
                                        <div class="dropdown">
                                            <a href="#" class="text-success " role="button" data-bs-toggle="dropdown"
                                                aria-expanded="false">
                                                Today<i class="ti ti-chevron-down ms-1"></i>
                                            </a>
                                            <ul class="dropdown-menu  dropdown-menu-end">
                                                <li><a class="dropdown-item" href="#">Today</a></li>
                                                <li><a class="dropdown-item" href="#">Tomorrow</a></li>
                                                <li><a class="dropdown-item" href="#">Last Week</a></li>
                                            </ul>
                                        </div>
                                    </div>
                                    <div class="d-flex justify-content-between align-items-center">
                                        <div class="flex-shrink-0 align-self-end">
                                            <p class="f-s-16 mb-0">Districts Covered</p>
                                            <h5>45k</h5>
                                        </div>
                                        <div class="activity-chart">
                                            <div id="activityChart"></div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>

                    </div>
                </div>












            </div>

        </div>
    </main>
@endsection
