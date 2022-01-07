<?php

namespace App\Http\Controllers;
use App\Models\Forms;
use App\Models\Answers;
use App\Models\Questions;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Session;
use Illuminate\Http\Request;
use Carbon\Carbon;

class HomeController extends Controller
{
    public function form_name(){
        
        $form = Forms::join('questions', 'forms.id', '=', 'questions.form_id')
        ->get(['forms.name','questions.question1','questions.question2','questions.question3','questions.question4','questions.question5','questions.question6']);
        return  view('start',compact('form'));
    }

    public function main_page(){
        $user_name = Auth::user()->name;
        if($user_name != 'admin'){
            $a = Forms::select('id', 'name')->get();
            $answers_id = Answers::select('form_id')->where('user_id', '=', Auth::user()->id)->get();
            $forms_id = $a->pluck('id');
            $ans_id = $answers_id->pluck('form_id');
            // $result = $forms_id->diff($ans_id);
            // $result = $result->values();
            $form_names = $a->pluck('name');
            $combined_array = $form_names->combine($forms_id);
            $result = $combined_array->diff($ans_id);
            $tekst = "";
            if(sizeof($result)==0){
                $tekst = "Brak dostępnych ankiet";
            }
            else{
                $tekst = "Twoje ankiety do wypełnienia";
            }
            
            return view('dashboard_user', compact('result', 'tekst'));
        }
        else{
            return view('dashboard_admin');
        }
    }

    public function form(Request $request, $id){
        $table = Forms::join('questions', 'forms.id', '=', 'questions.form_id')->where('forms.id', '=', $id)
        ->get(['forms.id','forms.name','questions.question1','questions.question2','questions.question3','questions.question4','questions.question5','questions.question6']);
        return view('form', compact('table'));
    }

    public function insert(Request $request){
        $odp1 = $request->input('question1');
        $odp2 = $request->input('question2');
        $odp3 = $request->input('question3');
        $odp4 = $request->input('question4');
        $odp5 = $request->input('question5');
        $odp6 = $request->input('question6');
        $id = $request->input('form_id');
        Answers::insert([
            'user_id'=>Auth::user()->id,
            'form_id'=>$id,
            'answer1'=>$odp1,
            'answer2'=>$odp2,
            'answer3'=>$odp3,
            'answer4'=>$odp4,
            'answer5'=>$odp5,
            'answer6'=>$odp6,
            'created_at'=>Carbon::now(),
            'updated_at'=>Carbon::now()
        ]);
        return Redirect()->route('dashboard');
    }

    public function newform(Request $request){
        $name = $request->input('form_name');
        $odp1 = $request->input('q1');
        $odp2 = $request->input('q2');
        $odp3 = $request->input('q3');
        $odp4 = $request->input('q4');
        $odp5 = $request->input('q5');
        $odp6 = $request->input('q6');

        Forms::insert([
            'name' => $name,
            'created_at'=>Carbon::now(),
            'updated_at'=>Carbon::now()
        ]);
        
        $id = Forms::select('id')->where('name', '=', $name)->get()->pluck('id');

        Questions::insert([
            'form_id' => $id[0],
            'question1'=>$odp1,
            'question2'=>$odp2,
            'question3'=>$odp3,
            'question4'=>$odp4,
            'question5'=>$odp5,
            'question6'=>$odp6,
            'created_at'=>Carbon::now(),
            'updated_at'=>Carbon::now()
        ]);

        return Redirect()->route('dashboard');
    }

    public function stats(){
        $suma = Forms::select('id', 'name')->get();
        return view('stats', compact('suma'));
    }

