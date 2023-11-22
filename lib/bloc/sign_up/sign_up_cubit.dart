import 'package:bloc/bloc.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'sign_up_cubit.freezed.dart';
part 'sign_up_state.dart';

class SignUpCubit extends Cubit<SignUpState> {
  SignUpCubit() : super(const SignUpState());
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final FirebaseFirestore firestore = FirebaseFirestore.instance;
  Future<void> signUp(String email, String password, String numberPhone,
      String name, String rePassword) async {
    if (password != rePassword) {
      emit(state.copyWith(errorMessage: "Kata sandi tidak cocok!"));
      return;
    }
    // Setelah pendaftaran berhasil, Anda dapat mengatur successMessage di sini
    emit(state.copyWith(
        isLoading: true, errorMessage: null, succesMessge: null));

    try {
      UserCredential userCredential = await _auth
          .createUserWithEmailAndPassword(email: email, password: password);
      await firestore.collection('users').doc(userCredential.user!.uid).set({
        'name': name,
        'phone': numberPhone,
      });
      emit(state.copyWith(
          isLoading: false,
          isValid: true,
          succesMessge: 'Pendaftaran Berhasil !'));
    } catch (e) {
      if (e is FirebaseAuthException) {
        print('Error code: ${e.code}');
        print(e.message);
      }
      emit(state.copyWith(
          errorMessage: "Terjadi kesalahan: ${e.toString()}",
          isLoading: false,
          succesMessge: null));
    }
  }

  Future<void> getUserData() async {
    try {
      User? user = _auth.currentUser;
      if (user != null) {
        DocumentSnapshot usertData =
            await firestore.collection('users').doc(user.uid).get();
      }
    } catch (e) {}
  }
}
