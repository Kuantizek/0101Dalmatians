@extends('templates.master')

@section('titol', 'SPAM')

@section('contenidor')
<div class="row">
    <div class="col-md-12">
        <div class="row">
            <div class="col-md-4">
                <canvas id="chartDonatius" width="200" height="200"></canvas>
            </div>
            <div class="col-md-4">
                <canvas id="chartProgres" width="200" height="200"></canvas>
            </div>
            <div class="col-md-4">
                <canvas id="chartTipus" width="200" height="200"></canvas>
            </div>
        </div>
    </div>
</div>
@endsection