import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news_app/bloc/login/login_cubit.dart';
import 'package:news_app/pagination/view/home_view.dart';

class HomePageLanding extends StatelessWidget {
  const HomePageLanding({Key? key}) : super(key: key);
  static Page page() => const MaterialPage<void>(child: HomePageLanding());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocProvider(
        create: (_) => LoginCubit(),
        child: const HomePageBody(),
      ),
    );
  }
}
