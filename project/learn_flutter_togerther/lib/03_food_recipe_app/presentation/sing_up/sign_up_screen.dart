import 'package:flutter/material.dart';
import 'package:learn_flutter_togerther/03_food_recipe_app/presentation/component/input_text.dart';
import 'package:learn_flutter_togerther/03_food_recipe_app/presentation/ui/color_styles.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  bool _isChecked = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(32.0),
          child: SingleChildScrollView(
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
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Checkbox(
                      value: _isChecked,
                      onChanged: (bool? newValue) {
                        setState(() {
                          _isChecked = newValue!;
                        });
                      },
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5),
                      ),
                      activeColor: ColorStyles.secondary100,
                      side: WidgetStateBorderSide.resolveWith(
                        (states) => BorderSide(
                          width: 1.0,
                          color: ColorStyles.secondary100,
                        ),
                      ),
                    ),
                    Text(
                      'Accept Terms & Condition',
                      style: TextStyle(
                        color: ColorStyles.secondary100,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
