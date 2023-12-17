import 'package:flutter/material.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    return const SingUpChildPage();
  }
}

class SingUpChildPage extends StatefulWidget {
  const SingUpChildPage({super.key});

  @override
  State<SingUpChildPage> createState() => _SingUpChildPageState();
}

class _SingUpChildPageState extends State<SingUpChildPage> {
  final _pageViewController = PageController(initialPage: 0);
  final list = <String>['DJDJD', 'DHUW', 'HFHF', 'FGUWIWI'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            Expanded(
              child: SizedBox(
                width: MediaQuery.of(context).size.width,
                child: PageView.builder(
                    // physics: const NeverScrollableScrollPhysics(),
                    itemCount: list.length,
                    controller: _pageViewController,
                    itemBuilder: (context, index) => Text(list[index])),
              ),
            ),
            Text("Ban da co tai khoan u")
          ],
        ),
      ),
    );
  }
}
