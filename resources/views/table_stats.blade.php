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

<div class="que d-flex justify-content-around" id="que">
     @foreach( $questions as $index)
        <div class="column">
            <div class="form_name">
                <ol>
                    <li>{{$index -> question1}}</li>
                    <li>{{$index -> question2}}</li>
                    <li>{{$index -> question3}}</li>
                    <li>{{$index -> question4}}</li>
                    <li>{{$index -> question5}}</li>
                    <li>{{$index -> question6}}</li>
                </ol>
                
                    
                
            </div>
            
        </div>
    @endforeach
</div>
<div class="buttons">
        
        @foreach($name as $n)     
    
            <script>
        window.onload = function () {
        
        var chart = new CanvasJS.Chart("chartContainer", {
            animationEnabled: true,
            theme: "dark2", //"light1", "dark1", "dark2"
            title:{
                text: "{{$n->name}}"             
            },
            axisY:{
                interval: 10,
                suffix: "%"
            },
            toolTip:{
                shared: true
            },
            data:[{
                type: "stackedBar100",
                toolTipContent: "{label}<br><b>{name}:</b> {y} (#percent%)",
                showInLegend: true, 
                name: "Tak",
                dataPoints: [
                    { y: {{$q6t}}, label: "Pytanie 6" },
                    { y: {{$q5t}}, label: "Pytanie 5" },
                    { y: {{$q4t}}, label: "Pytanie 4" },
                    { y: {{$q3t}}, label: "Pytanie 3" },
                    { y: {{$q2t}}, label: "Pytanie 2" },
                    { y: {{$q1t}}, label: "Pytanie 1" }
                    
                ]
                },
                {
                    type: "stackedBar100",
                    toolTipContent: "<b>{name}:</b> {y} (#percent%)",
                    showInLegend: true, 
                    name: "Nie",
                    dataPoints: [
                        { y: {{$q6n}}, label: "Pytanie 6" },
                        { y: {{$q5n}}, label: "Pytanie 5" },
                        { y: {{$q4n}}, label: "Pytanie 4" },
                        { y: {{$q3n}}, label: "Pytanie 3" },
                        { y: {{$q2n}}, label: "Pytanie 2" },
                        { y: {{$q1n}}, label: "Pytanie 1" }
                    ]
            }]
        });
        chart.render();
    
        }
        </script>
        
    
        <div id="chartContainer"  style="height: 370px; width: 100%;"></div>
    <script src="https://canvasjs.com/assets/script/canvasjs.min.js"></script>
        @endforeach
    </div>
@endsection