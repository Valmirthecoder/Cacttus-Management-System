@extends('app')

@section('content')
<br><br>
    <table class="table">
        <thead>
        <tr>
            <th>#</th>
            <th>School Flow</th>
            <th>Active</th>
            <th>Description</th>
            @if(Auth::user()->hasRole('admin'))
            <th colspan="2"><a href="{{ URL::route('years.create') }}" class="btn btn-primary btn-block">Create</a></th>
             @endif
             @if(Auth::user()->hasRole('staff'))
               <span></span>
             @endif
        </tr>
        </thead>
        <tbody>
        @foreach($years as $year)
            <tr>
                <td>{{ $year->id }}</td>
                <td>{{ $year->school_flow }}</td>
                <td>
                    @if($year->active == 1)
                        <span class="label label-info">Active</span>
                    @else
                        <span class="label label-danger">Deactive</span>
                    @endif
                </td>
                <td>{{ $year->desc }}</td>
                @if(Auth::user()->hasRole('admin'))
                <td width="80"><a class="btn btn-primary" href="{{ URL::route('years.edit', $year->id) }}">Edit</a></td>
                <td width="80">{!! Form::open(['route' => ['years.update', $year->id], 'method' => 'DELETE']) !!}
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

    {!! $years->render() !!}

@stop