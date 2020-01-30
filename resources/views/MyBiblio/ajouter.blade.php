@extends('layouts.app')

@section('content')
<div class="container">
        @include('MyBiblio._success')
        <div class="card">
                <div class="card-header">
                 Ajouter un Livre
                </div>
                <div class="card-body">
                        <form method="POST" enctype="multipart/form-data" action="{{url("insert.livre")}} ">
                            
                            {{ csrf_field()}}
        
                            <div class="form-group">
                                <label for="Image">Image</label>
                                <input type="file" name="image_id" class="form-control-file" id="Image">
                            </div>
                                    
                            <div class="form-group">
                                <label for="title">Titre Du livre</label>
                                <input type="text" class="form-control" id="title" name="title"  >
                            </div>
                            <div class="form-group">
                                <label for="auteur">Auteur </label>
                                <input type="text" class="form-control" id="auteur" name="auteur"  >
                            </div>
                            <div class="form-group">
                                <label for="editeur">Editeur </label>
                                <input type="text" class="form-control" id="editeur" name="editeur"  >
                            </div>
                            <div class="form-group">
                                <label for="nombre">Nombre d'exemplaire </label>
                                <input type="text" class="form-control" id="nombre" name="nombre" >
                            </div>
                           
                            <div class="form-group">
                                <label for="description">Description</label>
                                <textarea class="form-control" name="description" id="description" rows="3"></textarea>
                            </div>
                            <button type="submit" class="btn btn-primary">Valider</button>
                        </form>
                  
                </div>
              </div>
        
</div>
@endsection