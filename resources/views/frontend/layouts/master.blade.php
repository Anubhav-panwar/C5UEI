<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="utf-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1" />

  <title>@yield('title', 'Website')</title>

  <meta name="description" content="@yield('meta_description', '')" />
  <meta name="keywords" content="@yield('meta_keywords', '')" />
  <meta name="author" content="@yield('meta_author', '')" />

  <!-- Bootstrap -->
  <link rel="stylesheet" href="{{ asset('assets/css/bootstrap.css') }}" />

  <!-- Theme -->
  <link rel="stylesheet" href="{{ asset('assets/css/swiper-bundle.min.css') }}" />
  <link rel="stylesheet" href="{{ asset('assets/css/odometer.min.css') }}" />
  <link rel="stylesheet" href="{{ asset('assets/css/magnific-popup.min.css') }}" />
  <link rel="stylesheet" href="{{ asset('assets/css/styles.css') }}" />

  <!-- Animation -->
  <link rel="stylesheet" href="{{ asset('assets/css/animate.min.css') }}" />
  <link rel="stylesheet" href="{{ asset('assets/css/animate2.min.css') }}" />
  <link rel="stylesheet" href="{{ asset('assets/css/textanimation.css') }}" />

  <!-- Font -->
  <link rel="stylesheet" href="{{ asset('assets/font/fonts.css') }}" />

  <!-- Icons -->
  <link rel="stylesheet" href="{{ asset('assets/icons/icomoon/style.css') }}" />
  <link rel="stylesheet" href="{{ asset('assets/icons/flaticon/font/flaticon_saylo.css') }}" />
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css">

  <!-- Favicon -->
  <link rel="shortcut icon" href="{{ asset('assets/images/logo1.jpg') }}" />
  <link rel="apple-touch-icon-precomposed" href="{{ asset('assets/images/logo1.jpg') }}" />

  <!-- Vendor CDN -->
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/magnific-popup@1.1.0/dist/magnific-popup.css">
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/swiper@11/swiper-bundle.min.css" />

  @stack('head')
</head>

<body>
  <div id="wrapper">
    @include('frontend.layouts.header')

    <main>
      @yield('content')
    </main>

    @include('frontend.layouts.footer')
  </div>

  @stack('scripts')
</body>
</html>
