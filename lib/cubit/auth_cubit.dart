import 'dart:convert';
import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:http/http.dart';

import 'auth_state.dart';

class AuthCubit extends Cubit<AuthStates>{
  AuthCubit() : super(AuthInitialState());

  // Todo: API URL => https://student.valuxapps.com/api/
  // Todo: Register endpoint => register
  void register({required String email,required String name,
    required String phone,required String password}) async {
    emit(RegisterLoadingState());
      Response response = await http.post(
        // request Url = base url + method url ( endpoint ) = https://student.valuxapps.com + /api/register
        Uri.parse('https://student.valuxapps.com/api/register'),
        headers: {'lang':"en"},
        body: {
          'name' : name,
          'email' : email,
          'password' : password,
          'phone' : phone,
          'image' : "jdfjfj"     // الصوره مش شغاله بس لازم ابعت قيمه ك value
        },
      );

        var resposeBody = jsonDecode(response.body);
        if( resposeBody['status'] == true )
        {

          print(resposeBody);
          emit(RegisterSuccessState());
        }
        else
        {
          print(resposeBody);
          emit(FailedToRegisterState(message:resposeBody['message']));
        }


  }

///////////////////////////////////////////


  void login({required String email,required String password})async{
    emit(LoginLoadingState());
try{
  Response response =await http.post(Uri.parse("https://student.valuxapps.com/api/login"),
    body: {
      'email': email,
      'password': password,
    },
  );
  if(response.statusCode==200)
  {
    var data=jsonDecode(response.body);
    if (data['status']==true)
    {
      debugPrint("User login success and his data is : $data");
     emit(LoginSuccessState());
    }
    else{
      debugPrint("Failed to login, reason is : ${data['message']}");
      emit(FailedToLoginState(message: data['message']));
    }
  }
}
catch(e){
  emit(FailedToLoginState(message:e.toString()));
}
  }
  }








