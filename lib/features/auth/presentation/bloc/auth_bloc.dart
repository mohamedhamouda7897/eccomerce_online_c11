import 'package:bloc/bloc.dart';
import 'package:ecommerce_online_c11/core/utils/enums.dart';
import 'package:ecommerce_online_c11/features/auth/domain/entity/sign_up_entity.dart';
import 'package:ecommerce_online_c11/features/auth/domain/usecases/login_usecase.dart';
import 'package:ecommerce_online_c11/features/auth/domain/usecases/signup_usecase.dart';
import 'package:meta/meta.dart';

part 'auth_event.dart';

part 'auth_state.dart';

class AuthBloc extends Bloc<AuthEvent, AuthLoginState> {
  LoginUseCase loginUseCase;

  SignUpUseCase signUpUseCase;

  AuthBloc(this.loginUseCase, this.signUpUseCase) : super(AuthLoginInit()) {
    on<AuthEvent>((event, emit) {});

    on<LoginEvent>((event, emit) async {
      state.copyWith(requestState: RequestState.loading);
      var data = await loginUseCase.call(event.email, event.password);

      data.fold(
        (l) {
          emit(state.copyWith(
            loggedIn: false,
            requestState: RequestState.error,
            errorMessage: l.message,
          ));
        },
        (r) {
          emit(state.copyWith(
            loggedIn: r,
            requestState: RequestState.success,
          ));
        },
      );
    });

    on<SignupEvent>(
      (event, emit) async {
        var data = await signUpUseCase.call(event.signUpEntity);

        data.fold(
          (l) {
            emit(state.copyWith(
              requestState: RequestState.error,
            ));
          },
          (r) {
            emit(state.copyWith(
              requestState: RequestState.success,
            ));
          },
        );
      },
    );
  }
}
