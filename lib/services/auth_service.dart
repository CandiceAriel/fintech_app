import 'dart:async';
import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:fintech_app/models/user.dart';
import 'package:fintech_app/repositories/user.dart';
class SignUpFailure implements Exception {
  
  const SignUpFailure([
    this.message = 'An unknown exception occurred.',
  ]);

  /// Create an authentication message
  /// from a firebase authentication exception code.
  /// https://pub.dev/documentation/firebase_auth/latest/firebase_auth/FirebaseAuth/createUserWithEmailAndPassword.html
  factory SignUpFailure.fromCode(String code) {
    switch (code) {
      case '422':
        return const SignUpFailure(
          'Duplicate Email',
        );
      default:
        return const SignUpFailure();
    }
  }

  /// The associated error message.
  final String message;
}

class LogInFailure implements Exception {
 final String message;

  LogInFailure(this.message);

  @override
  String toString() => message;
}


enum AuthenticationStatus { unknown, authenticated, unauthenticated }

class AuthService {
   final _controller = StreamController<AuthenticationStatus>();
   
  Stream<AuthenticationStatus> get status async* {
    await Future<void>.delayed(const Duration(seconds: 1));
    yield AuthenticationStatus.unauthenticated;
    yield* _controller.stream;
  }
   /// create user
  Future<void> signUp({
    required String email,
    required String password,
  }) async {
     try {
      await dotenv.load(fileName: ".env");
      var signupUrl = '${dotenv.env['BASE_URL']!}/api/register';
      final response = await http.post(
        Uri.parse(signupUrl), 
        body: {
          'email': email, 
          'password': password
        }
      );
      print(response.body);

      var jsonResponse = jsonDecode(response.body);
      var statusCode = jsonResponse['code']; 
      var errMsg = jsonResponse['data']; 
      switch(statusCode){
        case 200:
          print('Regstered');
        default:
          print('error : ${errMsg}');
      }
    }  on LogInFailure catch (e) {
      throw LogInFailure(e.message);
    } catch (_) {
      throw LogInFailure('');
    }
  }

  Future<User?> logIn({
    required String email,
    required String password,
  }) async {
    try {
      await dotenv.load(fileName: ".env");
      var logInUrl = '${dotenv.env['BASE_URL']!}/api/login';
      final response = await http.post(
        Uri.parse(logInUrl), 
        body: {
          'email': email, 
          'password': password
        }
      );
      
      var jsonResponse = jsonDecode(response.body);
      var statusCode = jsonResponse['code']; 
      var errorData = jsonResponse['data']; 

      switch (statusCode) {
        case 200 :
          await Future.delayed(
            const Duration(milliseconds: 300),
            () => _controller.add(AuthenticationStatus.authenticated),
          );
          //print(jsonResponse);
          //print('Authentication Successful');
        break;
        default :
          // print(jsonResponse);
          //print('Authentication Error : ${statusCode}, ${errorData}');
          throw LogInFailure('Error :  $errorData');
      }
      print(jsonResponse);
      return jsonResponse;
    }  on LogInFailure catch (e) {
      throw LogInFailure(e.message);
    } catch (_) {
      throw LogInFailure('');
    }
  }

  void dispose() => _controller.close();
}