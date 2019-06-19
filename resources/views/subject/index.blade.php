@extends('app')

@section('content')
<br><br>
    <table class="table">
        <thead>
        <tr>
            <th>#</th>
            <th>Subject</th>
            <th>active</th>
            <th>Description</th>
            @if(Auth::user()->hasRole('admin'))
            <th colspan="3"><a href="{{ URL::route('subjects.create') }}" class="btn btn-primary btn-block">Create</a></th>
            @endif
            @if(Auth::user()->hasRole('staff'))
            <span></span>
            @endif
        </tr>
        </thead>
        <tbody>
        @foreach($subjects as $subject)
            <tr>
                <td>{{ $subject->id }}</td>
                <td>{{ $subject->subject }}</td>
                <td>
                    @if($subject->active == 1)
                        <span class="label label-info">Active</span>
                    @else
                        <span class="label label-danger">Deactive</span>
                    @endif
                </td>
                <td>{{ $subject->desc }}</td>
                @if(Auth::user()->hasRole('admin'))
                <td width="80"><a class="btn btn-primary" href="{{ URL::route('subjects.edit', $subject->id) }}">Edit</a></td>
                <td width="80">{!! Form::open(['route' => ['subjects.update', $subject->id], 'method' => 'DELETE']) !!}
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

    {!! $subjects->render() !!}

@stop