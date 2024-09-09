abstract class RouteExceptions {
  String errorMessage;

  RouteExceptions(this.errorMessage);
}

class RemoteExceptions extends RouteExceptions {
  RemoteExceptions(super.errorMessage);
}

class LocalExceptions extends RouteExceptions {
  LocalExceptions(super.errorMessage);
}
