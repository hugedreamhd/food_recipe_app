import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import '../component/big_button.dart';
import '../component/input_text.dart';
import '../component/sns_login_items.dart';
import '../ui/color_styles.dart';
import '../ui/text_styles.dart';

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
                    SizedBox(
                      height: 10,
                    ),
                  ],
                ),
                BigButton(
                  title: 'Sign Up',
                  onTap: () {
                    context.go('/main_screen');
                  },
                ),
                const SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 48.0, right: 48.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Expanded(
                        flex: 1,
                        child: Container(
                          color: ColorStyles.gray4,
                          height: 1.0,
                          width: double.infinity,
                        ),
                      ),
                      const SizedBox(
                        width: 2,
                      ),
                      const Expanded(
                        flex: 2,
                        child: Text(
                          textAlign: TextAlign.center,
                          'Or Sign in With',
                          style: TextStyle(
                            color: ColorStyles.gray4,
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 2,
                      ),
                      Expanded(
                        flex: 1,
                        child: Container(
                          color: ColorStyles.gray4,
                          height: 1.0,
                          width: double.infinity,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                const SnsLoginItems(),
                const SizedBox(
                  height: 10,
                ),
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Already a member?',
                        style: TextStyles.smallerTextBold.copyWith(
                          color: ColorStyles.black,
                        ),
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      InkWell(
                        onTap: () {
                          context.go('/sign_in');
                        },
                        child: Text(
                          'Sign in',
                          style: TextStyles.smallerTextBold.copyWith(
                            color: ColorStyles.secondary100,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
