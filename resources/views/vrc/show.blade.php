
 @extends('layouts.app')

@section('content')
<div class="container">
    <div class="row">
        <div class="col-md-10 col-md-offset-1">
            <div class="panel panel-default">
                <div class="panel-heading">VRC {{$vrc->divisional}}</div>

                <div class="panel-body" >
                                                
                    <dl class="dl-horizontal">
                          <dt>Province</dt>
                          <dd>{{$vrc->province}}</dd>
                          <dt>Dstrict</dt>
                          <dd>{{$vrc->district}}</dd>
                          <dt>Building</dt>
                          <dd>{{$vrc->building_status}}</dd>
                          <dt>E-mail</dt>
                          <dd>{{$vrc->email}}</dd>
                          <dt>Telphone</dt>
                          <dd>{{$vrc->tele}}</dd>
                          <dt>Fax</dt>
                          <dd>{{$vrc->fax}}</dd>
                    </dl>

                    <button>
                        
                    </button>
                </div>
            </div>
        </div>
    </div>
</div>
@endsection

    