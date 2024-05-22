import 'package:flutter/material.dart';
import 'package:weparty/components/navigation/navigation.dart';

class MyCustomForm extends StatefulWidget {
  const MyCustomForm({super.key});

  @override
  State<MyCustomForm> createState() => _MyCustomFormState();
}

class _MyCustomFormState extends State<MyCustomForm> {
  final myControllerUser = TextEditingController();
  final myControllerPassword = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  @override
  void dispose() {
    myControllerUser.dispose();
    myControllerPassword.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
                child: TextFormField(
                  controller: myControllerUser,
                  decoration: const InputDecoration(
                    border: UnderlineInputBorder(),
                    labelText: 'Usuário',
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Campo vázio';
                    }
                    return null;
                  },
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
                child: TextFormField(
                  controller: myControllerPassword,
                  decoration: const InputDecoration(
                    border: UnderlineInputBorder(),
                    labelText: 'Senha',
                  ),
                  obscureText: true,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Campo vázio';
                    }
                    return null;
                  },
                ),
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  if (_formKey.currentState?.validate() == true) {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const NavigationBottomBar(),
                      ),
                    );
                  }
                },
                child: Text("Entrar"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
