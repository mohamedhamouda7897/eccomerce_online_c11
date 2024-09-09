import 'package:bloc/bloc.dart';
import 'package:ecommerce_online_c11/core/utils/enums.dart';
import 'package:ecommerce_online_c11/features/auth/domain/usecases/login_usecase.dart';
import 'package:meta/meta.dart';

part 'auth_event.dart';

part 'auth_state.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  LoginUseCase loginUseCase;

  AuthBloc(this.loginUseCase) : super(AuthInitial()) {
    on<LoginEvent>((event, emit) async {
      emit(state.copyWith(requestState: RequestState.loading));
      var data = await loginUseCase.call(event.email, event.password);

      data.fold(
        (l) {
          emit(state.copyWith(
              requestState: RequestState.error,
              errorMessage: "Something went wrong"));
        },
        (r) {
          emit(state.copyWith(requestState: RequestState.success, loggedIn: r));
        },
      );
    });
  }
}
