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
    <div class="questions">
    <form action="/addform" method="POST">
                @csrf
                Nazwa ankiety: <input type="text" name="form_name"><br>
                Pytanie 1: <input type="text" name="q1"><br>
                Pytanie 2: <input type="text" name="q2"><br>
                Pytanie 3: <input type="text" name="q3"><br>
                Pytanie 4: <input type="text" name="q4"><br>
                Pytanie 5: <input type="text" name="q5"><br>
                Pytanie 6: <input type="text" name="q6"><br>
                <input type="submit" class="submit" value="Wyślij" name="send_form" >
            </form>
    </div>
    
@endsection