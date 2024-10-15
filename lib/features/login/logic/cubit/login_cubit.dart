import 'package:docs/features/login/data/models/login_request_body.dart';
import 'package:docs/features/login/logic/cubit/login_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';


import 'package:docs/features/login/data/repos/login_repo.dart';
import 'package:freezed_annotation/freezed_annotation.dart';



class LoginCubit extends Cubit<LoginState> {
  final LoginRepo _loginRepo;
  LoginCubit(this._loginRepo) : super(const LoginState.initial());

  void emitLoginStates(LoginRequestBody loginRequestBody) async {
    emit(const LoginState.loading());
    final response = await _loginRepo.login(loginRequestBody);
    response.when(success: (loginResponse) {
      emit(LoginState.success(loginResponse));
    }, failure: (error){
      emit(LoginState.error(error: error.apiErrorModel.message ?? ''));
    });
  }
}
