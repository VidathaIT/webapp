
 @extends('layouts.app')

@section('content')
<div class="container">
    <div class="row">
        <div class="col-md-10 col-md-offset-1">
            <div class="panel panel-default">
            <div class="panel-heading">VRC Edit <strong>{{$vrc->divisional}}</strong></div>

                <div class="panel-body" >
                         
                          <form method="POST" action="" class="form-horizontal">
                             <div class="form-group">
                                <label for="inputEmail" class="col-sm-2 control-label">Email</label>
                                <div class="col-sm-10">
                                  <input type="email" class="form-control" id="inputEmail" placeholder="Email">
                                </div>
                              </div>
                              <div class="form-group">
                                <label for="inputTelephone" class="col-sm-2 control-label">Telephone</label>
                                <div class="col-sm-10">
                                  <input type="number" class="form-control" id="inputTelephone" placeholder="Telephone">
                                </div>
                              </div>
                              <div class="form-group">
                                <label for="inputFax" class="col-sm-2 control-label">Fax</label>
                                <div class="col-sm-10">
                                  <input type="number" class="form-control" id="inputFax" placeholder="Fax">
                                </div>
                              </div>
                              <div class="form-group">
                                  <label for="sel1">Building Type</label>
                                  <select class="form-control" id="inputBuildTyp">
                                    <option>1</option>
                                    <option>2</option>
                                    <option>3</option>
                                    <option>4</option>
                                  </select>
                                </div>
                               
                              <div class="form-group">
                                <div class="col-sm-offset-2 col-sm-10">
                                  <button type="submit" class="btn btn-primary">Edit</button>
                                </div>
                              </div>
                              
                          </form>
                          
                   
                       
                </div>
                   
            </div>
        </div>
    </div>
</div>
@endsection
        