@extends('pages.master_logged')
@section('navigation')
<x-app-layout>
    <x-slot name="header">
        <h2 class="font-semibold text-xl text-gray-800 leading-tight">
            {{ __('Dashboard') }}
        </h2>
    </x-slot>
</x-app-layout>
@endsection

@section('maincontent')
@foreach($form_data as $data)
    <div class="questions">
    <form action="{{url('edit_form', [$data->id])}}" method="POST">
                @csrf
                Nazwa ankiety: <input class="input" type="text" name="form_name" value="{{$data->name}}"><br>
                Pytanie 1: <input  class="input"  type="text" name="q1" value="{{$data->question1}}" ><br>
                Pytanie 2: <input class="input"  type="text" name="q2" value="{{$data->question2}}"><br>
                Pytanie 3: <input class="input"  type="text" name="q3" value="{{$data->question3}}"><br>
                Pytanie 4: <input class="input"  type="text" name="q4" value="{{$data->question4}}"><br>
                Pytanie 5: <input class="input"  type="text" name="q5" value="{{$data->question5}}"><br>
                Pytanie 6: <input class="input"  type="text" name="q6" value="{{$data->question6}}"><br>
                <input type="submit" class="submit" value="Wyślij" name="send_form" >
            </form>
    </div>

@endforeach
@endsection