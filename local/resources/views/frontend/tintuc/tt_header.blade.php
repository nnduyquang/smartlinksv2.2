<div id="dv_header">
    <div class="container">
        <div class="col-12 text-center">
            {{ Html::image($data['newsMain']->image,'',array('class'=>'dvBanner')) }}
            <h1 class="title">{{$data['newsMain']->name}}</h1>
            <span class="sub_title"> {!! $data['newsMain']->description !!}</span>
        </div>
    </div>
</div>