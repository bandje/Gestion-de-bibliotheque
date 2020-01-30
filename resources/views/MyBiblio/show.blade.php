@extends('layouts.app')

@section('content')
<div class="container">
    <div class="row ">
        <div class="col-md-6">
            <img src="/img/{{$livre->image}}" class="show-img" width="100px" alt="">
        </div>
        <div class="col-md-6">
            <ul>
                <li><span class="show-titre">Numéro du livre: </span>{{$livre->num_liv}} </li>
                <li><span class="show-titre">Titre:</span> {{$livre->titre_liv}}</li>
                <li><span class="show-titre">Auteur:</span> {{$livre->auteur}}</li>
                <li><span class="show-titre">Editeur:</span> {{$livre->editeur}}</li>
                <li><span class="show-titre">Nombre d'exemplaire:</span> {{$livre->nbr_exmplaire}}</li>
            </ul>
        </div>
    </div>

    <br>
        <h3>Description</h3>
        <p>{{$livre->description}}</p>
</div>
@endsection
