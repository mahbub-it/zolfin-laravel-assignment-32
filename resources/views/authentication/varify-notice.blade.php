@extends('components.common-layout')

@section('content')

    <!-- Banner -->
    <div class="zol-banner zol-banner--blog t-pt-150 t-pb-150">
        <div class="container">
            <div class="row justify-content-center">
                <div class="col-md-8 text-center">
                    <h2 class="mt-0 t-text-light">
                        {{ $title }}
                    </h2>
                    <ul class="t-list breadcrumbs d-flex justify-content-center align-items-center">
                        <li class="breadcrumbs__list">
                            <a href="{{ route('home')}}"
                                class="t-link breadcrumbs__link t-link--light-alpha text-capitalize">
                                home
                            </a>
                        </li>
                        <li class="breadcrumbs__list">
                            <a href="{{ route('blog')}} "
                                class="t-link breadcrumbs__link t-link--light-alpha text-capitalize">
                                {{ $title }}
                            </a>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
    </div>

    <div class="t-pt-120 t-pb-120">
        <div class="container">
            <div class="row justify-content-center">
                <div class="col-lg-10 col-xl-8">
                    <div class="row">
                        <div class="col">

                            @if(session()->has('message'))
                                <div class="alert alert-success">
                                    {{ session('message') }}
                                </div>
                            @endif

                            <div class="alert alert-success">
                                <p class="text-center text-success mt-20">You must verify your email!</p>
                                <p class="text-center text-success mt-7">If you not received the verification email, Please
                                    click below button to verify your email</p>
                                <form class="mt-7 d-flex justify-content-center" action="{{ route('verification.send') }}"
                                    method="POST">
                                    @csrf
                                    <button type="submit" class="btn btn-primary mt-7">Resend Verify Email</button>
                                </form>
                            </div>

                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

@endsection