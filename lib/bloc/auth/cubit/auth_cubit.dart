import 'package:bloc/bloc.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'auth_cubit.freezed.dart';
part 'auth_state.dart';

class AuthCubit extends Cubit<AuthState> {
  AuthCubit() : super(const AuthState()) {
    FirebaseAuth.instance.authStateChanges().listen((User? user) {
      if (user == null) {
        return emit(state.copyWith(isSignedIn: false));
      } else {
        emit(state.copyWith(isSignedIn: true));
      }
    });
  }
}
