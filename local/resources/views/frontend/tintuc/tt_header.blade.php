<div id="dv_header">
    <div class="container">
        <div class="col-12 text-center">
            {{ Html::image($page->image,'',array('class'=>'dvBanner')) }}
            <h1 class="title">{{$page->title}}</h1>
            <span class="sub_title"> {!! $page->description !!}</span>
        </div>
    </div>
</div>