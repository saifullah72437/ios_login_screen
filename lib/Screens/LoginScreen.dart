import 'package:flutter/material.dart';

import '../utils/emailForm.dart';
import '../utils/loginOptionButton.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Column(

            children: [
              SizedBox(height: 20,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(Icons.cancel_outlined, color: Colors.grey,),

                  Text('Later', style: TextStyle(fontSize: 15, color: Colors.grey ),),

                ],
              ),
              SizedBox(height: 20,),
              Text('Create an Account', style: TextStyle(color: Colors.black, fontSize: 18, fontWeight: FontWeight.bold),),
              SizedBox(height: 40,),
              EmailForm(hintText: 'Email address'),
              SizedBox(height: 20,),
              EmailForm(hintText: 'Password'),
              SizedBox(height: 40,),
              Container(
                width: double.infinity,
                height: 50,
                decoration: BoxDecoration(
                  color: Color(0XFFffde69),
                  borderRadius: BorderRadius.circular(10)
                ),
                child: Center(child: Text('create an account')),
              ),
              SizedBox(height: 40,),
              Text('Already have an account?', style: TextStyle(color: Colors.grey, fontSize: 14,),),
              SizedBox(height: 20,),

              Container(
                height: 2,
                color: Colors.grey[300],
              ),
              SizedBox(height: 40,),
              LoginOptionButton(icon: Icons.facebook, text: 'continue with facebook',),
              SizedBox(height: 20,),
              LoginOptionButton(icon: Icons.g_mobiledata, text: 'continue with Google',),
              SizedBox(height: 20,),
              LoginOptionButton(icon: Icons.apple, text: 'continue with Apple',),
            ],
          ),
        ),
      ),
    );
  }
}
