
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
                          <dd>{{$vrc->buildingtyp->type}}</dd>
                          <dt>E-mail</dt>
                          <dd>{{$vrc->email}}</dd>
                          <dt>Telphone</dt>
                          <dd>{{$vrc->tele}}</dd>
                          <dt>Fax</dt>
                          <dd>{{$vrc->fax}}</dd>
                    </dl>

                    <a href="/vrc" class="btn btn-primary active" role="button">Go Back</a>
                    <a href="/vrc/{{$vrc->id}}/edit" class="btn btn-primary " role="button">Edit</a>
                </div>
            </div>
        </div>
    </div>
</div>
@endsection

    