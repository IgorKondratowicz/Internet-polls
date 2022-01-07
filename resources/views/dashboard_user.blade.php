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
<h1 class="message">{{$tekst}}<h1><br>
    <div class="buttons">
    @foreach($result as $key => $val)
    <a class="ankieta btn" href="{{url('/forms', [$val])}}"><button type="button" class="przycisk" >{{$key}}</button></a><br>
    @endforeach
</div>
    
    
@endsection