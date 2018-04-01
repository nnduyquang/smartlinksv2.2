<div id="tuyen-dung" class="col-md-12">
    <div class="row">
        <div class="container">
            <div id="td-info" class="col-md-12">
                <div class="row">
                    <p>{!! $data['tuyendungMain']->description !!}</p>
                </div>
            </div>
            <div id="td-content" class="col-md-12">
                <div class="row">
                    @foreach( $data['tuyendungs'] as $key=>$data)
                        <div class="one-item col-md-12">
                            <div class="row">
                                <div class="col-md-3">
                                    <a href="{{URL::to('tuyen-dung/'.$data->path)}}">
                                        {{ Html::image($data->image,'',array('class'=>'dvBanner')) }}
                                    </a>
                                </div>
                                <div class="col-md-9">
                                    <a href="{{URL::to('tuyen-dung/'.$data->path)}}">
                                        <p>{{$data->title}}</p>
                                    </a>
                                    {!! $data->description!!}
                                </div>
                            </div>
                        </div>
                    @endforeach
                </div>
            </div>
        </div>
    </div>
</div>
