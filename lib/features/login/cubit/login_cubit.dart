import 'package:bloc/bloc.dart';
import 'package:bookappnewstar/core/functions/flutter_toast.dart';
import 'package:bookappnewstar/core/network/dio_hleper.dart';
import 'package:bookappnewstar/core/network/end_ponts.dart';
import 'package:bookappnewstar/features/login/model/login_model.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

part 'login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  LoginCubit() : super(LoginInitial());

  final GlobalKey<FormState> formkey = GlobalKey<FormState>();
  final TextEditingController empIdController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  LoginModel? loginModel;
  void userLogin() async {
    emit(LoginInitial());
    Response response = await DioHelper.postData(
        endpont: EndPonts.login,
        data: {"P_EMP_ID": empIdController, "P_PASS": passwordController});
    if (response.statusCode == 200) {
      loginModel = LoginModel.fromJson(response.data);
      showToast(message: 'تم تسجيل الدخول', state: ToastStates.sUCCESS);
      emit(LoginSuccessInitial());
    } else {
      showToast(message: 'يوجد خطا في التسجيل', state: ToastStates.eRROR);
      emit(LoginErrorInitial());
    }
  }
}
