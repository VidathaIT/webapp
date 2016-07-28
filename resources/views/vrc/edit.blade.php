
 @extends('layouts.app')

@section('content')
<div class="container">
    <div class="row">
        <div class="col-md-10 col-md-offset-1">
            <div class="panel panel-default">
            <div class="panel-heading">VRC Edit <strong>{{$vrc->divisional}}</strong></div>
              <div class="panel-body">
              <form class="form-horizontal" role="form" method="POST" action="/vrc/{{$vrc->id}}" >
                {{ csrf_field() }}
           
                  <div class="form-group{{ $errors->has('email') ? ' has-error' : '' }}">
                  <label for="email" class="col-sm-2 control-label">Email</label>
                          <div class="col-sm-10">
                            <input type="email" name="email" class="form-control" id="email" placeholder="Email" value="{{$vrc->email or old('email')}}">
                            @if ($errors->has('email'))
                                    <span class="help-block">
                                        <strong>{{ $errors->first('email') }}</strong>
                                    </span>
                                @endif
                          </div>
                  </div>
                  <div class="form-group{{ $errors->has('tele') ? ' has-error' : '' }}">
                  <label for="tele" class="col-sm-2 control-label">Telephone</label>
                          <div class="col-sm-10">
                           <input type="number" name="tele" class="form-control" id="tele" placeholder="Telephone" value="{{$vrc->tele or old('tele')}}">
                           @if ($errors->has('tele'))
                                    <span class="help-block">
                                        <strong>{{ $errors->first('tele') }}</strong>
                                    </span>
                                @endif
                          </div>
                  </div>
                  <div class="form-group{{ $errors->has('fax') ? ' has-error' : '' }}">
                  <label for="fax" class="col-sm-2 control-label">Fax</label>
                          <div class="col-sm-10">
                            <input type="number" name="fax" class="form-control" id="fax" placeholder="Fax" value="{{$vrc->fax}} or old('fax')">
                            @if ($errors->has('fax'))
                                    <span class="help-block">
                                        <strong>{{ $errors->first('fax') }}</strong>
                                    </span>
                                @endif
                          </div>
                  </div>
                  <div class="form-group">
                  <label for="building_status" class="col-sm-2 control-label">Building Type</label>
                          <div class="col-sm-10">
                            <select class="form-control" id="building_status" name="building_status">
                            @foreach($buld as $b)
                              <option value="{{$b->id}}" {{ $b->id == $vrc->building_status ? 'selected="selected"' : '' }}>{{$b->type}}</option>
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
        