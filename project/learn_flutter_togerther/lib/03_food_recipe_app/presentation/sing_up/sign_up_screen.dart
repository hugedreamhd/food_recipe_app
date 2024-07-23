import 'package:flutter/material.dart';
import 'package:learn_flutter_togerther/03_food_recipe_app/presentation/component/input_text.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(32.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Create an account'),
              Text('''Let's help you set up your account'''),
              Text('''It won't take long.'''),
              SizedBox(
                height: 20,
              ),
              InputTextField(
                inputTitle: 'Name',
                hintText: 'Enter Name',
              ),
              SizedBox(
                height: 20,
              ),
              InputTextField(
                inputTitle: 'Email',
                hintText: 'Enter Email',
              ),
              SizedBox(
                height: 20,
              ),
              InputTextField(
                inputTitle: 'Password',
                hintText: 'Enter Password',
              ),
              SizedBox(
                height: 20,
              ),
              InputTextField(
                inputTitle: 'Confirm Password',
                hintText: 'Retype Password',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
