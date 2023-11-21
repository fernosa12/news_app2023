import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:news_app/bloc/cubit/news_homepage_cubit.dart';
import 'package:news_app/bloc/login/login_cubit.dart';
import 'package:news_app/bloc/news_category/news_category_cubit.dart';
import 'package:news_app/bloc/sign_up/sign_up_cubit.dart';
import 'package:news_app/firebase_options.dart';
import 'package:news_app/models/repository/news_home_page_repository_impl.dart';
import 'package:news_app/models/repository/news_repository_impl.dart';
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
        builder: (BuildContext context, GoRouterState state) =>
            const CategoryView(),
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
        BlocProvider<NewsCategoryCubit>(
          create: (context) => NewsCategoryCubit(NewsCategoryRepositoryImpl()),
        ),
        BlocProvider(
          create: (context) => NewsHomepageCubit(NewsHomePageRepositoryImpl()),
        )
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
