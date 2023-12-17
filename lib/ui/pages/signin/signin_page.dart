import 'package:flutter/material.dart';
import 'package:instagram_clone/ui/pages/signin/widgets/footer/footer.dart';
import 'package:instagram_clone/ui/pages/signin/widgets/header/header.dart';
import 'package:instagram_clone/ui/pages/signin/widgets/middle_content/middle_content.dart';

class SignIn extends StatefulWidget {
  const SignIn({super.key});

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  @override
  Widget build(BuildContext context) {
    return const SignInChildPage();
  }
}

class SignInChildPage extends StatefulWidget {
  const SignInChildPage({super.key});

  @override
  State<SignInChildPage> createState() => _SignInChildPageState();
}

class _SignInChildPageState extends State<SignInChildPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.all(10),
          child: const Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Header(),
              MiddleContent(),
              Footer(),
            ],
          ),

        ),
      ),

    );
  }
}


