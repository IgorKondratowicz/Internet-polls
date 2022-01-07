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
    <div class="buttons" >
        @foreach($table as $index)
            <h1 class="msg">{{$index->name}}</h1>
            <div class="quest">
            <form action="/answers" method="POST">
                @csrf
                {{$index ->question1}}<br>
                <select name="question1" id="">
                    <option value="tak">tak</option>
                    <option value="nie">nie</option>
                </select><br>
                {{$index ->question2}}<br>
                <select name="question2" id="">
                    <option value="tak">tak</option>
                    <option value="nie">nie</option>
                </select><br>
                {{$index ->question3}}<br>
                <select name="question3" id="">
                    <option value="tak">tak</option>
                    <option value="nie">nie</option>
                </select><br>
                {{$index ->question4}}<br>
                <select name="question4" id="">
                    <option value="tak">tak</option>
                    <option value="nie">nie</option>
                </select><br>
                {{$index ->question5}}<br>
                <select name="question5" id="">
                    <option value="tak">tak</option>
                    <option value="nie">nie</option>
                </select><br>
                {{$index ->question6}}<br>
                <select name="question6" id="">
                    <option value="tak">tak</option>
                    <option value="nie">nie</option>
                </select><br>
                <input type="hidden" name="form_id" value="{{$index->id}}">

                <input type="submit" class="submit" value="Wyślij" name="send_form" >
            </form>
</div>
        @endforeach
    </div>
    
@endsection