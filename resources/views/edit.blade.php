@extends('layouts.master')
@section('content')
<form action="{{ route('update',['id'=>$task->id]) }}" method="post" class="col s12">  
  @csrf    
    <div class="row">
      <div class="input-field col s12">
        <input name="task" value="{{$task->content}}" id="task2" type="text" class="validate">
        <label for="task">Edit Task</label>
      </div>
    </div>
    
    <button type="submit" class="waves-effect waves-light btn">Save Task</button>
</form>

@endsection