abstract class LoginEvent{}

class LoginDataEvent extends LoginEvent{

  String email;
  String password;

  LoginDataEvent({
    required this.email,
    required this.password,
});


}