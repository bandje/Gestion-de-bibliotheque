@extends('layouts.app')

@section('content')
<div class="container">
    <h2>Le livre a été bien ajouter</h2>
    <br>
    <a href="{{route('biblio.add_book')}}" class="btn btn-primary" >Ajouter un autre livre</a>
</div>
@endsection
