import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:news_app/bloc/category_news/category_news_cubit.dart';
import 'package:news_app/bloc/economy_news/economy_news_cubit.dart';
import 'package:news_app/bloc/law_news/law_news_cubit.dart';
import 'package:news_app/bloc/login/login_cubit.dart';
import 'package:news_app/bloc/news_home_page/news_home_page_cubit.dart';
import 'package:news_app/bloc/politik_news/politik_news_cubit.dart';
import 'package:news_app/bloc/sign_up/sign_up_cubit.dart';
import 'package:news_app/bloc/sport_news/sport_news_cubit.dart';
import 'package:news_app/bloc/tech_news/tech_news_cubit.dart';
import 'package:news_app/firebase_options.dart';
import 'package:news_app/pagination/view/bookmark_view.dart';
import 'package:news_app/pagination/view/home_view.dart';
import 'package:news_app/pagination/view/login_view.dart';
import 'package:news_app/pagination/view/profile_view.dart';
import 'package:news_app/pagination/view/register_view.dart';

import 'pagination/view/category_view.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});
  final GoRouter _router = GoRouter(
    initialLocation: '/login',
    routes: <GoRoute>[
      GoRoute(
        path: '/',
        builder: (BuildContext context, GoRouterState state) =>
            const HomePageBody(),
      ),
      GoRoute(
        path: '/category',
        builder: (BuildContext context, GoRouterState state) => CategoryView(),
      ),
      GoRoute(
        path: '/bookmark',
        builder: (BuildContext context, GoRouterState state) =>
            const BookmarkView(),
      ),
      GoRoute(
        path: '/profile',
        builder: (BuildContext context, GoRouterState state) =>
            const ProfileView(),
      ),
      GoRoute(
        path: '/login',
        builder: (BuildContext context, GoRouterState state) => LoginView(),
      ),
      GoRoute(
        path: '/signUp',
        builder: (BuildContext context, GoRouterState state) =>
            const RegisterView(),
      ),
      // Add more routes here
    ],
  );

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => LoginCubit(),
        ),
        BlocProvider(
          create: (context) => SignUpCubit(),
        ),
        BlocProvider(
          create: (context) => PolitikNewsCubit(),
        ),
        BlocProvider(
          create: (context) => TechNewsCubit(),
        ),
        BlocProvider(
          create: (context) => LawNewsCubit(),
        ),
        BlocProvider(
          create: (context) => EconomyNewsCubit(),
        ),
        BlocProvider(
          create: (context) => SportNewsCubit(),
        ),
        BlocProvider(
          create: (context) => NewsHomePageCubit()..getNews(),
        ),
        BlocProvider(
          create: (context) => CategoryNewsCubit(
            context.read<PolitikNewsCubit>(),
            context.read<LawNewsCubit>(),
            context.read<EconomyNewsCubit>(),
            context.read<TechNewsCubit>(),
            context.read<SportNewsCubit>(),
          ),
        ),
      ],
      child: MaterialApp.router(
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(
              seedColor: const Color.fromARGB(255, 50, 39, 69)),
          useMaterial3: true,
        ),

        routerConfig: _router,
        // routeInformationParser: _router.routeInformationParser,
        // routeInformationProvider: _router.routeInformationProvider,
        // Remove the home property because we are using routing
      ),
    );
  }
}
