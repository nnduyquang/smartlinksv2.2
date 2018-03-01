const {mix} = require('laravel-mix');mix.setPublicPath('../');mix.setResourceRoot('../');mix.styles([    //JS DÙNG CHUNG CHO FRONEND VÀ BACKEND    'bower_components/jquery/dist/jquery.min.js',    'bower_components/bootstrap/dist/js/bootstrap.min.js',    'bower_components/fancybox/dist/jquery.fancybox.min.js',], '../js/core.common.js')//CSS DÙNG CHUNG CHO FRONTEND VÀ BACKEND    .styles([        'bower_components/bootstrap/dist/css/bootstrap.min.css',        'bower_components/font-awesome/web-fonts-with-css/css/fontawesome-all.min.css',        'bower_components/Ionicons/css/ionicons.min.css',        'bower_components/fancybox/dist/jquery.fancybox.min.css',    ], '../css/core.common.css')    //JS CORE FRONTEND    .styles([        'bower_components/nivo-slider/jquery.nivo.slider.pack.js',        'bower_components/owl.carousel/dist/owl.carousel.min.js',        'bower_components/slick-carousel/slick/slick.js',        'bower_components/wow/dist/wow.min.js',        'bower_components/waypoints/lib/noframework.waypoints.min.js',        'bower_components/countUp.js/dist/countUp.min.js',        'bower_components/typed.js/lib/typed.min.js',    ], '../js/core.frontend.js')    //CSS CORE FRONTEND    .styles([        'bower_components/nivo-slider/nivo-slider.css',        'bower_components/owl.carousel/dist/assets/owl.carousel.min.css',        // 'bower_components/owl.carousel/dist/assets/owl.theme.default.min.css',        'bower_components/slick-carousel/slick/slick.css',        'bower_components/animate.css/animate.min.css'    ], '../css/core.frontend.css')    //CSS CORE BACKEND    .styles([        'bower_components/admin-lte/dist/css/AdminLTE.min.css',        'bower_components/admin-lte/dist/css/skins/skin-blue.min.css',        'bower_components/bootstrap-toggle/css/bootstrap-toggle.min.css',        'bower_components/gijgo/dist/combined/css/gijgo.min.css',    ], '../css/core.backend.css')    .sass('resources/assets/sass/frontend.scss', '../css/frontend.css').options({processCssUrls: false})    .sass('resources/assets/sass/loading-waiting.scss', '../css/loading-waiting.css').options({processCssUrls: false})//JS CONTROL FRONTEND    .styles('resources/assets/js/scripts.js', '../js/scripts.js')    //JS CORE BACKEND    .styles([        'bower_components/admin-lte/dist/js/adminlte.min.js',        'bower_components/bootstrap-toggle/js/bootstrap-toggle.min.js',        'bower_components/gijgo/dist/combined/js/gijgo.min.js',    ], '../js/core.backend.js')    .styles([        'resources/assets/js/ulti.js',        'resources/assets/js/be.menu.js',        'resources/assets/js/be.config.slider.js',        'resources/assets/js/be.emp.js',        'resources/assets/js/be.page.js',        'resources/assets/js/be.config.email.js',        'resources/assets/js/be.post.js',        'resources/assets/js/be.tuyendung.js',        'resources/assets/js/be.thunghiem.js',    ], '../js/backend.js')    .sass('resources/assets/sass/backend.scss', '../css/backend.css')//LOGIN 1 JS    .styles([        'resources/assets/js/ulti.js',        'resources/assets/js/login1.js',    ], '../js/login.js')    .styles('resources/assets/js/ulti.js', '../js/ulti.js')    //LOGIN 1 CSS    .styles([        'resources/assets/sass/login1.scss',    ], '../css/login.css')    .styles('resources/assets/js/fe.pagespeedinsight.js', '../js/fe.pagespeedinsight.js')    // .copy([    //     'bower_components/font-awesome/web-fonts-with-css/webfonts/**'    // ], '../webfonts')    // .copy([    //     'bower_components/nivo-slider/themes',    // ], '../css/themes', false)// CKEDITOR CHỈ CHẠY ĐOẠN NÀY 1 LẦN// ===================// .copy('bower_components/ckeditor/adapters', '../js/ckeditor/adapters',false)// .copy('bower_components/ckeditor/lang', '../js/ckeditor/lang',false)// .copy('bower_components/ckeditor/skins', '../js/ckeditor/skins',false)// .copy([//     'bower_components/ckeditor/ckeditor.js',//     'bower_components/ckeditor/config.js',//     'bower_components/ckeditor/contents.css',//     'bower_components/ckeditor/styles.js'// ], '../js/ckeditor',false)// .copy('bower_components/ckeditor/plugins', '../js/ckeditor/plugins',false)