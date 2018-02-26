<div id="tin-tuc" class="col-md-12">
    <div class="row">
        <div class="container">
            <div id="tt-content" class="col-md-12">
                <div id="tt-header" class="col-md-12">
                    <div class="row">
                        <div class="tt-content-detail">{!! $page->content !!}</div>
                    </div>
                </div>
                <div id="tt-group-info" class="col-md-12">
                    <div class="container">
                        <div class="row row-flex row-flex-wrap">
                            @foreach($tintucs as $key=>$data)
                                <div class="one-item col-md-3">
                                    <a href="{{URL::to('tin-tuc/'.$data->path)}}">
                                        <div class="flex-col">
                                            <div class=""> {{ Html::image($data->image,'',array('class'=>'dvBanner')) }}</div>
                                            <div class="panel-body flex-grow">{{$data->title}}</div>
                                        </div>
                                    </a>
                                </div>
                            @endforeach
                        </div><!--/row-->
                    </div><!--/container-->
                </div>
            </div>
        </div>
    </div>
</div>
