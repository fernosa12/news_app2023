import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news_app/bloc/auth/cubit/auth_cubit.dart';
import 'package:news_app/pages/home_page.dart';
import 'package:news_app/pages/sign_in_page.dart';

class LandingPage extends StatelessWidget {
  const LandingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final authState = context.select((AuthCubit cubit) => cubit.state);

    // Berdasarkan keadaan otentikasi, navigasikan ke halaman yang sesuai
    if (authState.isSignedIn) {
      return const HomePage(); // Halaman beranda jika sudah masuk
    } else {
      return const SignInPage(); // Halaman masuk jika belum masuk
    }
  }
}
