import 'package:flutter/material.dart';
import 'package:hyper_ui/core.dart';

class LoginView extends StatefulWidget {
  const LoginView({Key? key}) : super(key: key);

  Widget build(context, LoginController controller) {
    controller.view = this;

    return Scaffold(
      appBar: AppBar(
        title: const Text("Login"),
        actions: const [],
      ),
      body: Container(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            Card(
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  children: [
                    QTextField(
                      label: "Email",
                      hint: "Your email",
                      validator: Validator.email,
                      suffixIcon: Icons.email,
                      value: "demo@gmail.com",
                      onChanged: (value) {},
                    ),
                    QTextField(
                      label: "Password",
                      hint: "Your password",
                      obscure: true,
                      validator: Validator.required,
                      suffixIcon: Icons.password,
                      value: "123456",
                      onChanged: (value) {},
                    ),
                    const SizedBox(
                      height: 20.0,
                    ),
                    ElevatedButton.icon(
                      icon: const Icon(Icons.login),
                      label: const Text("Login"),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.blueGrey,
                      ),
                      onPressed: () {},
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  State<LoginView> createState() => LoginController();
}
