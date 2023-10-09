import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news_app/bloc/login/login_cubit.dart';
import 'package:sign_in_button/sign_in_button.dart';

class LoginView extends StatelessWidget {
  LoginView({Key? key}) : super(key: key);

  final TextEditingController emailController =
      TextEditingController(text: 'admin@gmail.com');
  final TextEditingController passwordController =
      TextEditingController(text: '123456');

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => LoginCubit(),
      child: Scaffold(
        body: BlocConsumer<LoginCubit, LoginState>(
          listener: (context, state) {
            if (state.errorMessage != null) {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(content: Text(state.errorMessage!)),
              );
            } else if (state.successMessage != null) {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(content: Text(state.successMessage!)),
              );
            }
          },
          builder: (context, state) {
            return Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    padding: const EdgeInsets.all(12),
                    child: TextFormField(
                      controller: emailController,
                      maxLength: 20,
                      decoration: const InputDecoration(
                        labelText: 'Email',
                        labelStyle: TextStyle(
                          color: Colors.blueGrey,
                        ),
                        suffixIcon: Icon(
                          Icons.email,
                        ),
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.blueGrey,
                          ),
                        ),
                        helperText: 'Enter your email address',
                      ),
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.all(12),
                    child: TextFormField(
                      controller: passwordController,
                      maxLength: 20,
                      obscureText: true,
                      decoration: const InputDecoration(
                        labelText: 'Password',
                        labelStyle: TextStyle(
                          color: Colors.blueGrey,
                        ),
                        suffixIcon: Icon(
                          Icons.password,
                        ),
                        enabledBorder: UnderlineInputBorder(
                          borderSide: BorderSide(
                            color: Colors.blueGrey,
                          ),
                        ),
                        helperText: 'Enter your password',
                      ),
                    ),
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blueGrey,
                    ),
                    onPressed: () {
                      context.read<LoginCubit>().loginCredential(
                          emailController.text, passwordController.text);
                    },
                    child: const Text("Login"),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: const Text("SIGN UP"),
                  ),
                  state.isLoading
                      ? const CircularProgressIndicator()
                      : SignInButton(Buttons.google,
                          onPressed: () =>
                              context.read<LoginCubit>().googleSign()),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
