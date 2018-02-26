<!DOCTYPE Html>
<Html lang="en-US" class="lang-en_US" xmlns="http://www.w3.org/1999/html" xmlns="http://www.w3.org/1999/html">
<meta http-equiv="content-type" content="text/Html;charset=UTF-8"/><!-- /Added by HTTrack -->
<head prefix="og: http://ogp.me/ns# fb: http://ogp.me/ns/fb# article: http://ogp.me/ns/article#">
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <title>Smartlinks</title>
    <meta name="csrf-token" content="{{ csrf_token() }}">
    <meta name="keywords" content="">
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width">
    {{ Html::style('css/core.common.css') }}
    {{ Html::style('css/core.frontend.css') }}
    {{ Html::style('css/frontend.css') }}
    {{ Html::style('css/themes/default/default.css') }}
    @yield('styles')
</head>
<body>
<header id="header">

</header>
<div id="blurrMe">
    @include('frontend.demo.xulynuocthai.m-menu')
    @include('frontend.demo.xulynuocthai.menu')
    @yield('slider')
    @yield('container')

</div>
@include('frontend.demo.xulynuocthai.m-sidebar')
<div class="footer">
    @include('frontend.demo.xulynuocthai.footer')
</div>
{{ Html::script('js/core.common.js') }}
{{ Html::script('js/core.frontend.js') }}
<script type="text/javascript">
    $.ajaxSetup({
        headers: {
            'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
        }
    });
</script>
@yield('scripts')
{{ Html::script('js/scripts.js') }}
<div class="callback hidden-lg hidden-md">
    <div class="phone_animation">
        <div class="phone_animation_circle"></div>
        <div class="phone_animation_circle_fill"></div>
        <a href="tel:02866830091" class="phone_animation_circle_fill_img"><i class="fa fa-phone" aria-hidden="true"></i></a>
    </div>
</div>
<!--Start of Tawk.to Script-->
{{--<script type="text/javascript">--}}
{{--var Tawk_API=Tawk_API||{}, Tawk_LoadStart=new Date();--}}
{{--(function(){--}}
{{--var s1=document.createElement("script"),s0=document.getElementsByTagName("script")[0];--}}
{{--s1.async=true;--}}
{{--s1.src='https://embed.tawk.to/57f1af284a427d15742d30d4/default';--}}
{{--s1.charset='UTF-8';--}}
{{--s1.setAttribute('crossorigin','*');--}}
{{--s0.parentNode.insertBefore(s1,s0);--}}
{{--})();--}}
{{--</script>--}}
<!--End of Tawk.to Script-->

<!-- Global Site Tag (gtag.js) - Google Analytics -->
{{--<script async src="https://www.googletagmanager.com/gtag/js?id=UA-105806900-1"></script>--}}
{{--<script>--}}
{{--window.dataLayer = window.dataLayer || [];--}}
{{--function gtag(){dataLayer.push(arguments)};--}}
{{--gtag('js', new Date());--}}

{{--gtag('config', 'UA-105806900-1');--}}
{{--</script>--}}

</body>

</Html>