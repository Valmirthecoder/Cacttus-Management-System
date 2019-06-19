@extends('app')

@section('content')
    @if (count($errors) > 0)
        <div class="alert alert-danger">
            <strong>Whoops!</strong> There were some problems with your input.<br><br>
            <ul>
                @foreach ($errors->all() as $error)
                    <li>{{ $error }}</li>
                @endforeach
            </ul>
        </div>
    @endif
    <div class="row">
        <div class="col-sm-6">
            <br><br>
    {!! Form::open(['route' => 'checks.store']) !!}
    <div class="form-group">
        {!! Form::label('school_flow', 'Identification Number') !!}
        {!! Form::text('identification_number', null, ['class' => 'form-control']) !!}
        {!! Form::label('school_flow', 'Password') !!}
        {!! Form::text('password', null, ['class' => 'form-control']) !!}
    </div>
    <div class="form-group">
        {!! Form::submit('Check', ['class' => 'btn btn-primary']) !!}
    </div>
    {!! Form::close() !!}
</div>
</div>
@stop