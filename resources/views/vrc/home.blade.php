
 @extends('layouts.app')

@section('content')
<div class="container">
    <div class="row">
        <div class="col-md-10 col-md-offset-1">
            <div class="panel panel-default">
            <div class="panel-heading">VRC List</div>

                <div class="panel-body" >
                   
                    <ol>
                    @foreach($vrc as $vr)
                    
                        <li><a href="/vrc/{{$vr->id}}">{{$vr->divisional}}</a></li>

                    @endforeach
                    </ol>
                       
                </div>
                   
            </div>
        </div>
    </div>
</div>
@endsection
        
