import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mahalila/bloc/login_event.dart';
import 'package:mahalila/bloc/login_state.dart';
import 'package:mahalila/repository/login_repository/login_repository.dart';
import 'package:mahalila/screens/model/login_model/login_model.dart';

class LoginBloc extends Bloc<LoginEvent,LoginState>{


 //   use the model
  LoginModel? loginModel;

 // use the repository
 LoginRepository loginRepository = LoginRepository();

 // call the constructor
 LoginBloc():super(LoginInitialState())
{

  on<LoginEvent>((event,emit) async{

    if(event is LoginDataEvent)
    {

      emit(LoginInProgressState());

      try{
        
        loginModel = await loginRepository.loginRepositoryMethod(
            email: event.email,
            password: event.password
        );

        emit(LoginDataIsLoadedState(loginModel: loginModel));

      }
          catch(e){
               emit(LoginFailure(e.toString()));
          }


    }


  });



}







}




