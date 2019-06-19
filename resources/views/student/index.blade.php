@extends('app')

@section('content')
<br><br>
    <table class="table">
        <thead>
        <tr>
            <th>#</th>
            <th>Name</th>
            <th>Surname</th>
            <th>Identification Number</th>
            <th>Years of study</th>
            <th>Semester</th>
            <th>Active</th>
            @if(Auth::user()->hasRole('admin'))
            <th colspan="3"><a href="{{ URL::route('students.create') }}" class="btn btn-primary btn-block">Create</a></th>
            @endif
            @if(Auth::user()->hasRole('staff'))
            <span></span>
            @endif
        </tr>
        </thead>
        <tbody>
        @foreach($students as $student)
            <tr>
                <td><strong>{{ $student->id }}</strong></td>
                <td>{{ $student->name }}</td>
                <td>{{ $student->surname }}</td>
                <td>{{ $student->identification_number }}</td>
                <td>{{ $student->year }}</td>
                <td>{{ $student->semester }}</td>
                <td>
                    @if($student->active == 1)
                        <span class="label label-info">Active</span>
                    @else
                        <span class="label label-danger">Deactive</span>
                    @endif
                </td>
                @if(Auth::user()->hasRole('admin'))
                <td width="80"><a class="btn btn-success" href="{{ URL::route('students.show', $student->id) }}">More</a></td>
                <td width="80"><a class="btn btn-primary" href="{{ URL::route('students.edit', $student->id) }}">Edit</a></td>
                <td width="80">{!! Form::open(['route' => ['students.update', $student->id], 'method' => 'DELETE']) !!}
                    {!! Form::submit('Delete', ['class' => 'btn btn-danger', 'onclick' => 'return confirm("Are you sure?");']) !!}
                    {!!  Form::close() !!}</td>
                @endif
                @if(Auth::user()->hasRole('staff'))
                <td width="80"><a class="btn btn-success" href="{{ URL::route('students.show', $student->id) }}">More</a></td>
                    {!!  Form::close() !!}</td>
                @endif
            </tr>
        @endforeach
        </tbody>
    </table>

    {!! $students->render() !!}

@stop