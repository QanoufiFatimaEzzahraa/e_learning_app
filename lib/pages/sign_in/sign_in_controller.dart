import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'bloc/sign_in_blocs.dart';


class SignInCtroller{
  final BuildContext context;
  const SignInCtroller({required this.context});

  Future<void> handleSignIn(String type) async {
    try{
      if(type == "email"){
        final state = context.read<SignInBloc>().state;
        String emailAdress = state.email;
        String password = state.password;
        if(emailAdress.isEmpty){

        }
        try{
          final credential = await FirebaseAuth.instance
              .signInWithEmailAndPassword(email: emailAdress, password: password);
          if(credential.user == null){

          }
          if(!credential.user!.emailVerified){

          }
          var user = credential.user;
          if(user!=null){


          }else{

          }

        }catch(e){

        }
        if(password.isEmpty){

        }
      }
    }catch(e){}
  }
}