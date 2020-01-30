<?php

namespace App\Http\Controllers;
use Illuminate\Support\Str;
use Illuminate\Support\Facades\DB;
use Illuminate\Http\Request;
use App\livre;
use App\empreteur;
use App\empreteur_livre;
use Carbon\Carbon;
class HomeController extends Controller
{
    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        $this->middleware('auth');
    }

    /**
     * Show the application dashboard.
     *
     * @return \Illuminate\Contracts\Support\Renderable
     */
    public function index()
    {
        $livres=DB::table('livres')->orderBy('id','desc')->paginate(8);
        return view('MyBiblio/home',compact('livres'));
    }

    public function show($slug)
    {
        $livre=DB::table('livres')->where('slug',$slug)->first();
        $livre=livre::find($livre->id);
        return view('MyBiblio/show',compact('livre'));
    }

    public function add_book()
    {
        return view('MyBiblio/ajouter',['success'=>'']);
    }
    public function store(Request $request)
    {
        // $this->validate($request,[
        //     "title"=>'required',
        //     "auteur"=>"required",
        //     "editeur"=>"required",
        //     "nombre"=>"required",
        //     "image_id"=>'required|image|mimes:jpeg,png,jpg,gif|max:2048',
        //     "description"=>"required"
        // ]);
        //Récupérer l'extension du fichier
        $ext = $request->file('image_id')->getClientOriginalExtension(); 
        //Renommer l'image
        $filename = time().'.'.$ext; $dir='img/';
        //Télécharger l'image
        $request->file('image_id')->move($dir, $filename);
        //Enregistrement dans la base de données
        DB::table('livres')->insert([
            'num_liv'=>rand(123,534),
            'titre_liv'=>$request->title,
            'slug'=>str::slug($request->title,'-'),
            'auteur'=>$request->auteur,
            'editeur'=>$request->editeur,
            'nbr_exmplaire'=>$request->nombre,
            'nbr_fois_emprunter'=>0,
            'description'=>$request->description,
            'image'=>$filename
        ]);
        $success="L'ajout du livre nommé '".$request->title."' a été réalisé avec succès";
        return view('MyBiblio/ajouter',['success'=>$success]);

        //$livre= new livre; $livre->num_liv=rand(123,534); $livre->titre_liv=$request->title; $livre->save();
        // if($request->hasFile('image_id')){
        //     $image_id = $request->file('image_id');
        //     $filename = time() . '.' . $image_id->getClientOriginalExtension();
        //     Image::make($image_id)->resize(300, 300)->save( public_path('/public/img/' . $filename ) );
            
        //     DB::table('livres')->insert([
        //         'num_liv'=>rand(123,534),
        //         'titre_liv'=>$request->title,
        //         'slug'=>str::slug($request->title,'-'),
        //         'auteur'=>$request->auteur,
        //         'editeur'=>$request->editeur,
        //         'nbr_exmplaire'=>$request->nombre,
        //         'description'=>$request->description,
        //         'image'=>$filename
        //     ]);
        // }
         
    }

    public function emprunter_book()
    {
        return view("MyBiblio/emprunter", ['error'=>'','success'=>'']);
    } 

    public function emprunter(Request $request)
    {
        
        $this->validate($request,[
                "num_em"=>'required',
                "title"=>"required",
                "num_liv"=>"required",
            ]);
            $livre=new livre();
            $empreteur_livre=new empreteur_livre(); 
            $num=$request->num_em;
            $today=date("Y-m-d H:i:s"); 
            $strtoday=strtotime($today); 
            $nextday=date("Y-m-d H:i:s", strtotime("+14 day", $strtoday));
            $book=DB::table('empreteurs')->where('num_em',$num)->get(); 
            $val=$book->Count();
            
           //$val_em=DB::table('empreteurs')->where('num_em',$num)->first();
            $val_liv=DB::table('livres')->where('num_liv',$request->num_liv)->get();
            

            if($val!=0)
            {
                foreach ($book as $valbook) { $idbook=$valbook->id; } 
                foreach ($val_liv as $databook) { $idliv=$databook->id; }
                $empreteur_livre->empreteurs_id=$idbook;
                $empreteur_livre->livres_id=$idliv;
                $empreteur_livre->date_emprunt=$today;
                $empreteur_livre->date_depot=$nextday;
                $empreteur_livre->save();
                DB::table('livres')->decrement('nbr_exmplaire');
                DB::table('livres')->increment('nbr_fois_emprunter');
                $success="Emprunt réalisé avec succès";
                return view("MyBiblio/emprunter", ['success'=>$success]);
            }
            else{
                $error="Ce numéro de lecteur n'existe pas dans la base de donnée";
                return view("MyBiblio/emprunter", ['error'=>$error]);
            }
            return redirect()->route('biblio.emprunter_book');

            
    }

    public function deposer_book()
    {
        return view("MyBiblio.deposer",['error'=>'','success'=>'']);
    }
    
    public function deposer(Request $request){
        $this->validate($request,[
            "num_em"=>'required',
            "title"=>"required",
            "num_liv"=>"required",
        ]);

        $livre=new livre();
        $empreteur_livre=new empreteur_livre(); 
        $num=$request->num_em;
        $today=date("Y-m-d H:i:s"); 
        //$strtoday=strtotime($today); 
        //$nextday=date("Y-m-d H:i:s", strtotime("+14 day", $strtoday));
        $book=DB::table('empreteurs')->where('num_em',$num)->get(); 
        $val=$book->Count();
        
       //$val_em=DB::table('empreteurs')->where('num_em',$num)->first();
        $val_liv=DB::table('livres')->where('num_liv',$request->num_liv)->get();
        

        if($val!=0)
        {
            foreach ($book as $valbook) { $idbook=$valbook->id; } 
            foreach ($val_liv as $databook) { $idliv=$databook->id; }
            //$livre_emprunter=DB::table("empreteur_livres")->where("empreteurs_id",$idbook,"date_emprunt",$request->date_em,'livres_id',$idliv)->first();
            //DB::update('update empreteur_livres set date_depot_effectifs = ? where empreteurs_id = ? and livres_id= ? and date_emprunt= ?', [date("Y-m-d H:i:s"),$idbook,$idliv,$request->date_em]);
            empreteur_livre::where('empreteurs_id',$idbook)
                                ->where('livres_id',$idliv)
                                ->where("date_emprunt",$request->date_em)
                                ->update(['date_depot_effectifs'=>$today]);
            // $empreteur_livre->empreteurs_id=$idbook;
            // $empreteur_livre->livres_id=$idliv;
            // $empreteur_livre->date_emprunt=$today;
            // $livre_emprunter->date_depot_effectifs=$today;
            // $livre_emprunter->save();
            DB::table('livres')->increment('nbr_exmplaire');
            DB::table('livres')->decrement('nbr_fois_emprunter');
            $success="Dépot effectuer avec succès";
            return view("MyBiblio/deposer", ['success'=>$success]);
        }
        else{
            $error="Ce numéro de lecteur n'existe pas dans la base de donnée";
            return view("MyBiblio/emprunter", ['error'=>$error]);
        }
        return redirect()->route('biblio.deposer_book');
    }

    public function liste_livre(){
        $livres=livre::all();
        $empreteur_livres=empreteur_livre::all();

        // foreach($empreteur_livres as $empreteur_livre)
        // {

        // }
        return view("MyBiblio.liste_livres_emprunter",compact('livres','empreteur_livres'));
    }

    public function rechercher(){
        //$livres=DB::table('livres')->orderBy('id','desc')->paginate(8);
        $search= \Request::get('search');
        
        $livres=livre::where('titre_liv','like','%'.$search.'%')
                                ->orderBy('titre_liv')
                                ->paginate(8);
        //$livres=DB::table('livres')->like('titre_liv',)
        return view('MyBiblio/home',compact('livres')); 
    }

    public function statistique(){
        $livres_lus=DB::select('SELECT COUNT(*) AS nbre, lv.titre_liv FROM livres AS lv, empreteur_livres AS el 
                                WHERE el.livres_id=lv.id GROUP BY el.livres_id ORDER BY nbre DESC LIMIT 0,3');
        
        $best_empreteurs=DB::select('SELECT COUNT(*) AS nbre, em.nom_em FROM empreteurs AS em, empreteur_livres AS el 
                                    WHERE el.empreteurs_id=em.id GROUP BY el.empreteurs_id ORDER BY nbre DESC LIMIT 0,3');
        return view("MyBiblio/statistique",compact('livres_lus','best_empreteurs'));
    }
    
}
