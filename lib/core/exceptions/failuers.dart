abstract class RouteFailures {
  String errorMessage;

  RouteFailures(this.errorMessage);
}

class RemoteFailures extends RouteFailures {
  RemoteFailures(super.errorMessage);
}

class LocalFailures extends RouteFailures {
  LocalFailures(super.errorMessage);
}
