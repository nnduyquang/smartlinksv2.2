<div id="dv_header">
    <div class="container">
        <div class="col-12 text-center">
            {{ Html::image($data['postMain']->image,'',array('class'=>'dvBanner')) }}
            <h1 class="title">{{$data['postMain']->name}}</h1>
            <span class="sub_title"> {!! $data['postMain']->description !!}</span>
        </div>
    </div>
</div>