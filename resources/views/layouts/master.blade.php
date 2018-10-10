
<!DOCTYPE html>
<html lang="en">
<head>
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
  <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1.0"/>
  <title>To-Do</title>

  <!-- CSS  -->
  <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/css/materialize.min.css">
  <link rel="icon" href="image/icon-timer.png" type="image/gif" sizes="16x16">
</head>
<body>
  
  <div class="container">
    

    <form action="{{ route('logout') }}" method="POST">
        @csrf
        <p><i class="material-icons">person_pin</i>  Logged as <b>{{ Auth::user()->name }}</b> <button type="submit" class="waves-effect waves-light btn">Logout</button></p>
    </form>

@isAdmin

  @if($invitations->count() > 0)

    <ul class="collapsible">
      <li>
        <div class="collapsible-header">
          <i class="material-icons">person_add</i>
          Invitation
          <span class="new badge red">{{ $invitations->count() }}</span></div>
        <div class="collapsible-body">
          @foreach($invitations as $invitation)
          <p>
            <span class="red-text"><b>{{ $invitation->worker->name }}</b></span> <a href="{{ route('acceptInvitation',['id'=>$invitation->id]) }}">Accept</a> | <a href="{{ route('denytInvitation',['id'=>$invitation->id]) }}">Deny</a>
          </p>
          @endforeach
        </div>
      </li>
    </ul>

    @endif

@endisAdmin
    <h1 class="center-align green-text text-darken-4"><i class="material-icons red-text small">gps_fixed</i> To-do List <i class="material-icons red-text small">directions_bike</i></h1>

    @yield('content');
<!--End of Edit task -->

  </div>

  <!--  Scripts-->
  <script src="https://code.jquery.com/jquery-2.1.1.min.js"></script>
  <!-- Compiled and minified JavaScript -->
  <script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/1.0.0/js/materialize.min.js"></script>

  <script type="text/javascript">
    var elem = document.querySelector('.collapsible');
    var options;
    var instance = M.Collapsible.init(elem, options);

    var elems = document.querySelectorAll('select');
    var instances = M.FormSelect.init(elems, options);
  </script>

  </body>
</html>
