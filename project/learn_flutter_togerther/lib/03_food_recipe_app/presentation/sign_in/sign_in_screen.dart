import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:learn_flutter_togerther/03_food_recipe_app/presentation/component/big_button.dart';
import 'package:learn_flutter_togerther/03_food_recipe_app/presentation/component/input_text.dart';
import 'package:learn_flutter_togerther/03_food_recipe_app/presentation/component/sns_login_items.dart';
import 'package:learn_flutter_togerther/03_food_recipe_app/presentation/ui/color_styles.dart';
import 'package:learn_flutter_togerther/03_food_recipe_app/presentation/ui/text_styles.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({super.key});

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
                const SizedBox(
                  height: 60,
                ),
                Text(
                  'Hello,',
                  style: TextStyles.headerTextBold,
                ),
                Text('Welcome Back!', style: TextStyles.headerTextRegular),
                const SizedBox(
                  height: 40,
                ),
                const InputTextField(
                  inputTitle: 'Email',
                  hintText: 'Enter Email',
                ),
                const SizedBox(
                  height: 30,
                ),
                const InputTextField(
                  inputTitle: 'Enter Password',
                  hintText: 'Enter password',
                ),
                const SizedBox(
                  height: 20,
                ),
                Text(
                  '  Forgot Password?',
                  style: TextStyles.smallerTextRegular.copyWith(
                    color: ColorStyles.secondary100,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                BigButton(
                  title: 'Sign In',
                  onTap: () {},
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
                  height: 40,
                ),
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        '''Don't have an account?''',
                        style: TextStyles.smallerTextBold.copyWith(
                          color: ColorStyles.black,
                        ),
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      GestureDetector(
                        onTap: () {
                          context.go('/sign_up');
                        },
                        child: Text(
                          'Sign up',
                          style: TextStyles.smallerTextBold.copyWith(
                            color: ColorStyles.secondary100,
                          ),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
