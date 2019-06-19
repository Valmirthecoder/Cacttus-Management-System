@extends('app')

@section('content')
<div class="row">
    <div class="col-sm-4">
    <h3>Name</h3>
    <p>{{$student->name}}</p>

    <h3>Surname</h3>
    <p>{{$student->surname}}</p>

    <h3>ID Number</h3>
    <p>{{$student->identification_number}}</p>
    </div>
    <div class="col-sm-4">
    <h3>Age</h3>
    <p>{{$student->age}}</p>

    <h3>Gender</h3>
    <p>{{$student->gender}}</p>

    <h3>Birthday</h3>
    <p>{{$student->birthday}}</p>
   </div>
   <div class="col-sm-4">
    <h3>Description</h3>
    <p>{{$student->desc}}</p>

    <h3>Start study</h3>
    <p>{{$student->year}}</p>

    <h3>Semester</h3>
    <p>{{$student->semester}}</p>
</div>
</div>
<br><br>
    <table class="table">
        <thead>
        <tr>
            <th>Subject</th>
            <th>Note</th>
        </tr>
        </thead>
        <tbody>
        @foreach($student->subjects as $s)
            <tr>
                <td>{{ $s->subject }}</td>
                <td>
                    @if($s->pivot->note == 0)
                        <span class="label label-danger">This student has no notes</span>
                    @else
                        <span class="label label-info">{{ $s->pivot->note }}</span>
                    @endif
                </td>
                <td width="80">
                    <a class="btn btn-success" href="{{ URL::route('students.addNote',['id'=>$s->id,'idStudent'=>$student->id]) }}">Note</a>
                </td>
                    {!!  Form::close() !!}</td>
            </tr>
        @endforeach
        </tbody>
    </table>

@stop