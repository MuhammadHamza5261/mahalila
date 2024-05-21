import 'package:mahalila/screens/model/login_model/login_model.dart';
import 'package:mahalila/service/login_service/login_service.dart';

class LoginRepository{

//   use the model
LoginModel? loginModel;

// use the service
LoginService loginService = LoginService();


 // call the repo method

 Future<LoginModel?> loginRepositoryMethod({required String email, required String password}) async{

   loginModel  = await  loginService.loginServiceMethod(email: email, password: password);
   return loginModel!;

  }

}