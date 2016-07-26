
 @extends('layouts.app')

@section('content')
<div class="container">
    <div class="row">
        <div class="col-md-10 col-md-offset-1">
            <div class="panel panel-default">
            <div class="panel-heading">VRC Edit <strong>{{$vrc->divisional}}</strong></div>
              <div class="panel-body">
    <form method="POST" action="/vrc/{{$vrc->id}}" class="form-horizontal">
    {{ method_field('PATCH') }}
    {{ csrf_field() }}
     <div class="form-group">
      <label for="email" class="col-sm-2 control-label">Email</label>
      <div class="col-sm-10">
        <input type="email" class="form-control" id="email" placeholder="Email" 
        value="{{$vrc->email}}">
      </div>
      </div>
      <div class="form-group">
      <label for="tele" class="col-sm-2 control-label">Telephone</label>
      <div class="col-sm-10">
        <input type="number" class="form-control" id="tele" placeholder="Telephone" 
        value="{{$vrc->tele}}">
      </div>
      </div>
      <div class="form-group">
      <label for="fax" class="col-sm-2 control-label">Fax</label>
      <div class="col-sm-10">
        <input type="number" class="form-control" id="fax" placeholder="Fax"
        value="{{$vrc->fax}}">
      </div>
      </div>
      <div class="form-group">
        <label for="building_status" class="col-sm-2 control-label">Building Type</label>
        <div class="col-sm-10">
        <select class="form-control" id="building_status">
        @foreach($buld as $b)
          @if ($b->id==$vrc->building_status)
          <option value="{{$b->id}}" selected="true">{{$b->type}}</option>
          @continue;
          @endif
          <option value="{{$b->id}}">{{$b->type}}</option>
        @endforeach
        </select>
        </div>
      </div>
       
      <div class="form-group">
      <div class="col-sm-offset-2 col-sm-10">
        <button type="submit" class="btn btn-primary">Save</button>
      </div>
      </div>
      
    </form>
   
              </div>
            </div>
        </div>
    </div>
</div>
@endsection
        