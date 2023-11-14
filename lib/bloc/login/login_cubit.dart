import 'package:bloc/bloc.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:google_sign_in/google_sign_in.dart';

part 'login_cubit.freezed.dart';
part 'login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  LoginCubit() : super(const LoginState());
  final FirebaseAuth _auth = FirebaseAuth.instance;
  Future<void> googleSign() async {
    emit(state.copyWith(isLoading: true));
    GoogleSignIn googleSignIn = GoogleSignIn(
      scopes: [
        'email',
      ],
    );

    try {
      await googleSignIn.disconnect();
    } catch (_) {}

    try {
      GoogleSignInAccount? googleSignInAccount = await googleSignIn.signIn();
      GoogleSignInAuthentication googleSignInAuthentication =
          await googleSignInAccount!.authentication;
      final AuthCredential credential = GoogleAuthProvider.credential(
        accessToken: googleSignInAuthentication.accessToken,
        idToken: googleSignInAuthentication.idToken,
      );
      UserCredential userCredential =
          await FirebaseAuth.instance.signInWithCredential(credential);
      if (userCredential.user != null) {
        String? token = await userCredential.user!.getIdToken(true);
        emit(state.copyWith(
            isLoading: false,
            isAuthenticated: true,
            successMessage: "Login berhasil!",
            token: token ?? "Token is null"));
      } else {
        emit(state.copyWith(
            isLoading: false, errorMessage: "UserCredential.user is null!"));
      }
    } catch (_) {}
  }

  Future<void> loginCredential(String email, String password) async {
    emit(state.copyWith(isLoading: true));

    try {
      UserCredential userCredential = await _auth.signInWithEmailAndPassword(
          email: email, password: password);
      if (userCredential.user != null) {
        // Mendapatkan token terbaru
        String? token = await userCredential.user!.getIdToken(true);
        emit(state.copyWith(
            isLoading: false,
            isAuthenticated: true,
            successMessage: "Login berhasil!",
            token: token ?? "Token is null"));
      } else {
        // Handle user null
        emit(state.copyWith(
            isLoading: false, errorMessage: "UserCredential.user is null!"));
      }
    } catch (e) {
      emit(state.copyWith(
          isLoading: false, errorMessage: "Terjadi kesalahan saat login!"));
    }
  }

  Future<void> signOut() async {
    await FirebaseAuth.instance.signOut();
    emit(state.copyWith(
        isAuthenticated: false, successMessage: "Berhasil keluar!"));
  }
}
