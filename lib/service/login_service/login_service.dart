import 'dart:convert';
import 'package:mahalila/screens/model/login_model/login_model.dart';
import 'package:http/http.dart' as http;


class LoginService{

   Future<LoginModel?> loginServiceMethod({required String email, required String password}) async{

     final response = await http.post(Uri.parse('https://reqres.in/api/login'),
       headers: <String,String>{

        "Content-type": "application/json",
        "Accept": "application/json",

       },
       body:  jsonEncode(<String,dynamic>{

         "email": email,
         "password": password,

       }),
     );

      if(response.statusCode == 200)
        {
          final data = jsonDecode(response.body);
          return LoginModel.fromJson(data);
        }

         else
           {
             throw Exception('${response.statusCode} : ${response.reasonPhrase}');
           }



    }



}