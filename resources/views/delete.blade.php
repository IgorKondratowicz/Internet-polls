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
    <h1 class="message">Usuń ankietę</h1>
    <div class="buttons">
    @foreach($suma as $s)
        <a class="ankieta btn" href="{{url('delete', [$s->id])}}"><button>{{$s -> name}}</button></a><br><br>
        
    @endforeach
    </div>

    
@endsection