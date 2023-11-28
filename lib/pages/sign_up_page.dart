import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news_app/bloc/sign_up/sign_up_cubit.dart';

import 'package:news_app/pagination/view/register_view.dart';

class SignInPageLanding extends StatelessWidget {
  const SignInPageLanding({Key? key}) : super(key: key);
  static Page page() => const MaterialPage<void>(child: SignInPageLanding());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey[100],
      body: BlocProvider(
        create: (_) => SignUpCubit(),
        child: const RegisterView(),
      ),
    );
  }
}
