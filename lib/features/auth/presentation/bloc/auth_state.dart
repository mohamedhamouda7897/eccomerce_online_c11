part of 'auth_bloc.dart';

class AuthState {
  RequestState? requestState;
  bool? loggedIn;
  String? errorMessage;

  AuthState({this.requestState, this.loggedIn, this.errorMessage});

  AuthState copyWith(
      {RequestState? requestState, bool? loggedIn, String? errorMessage}) {
    return AuthState(
        requestState: requestState ?? this.requestState,
        loggedIn: loggedIn ?? this.loggedIn,
        errorMessage: errorMessage ?? this.errorMessage);
  }
}

final class AuthInitial extends AuthState {
  AuthInitial()
      : super(
            requestState: RequestState.init, errorMessage: "", loggedIn: false);
}
