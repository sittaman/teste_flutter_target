import 'package:flutter/material.dart';
import 'package:teste_flutter_target/core/ds/base_scaffold.dart';

class InputView extends StatelessWidget {
  InputView({super.key});

  final TextEditingController _inputController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return BaseScaffold(
      child: Column(
        children: [
          Spacer(),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 32.0),
            child: Container(
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.all(Radius.elliptical(5, 100)),
                color: Colors.white,
              ),
              height: MediaQuery.of(context).size.height * .45,
              child: ListView.builder(
                itemCount: 20,
                itemBuilder: (context, index) {
                  return ListTile(
                      title: Text(
                    '$index',
                    textAlign: TextAlign.center,
                  ));
                },
              ),
            ),
          ),
          Spacer(),
          TextFormField(
            controller: _inputController,
            decoration: const InputDecoration(hintText: 'Digite'),
          ),
        ],
      ),
    );
  }
}
