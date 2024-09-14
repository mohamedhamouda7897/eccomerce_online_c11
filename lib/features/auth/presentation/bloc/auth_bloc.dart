import 'package:bloc/bloc.dart';
import 'package:ecommerce_online_c11/core/utils/enums.dart';
import 'package:ecommerce_online_c11/features/auth/domain/entity/signUp_data.dart';
import 'package:ecommerce_online_c11/features/auth/domain/usecases/login_usecase.dart';
import 'package:ecommerce_online_c11/features/auth/domain/usecases/singup_usecase.dart';
import 'package:injectable/injectable.dart';
import 'package:meta/meta.dart';

part 'auth_event.dart';

part 'auth_state.dart';

@injectable
class AuthBloc extends Bloc<AuthEvent, AuthState> {
  LoginUseCase loginUseCase;
  SignUpUseCase signUpUseCase;

  AuthBloc(this.loginUseCase, this.signUpUseCase) : super(AuthInitial()) {
    on<AuthEvent>((event, emit) {});

    on<LoginEvent>((event, emit) async {
      try {
        emit(state.copyWith(requestState: RequestState.loading));

        var data = await loginUseCase.call(event.email, event.password);

        data.fold(
          (l) {
            emit(state.copyWith(
                requestState: RequestState.error,
                errorMessage: "SOmething went wrong"));
          },
          (r) {
            emit(state.copyWith(
                requestState: RequestState.success, loggedIn: r));
          },
        );
      } catch (e) {
        state.copyWith(
            requestState: RequestState.error, errorMessage: e.toString());
      }
    });

    on<SignUpEvent>((event, emit) {});
  }
}
