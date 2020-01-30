@extends('layouts.app')

@section('content')
<div class="container">
    <div class="row ">
        <div class="col-md-12">
            <form action="{{url("rechercher_livre")}} " method="GET" class="navbar-form pull-right">

                
                <div class="input-group custom-search-form"> 
                    <input type="text" class="form-control" name="search" placeholder="Search..."> 
                    <span class="input-group-btn"> 
                        <button class="btn btn-primary" type="submit"> 
                            Rechercher 
                        </button> 
                    </span>   
                </div>                  
                    
                
                
            </form>
            <br>
            <ul>
                <div class="row">
                    @foreach ($livres as $livre )
                        <div class="col-md-3">
                            <li class="list-livre">
                                    <a href="{{route("biblio.show",["slug"=>$livre->slug])}} ">
                                        <img src="/img/{{$livre->image}}" width="60px" alt="">
                                        <div><span>{{$livre->titre_liv}} </span></div>
                                    </a>
                                    <span>{{$livre->nbr_exmplaire}} </span>                                  
                            </li>    
                        </div>
                   @endforeach
                </div>
                <br>
               
                {{$livres->links()}}
            </ul>
        </div>
    </div>
</div>
@endsection
