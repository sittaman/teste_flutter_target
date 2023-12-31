import 'package:flutter/material.dart';
import 'package:teste_flutter_target/core/ds/inline_label.dart';
import 'package:teste_flutter_target/presentation/login/login_controller.dart';
import 'package:teste_flutter_target/service_locator.dart';

class LoginForm extends StatelessWidget {
  LoginForm({super.key});

  final _formKey = GlobalKey<FormState>();

  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  final LoginController _loginController = sl.get<LoginController>();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const InlineLabel(text: 'Usuário'),
          TextFormField(
            controller: _usernameController,
            decoration: const InputDecoration(prefixIcon: Icon(Icons.people)),
          ),
          const SizedBox(
            height: 16.0,
          ),
          const InlineLabel(text: 'Senha'),
          TextFormField(
            controller: _passwordController,
            decoration: const InputDecoration(prefixIcon: Icon(Icons.lock)),
          ),
          const SizedBox(
            height: 40.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    _loginController.login(
                      _usernameController.text,
                      _passwordController.text,
                    );
                  }
                },
                child: const Text('Entrar'),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
