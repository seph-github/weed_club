import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:weed_club/app/routes.dart';
import 'package:weed_club/utils/colors.dart';
import 'package:weed_club/utils/constants.dart';
import 'package:weed_club/widgets/email_textfield.dart';
import 'package:weed_club/widgets/page_layout.dart';
import 'package:weed_club/widgets/password_textfield.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.sizeOf(context);
    return PageLayout(
      child: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              width: size.width * 0.6,
              margin: const EdgeInsets.symmetric(
                horizontal: commonPaddingH,
                vertical: commonPaddingV,
              ),
              child: Text(
                'Welcome back! Sign in and let\'s get puffing!',
                style: Theme.of(context).textTheme.titleLarge,
              ),
            ),
            const EmailTextfield(
              hintText: 'username',
            ),
            const SizedBox(
              height: heightGap,
            ),
            const PasswordTextfield(
              hintText: 'password',
            ),
            const SizedBox(
              height: heightGap,
            ),
            TextButton(
              onPressed: () {},
              style: TextButton.styleFrom(
                backgroundColor: btnColorPrimary,
                fixedSize: Size(size.width, 50),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(borderRadius),
                ),
              ),
              child: Text(
                'Log in',
                style: Theme.of(context).textTheme.labelLarge,
              ),
            ),
            const SizedBox(
              height: heightGap,
            ),
            Center(
              child: TextButton(
                onPressed: () {},
                child: Text(
                  'Forgot password?',
                  style: Theme.of(context).textTheme.labelSmall,
                ),
              ),
            ),
            const Spacer(),
            const Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  'Don\'t have an account yet? ',
                  style: Theme.of(context).textTheme.labelSmall,
                ),
                GestureDetector(
                  onTap: () =>
                      context.pushReplacementNamed(Routes.signup.routeName),
                  child: Text(
                    'Sign up',
                    style: Theme.of(context)
                        .textTheme
                        .labelSmall
                        ?.copyWith(color: textPrimary),
                  ),
                ),
              ],
            ),
            const Spacer(),
          ],
        ),
      ),
    );
  }
}
