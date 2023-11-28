import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
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
              if (state.isAuthenticated) {
                context.go('/');
              }
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
                      decoration: InputDecoration(
                        labelText: 'Email',
                        labelStyle: const TextStyle(
                          color: Colors.blueGrey,
                        ),
                        suffixIcon: const Icon(
                          Icons.email,
                        ),
                        border: OutlineInputBorder(
                          borderSide: const BorderSide(color: Colors.blue),
                          borderRadius: BorderRadius.circular(10),
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
                      decoration: InputDecoration(
                        labelText: 'Password',
                        labelStyle: const TextStyle(
                          color: Colors.blueGrey,
                        ),
                        suffixIcon: const Icon(
                          Icons.password,
                        ),
                        border: OutlineInputBorder(
                          borderSide: const BorderSide(color: Colors.blue),
                          borderRadius: BorderRadius.circular(10),
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
                    onPressed: () {
                      context.go('/signUp');
                    },
                    child: const Text("SIGN UP"),
                  ),
                  state.isLoading
                      ? const CircularProgressIndicator()
                      : SignInButton(Buttons.google,
                          onPressed: () =>
                              context.read<LoginCubit>().googleSign())
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
