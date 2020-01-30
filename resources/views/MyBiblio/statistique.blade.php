@extends('layouts.app')

@section('content')
<div class="container">
    <h1><b>Les livres les plus empruntés</b></h1>
    <br>
        <table class="table table-bordered">
                <thead>
                  <tr>
                    <th scope="col">#</th>
                    <th scope="col">Titre du livre</th>
                    <th scope="col">Nombres d'emprunts</th>
                    
                  </tr>
                </thead>
                <tbody>
                    <?php $i=1 ?>
                    @foreach ($livres_lus as $livre)
                        <tr>
                            <th scope="row">{{$i++}} </th>
                            <td>{{$livre->titre_liv}} </td>
                            <td>{{$livre->nbre}} </td>
                        </tr>
                        @endforeach          
                </tbody>
              </table>
            <br>  
            <h1><b>Les meilleurs empreteurs</b></h1>
            <br>

              <table class="table table-bordered">
                    <thead>
                      <tr>
                        <th scope="col">#</th>
                        <th scope="col">Nom des empreteurs</th>
                        <th scope="col">Nombres d'emprunts</th>
                        
                      </tr>
                    </thead>
                    <tbody>
                        <?php $i=1 ?>
                        @foreach ($best_empreteurs as $empreteurs)
                            <tr>
                                <th scope="row">{{$i++}} </th>
                                <td>{{$empreteurs->nom_em}} </td>
                                <td>{{$empreteurs->nbre}} </td>
                            </tr>
                            @endforeach
                            
                           
                       
                      
                    </tbody>
                  </table>

</div>
@endsection
