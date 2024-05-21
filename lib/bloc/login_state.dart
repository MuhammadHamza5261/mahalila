 import 'package:mahalila/screens/model/login_model/login_model.dart';

abstract class LoginState{}

 class LoginInitialState extends LoginState{}

 class LoginInProgressState extends LoginState{}

 class LoginDataIsLoadedState extends LoginState{
  LoginModel? loginModel;
  LoginDataIsLoadedState({required this.loginModel});
 }

 class LoginFailure extends LoginState{

   final String errorMessage;
   LoginFailure(this.errorMessage);

 }