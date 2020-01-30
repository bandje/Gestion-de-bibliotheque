@extends('layouts.app')

@section('content')
<div class="container">
    @include('MyBiblio._success') 
    @include('MyBiblio._errors') 
        <div class="card">
                <div class="card-header">
                 Emprunter un Livre
                </div>
                <div class="card-body">
                        <form method="POST" enctype="multipart/form-data" action="{{url("insert.emprunt")}} ">
                            
                            {{ csrf_field()}}
        
                            <div class="form-group">
                                <label for="num_em">Numéro de l'abonné </label>
                                <input type="text" class="form-control" id="num_em" name="num_em"  >
                            </div>
                                    
                            <div class="form-group">
                                <label for="title">Titre Du livre</label>
                                <input type="text" class="form-control" id="title" name="title"  >
                            </div>
                            
                            <div class="form-group">
                                <label for="num_liv">Numéro du Livre </label>
                                <input type="text" class="form-control" id="num_liv" name="num_liv"  >
                            </div>
                            
                           
                            
                            <button type="submit" class="btn btn-primary">Enregistrer</button>
                        </form>
                  
                </div>
              </div>
        
</div>
@endsection