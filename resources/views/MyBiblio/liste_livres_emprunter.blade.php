@extends('layouts.app')

@section('content')
<div class="container">
        <table class="table table-bordered">
                <thead>
                  <tr>
                    <th scope="col">#</th>
                    <th scope="col">Titre</th>
                    <th scope="col">Auteur</th>
                    <th scope="col">Nombre d'exemplaire en stock</th>
                    <th scope="col">Nombre d'exemplaire emprunter</th>
                  </tr>
                </thead>
                <tbody>
                    <?php $i=1 ?>
                    @foreach ($livres as $livre)
                        <tr>
                            <th scope="row">{{$i++}} </th>
                            <td>{{$livre->titre_liv}} </td>
                            <td>{{$livre->auteur}} </td>
                            <td>{{$livre->nbr_exmplaire}}</td>
                            <td>{{$livre->nbr_fois_emprunter}}</td>
                        </tr>
                        @endforeach
                        
                       
                   
                  
                </tbody>
              </table>
</div>
@endsection
