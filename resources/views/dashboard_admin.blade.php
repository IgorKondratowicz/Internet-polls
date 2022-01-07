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
    <h1 class="message">Dostępne działania</h1>
    <div class="buttons">
        <a class="ankieta btn"  href="/stats"><button>Zobacz wyniki ankiet</button></a><br><br>
        <a class="ankieta btn"  href="/new"><button>Dodaj ankietę</button></a><br><br>
        <a class="ankieta btn"  href="/edit"><button></button>Edytuj ankietę</a><br><br>
        <a class="ankieta btn"  href="/delete"><button>Usuń ankietę</button></a>
</div>
    
@endsection