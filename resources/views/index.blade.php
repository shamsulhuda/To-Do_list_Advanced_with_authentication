@extends('layouts.master')

@section('content')
<!-- Task List -->
      <table>
        <thead>
          <tr>
              <th>Task</th>
              @isAdmin
              <th>Assign to</th>
              @endisAdmin
              <th>Edit</th>
              <th>Delete</th>
          </tr>
        </thead>

        <tbody>

          @foreach($tasks as $task)
          <tr>
            <td><a href="{{ route('updateStatus',$task->id) }}">

              @if(!$task->status)
              {{$task->content}}

              @else
              <strike class="grey-text">{{$task->content}}</strike>
              
              @endif
            </a></td>
            @isAdmin
            <td>{{$task->user->name}}</td>
            @endisAdmin
            <td><a href="{{route('edit',$task->id)}}"><i class="small material-icons" title="Edit">edit</i></a></td>
            <td><a onclick="return confirm('Want to delete?');" href="{{route('delete', $task->id)}}"><i class="small material-icons" title="Delete">delete_forever</i></a></td>
          </tr>
          
          @endforeach
        </tbody>
      </table>
<!--End of Task List -->

<!-- Pagination -->

{{ $tasks->links('vendor.pagination.materialize') }}
      
<!-- pagination -->

<!-- Task Addiding form -->
      <form action="{{ route('store') }}" method="post" class="col s12">  
        @csrf    
        <div class="row">
          <div class="input-field col s12">
            <input id="task" type="text" name="task" class="validate">
            <label for="task">New Task</label>
          </div>
        </div>

        @include('partials.coworkers')
        
        <button type="submit" class="waves-effect waves-light btn">Add New Task</button>
        
    </form>
  <!--End of Task Addiding form -->
  <br><br>
    @isWorker
    <form action="{{ route('sendInvitation') }}" method="post" class="col s12">
      @csrf
      <div class="row">
        <div class="input-field">
          <select name="admin">
            <option value="" disabled selected>Send Invitation to: </option>
            @foreach($coworkers as $coworker)
            <option value="{{ $coworker->id }}">{{ $coworker->name }}</option>
            @endforeach
          </select>
          <label>Send Invitation </label>
        </div>
      </div>
      <button type="submit" class="waves-effect waves-light btn">Send Invitation</button>
    </form>
    
    @endisWorker
<!-- Co-workers -->
<br><br>
@isAdmin
      <ul class="collection with-header">
          <li class="collection-header"><h4>My co-workers</h4></li>

          @foreach($coworkers as $coworker)
          <li class="collection-item"><div>{{ $coworker->worker->name }}<a href="{{ route('deleteWorker', $coworker->id) }}" class="secondary-content"><i class="material-icons">delete</i></a></div></li>
          @endforeach

      </ul>
@endisAdmin
<!-- End of co-workers -->

<!-- Edit task -->


    @endsection