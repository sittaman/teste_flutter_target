import 'package:flutter/material.dart';
import 'package:teste_flutter_target/core/ds/base_scaffold.dart';
import 'package:teste_flutter_target/presentation/login/login_controller.dart';
import 'package:teste_flutter_target/presentation/login/login_form.dart';
import 'package:teste_flutter_target/service_locator.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

class LoginView extends StatelessWidget {
  const LoginView({super.key});

  @override
  Widget build(BuildContext context) {
    return BaseScaffold(
      child: Column(
        children: [
          const Spacer(),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 32.0),
            child: LoginForm(),
          ),
          const Spacer(),
          TextButton(
            style: TextButton.styleFrom(foregroundColor: Colors.white),
            onPressed: () async {
              await launchUrl(Uri.parse('https://www.google.com.br'));
            },
            child: const Text('Política de privacidade'),
          ),
        ],
      ),
    );
  }
}
