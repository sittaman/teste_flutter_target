import 'package:flutter/material.dart';
import 'package:teste_flutter_target/presentation/login/login_view.dart';
import 'package:teste_flutter_target/service_locator.dart' as sl;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await sl.init();

  runApp(const FlutterTarget());
}

class FlutterTarget extends StatelessWidget {
  const FlutterTarget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Target Admission Test',
      theme: ThemeData(
        useMaterial3: true,
        inputDecorationTheme: const InputDecorationTheme(
          filled: true,
          fillColor: Colors.white,
          border: OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.all(Radius.circular(10.0)),
          ),
        ),
        textTheme: const TextTheme(
          labelMedium: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w300,
          ),
        ),
        elevatedButtonTheme: const ElevatedButtonThemeData(
          style: ButtonStyle(
            textStyle: MaterialStatePropertyAll(
              TextStyle(
                fontWeight: FontWeight.w500,
              ),
            ),
            backgroundColor: MaterialStatePropertyAll(Color(0xFF44bd6e)),
            foregroundColor: MaterialStatePropertyAll(Colors.white),
            padding: MaterialStatePropertyAll(
              EdgeInsets.symmetric(horizontal: 48.0, vertical: 12.0),
            ),
          ),
        ),
      ),
      home: LoginView(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
