@extends('app')

@section('content')
<br><br>
    <table class="table">
        <thead>
        <tr>
            <th>#</th>
            <th>Semester</th>
            <th>Active</th>
            <th>Description</th>
            @if(Auth::user()->hasRole('admin'))
            <th colspan="2"><a href="{{ URL::route('semesters.create') }}" class="btn btn-primary btn-block">Create</a></th>
            @endif
            @if(Auth::user()->hasRole('staff'))
            <span></span>
            @endif
        </tr>
        </thead>
        <tbody>
        @foreach($semesters as $semester)
            <tr>
                <td>{{ $semester->id }}</td>
                <td>{{ $semester->semester }}</td>
                <td>
                    @if($semester->active == 1)
                        <span class="label label-info">Active</span>
                    @else
                        <span class="label label-danger">Deactive</span>
                    @endif
                </td>
                <td>{{ $semester->desc }}</td>
                @if(Auth::user()->hasRole('admin'))
                <td width="80"><a class="btn btn-primary" href="{{ URL::route('semesters.edit', $semester->id) }}">Edit</a></td>
                <td width="80">{!! Form::open(['route' => ['semesters.update', $semester->id], 'method' => 'DELETE']) !!}
                    {!! Form::submit('Delete', ['class' => 'btn btn-danger', 'onclick' => 'return confirm("Are you sure?");']) !!}
                    {!!  Form::close() !!}</td>
                    @endif
                    @if(Auth::user()->hasRole('staff'))
                    <span></span>
                    @endif
            </tr>
        @endforeach
        </tbody>
    </table>

    {!! $semesters->render() !!}

@stop