    public function statistics(Request $request, $id){
        $name = Forms::select('name')->where('id', '=', $id)->get();
        //osoby ktore zaglosowaly na tak
        $q1t = Answers::select('user_id')->where('form_id', '=', $id)->where('answer1', '=', 'tak')->get()->pluck('user_id');
        $q1t = count($q1t);

        $q2t = Answers::select('user_id')->where('form_id', '=', $id)->where('answer2', '=', 'tak')->get()->pluck('user_id');
        $q2t = count($q2t);

        $q3t = Answers::select('user_id')->where('form_id', '=', $id)->where('answer3', '=', 'tak')->get()->pluck('user_id');
        $q3t = count($q3t);

        $q4t = Answers::select('user_id')->where('form_id', '=', $id)->where('answer4', '=', 'tak')->get()->pluck('user_id');
        $q4t = count($q4t);

        $q5t = Answers::select('user_id')->where('form_id', '=', $id)->where('answer5', '=', 'tak')->get()->pluck('user_id');
        $q5t = count($q5t);

        $q6t = Answers::select('user_id')->where('form_id', '=', $id)->where('answer6', '=', 'tak')->get()->pluck('user_id');
        $q6t = count($q6t);
    
        //osoby ktore zaglosowaly na nie
        $q1n = Answers::select('user_id')->where('form_id', '=', $id)->where('answer1', '=', 'nie')->get()->pluck('user_id');
        $q1n = count($q1n);

        $q2n = Answers::select('user_id')->where('form_id', '=', $id)->where('answer2', '=', 'nie')->get()->pluck('user_id');
        $q2n = count($q2n);

        $q3n = Answers::select('user_id')->where('form_id', '=', $id)->where('answer3', '=', 'nie')->get()->pluck('user_id');
        $q3n = count($q3n);

        $q4n = Answers::select('user_id')->where('form_id', '=', $id)->where('answer4', '=', 'nie')->get()->pluck('user_id');
        $q4n = count($q4n);

        $q5n = Answers::select('user_id')->where('form_id', '=', $id)->where('answer5', '=', 'nie')->get()->pluck('user_id');
        $q5n = count($q5n);

        $q6n = Answers::select('user_id')->where('form_id', '=', $id)->where('answer6', '=', 'nie')->get()->pluck('user_id');
        $q6n = count($q6n);

        $questions = Questions::select('*')->where('form_id', '=', $id)->get();
        return view('table_stats', compact('questions', 'name', 'q1t','q2t','q3t','q4t','q5t','q6t', 'q1n', 'q2n', 'q3n', 'q4n', 'q5n', 'q6n'));
    }

    public function logout(){
        Session::flush();
        Auth::logout();
        return Redirect()->route('main-page');
    }

    public function delete(){
        $suma = Forms::select('id', 'name')->get();
        return view('delete', compact('suma'));
    }

    public function delete_form(Request $request, $id){
        Questions::where('form_id', '=', $id)->delete();
        Answers::where('form_id', '=', $id)->delete();
        Forms::where('id', '=', $id)->delete();
        return Redirect()->route('dashboard');
    }

    public function edit(){
        $suma = Forms::select('id', 'name')->get();
        return view('edit', compact('suma'));
    }

    public function edit_form(Request $request, $id){
        $form_data = Forms::join('questions', 'forms.id', '=', 'questions.form_id')->where('forms.id','=',$id)
        ->get(['forms.id','forms.name','questions.question1','questions.question2','questions.question3','questions.question4','questions.question5','questions.question6']);
        return view('edit_form', compact('form_data'));
    }
    
    public function single_form_edit(Request $request, $id){
        $name = $request->input('form_name');
        $odp1 = $request->input('q1');
        $odp2 = $request->input('q2');
        $odp3 = $request->input('q3');
        $odp4 = $request->input('q4');
        $odp5 = $request->input('q5');
        $odp6 = $request->input('q6');

        Forms::where('id', '=', $id)->update(['name'=>$name]);
        Questions::where('form_id', '=', $id)->update([
            'question1' => $odp1,
            'question2' => $odp2,
            'question3' => $odp3,
            'question4' => $odp4,
            'question5' => $odp5,
            'question6' => $odp6
        ]);
        return Redirect()->route('dashboard');
    }
}
