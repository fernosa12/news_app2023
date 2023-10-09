import 'package:bloc/bloc.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'sign_up_cubit.freezed.dart';
part 'sign_up_state.dart';

class SignUpCubit extends Cubit<SignUpState> {
  SignUpCubit() : super(const SignUpState());
  final FirebaseAuth _auth = FirebaseAuth.instance;
  Future<void> signUp(String email, String password, String numberPhone,
      String name, String rePassword) async {
    if (password != rePassword) {
      return;
    }
    emit(state.copyWith(isLoading: true));

    try {
      UserCredential userCredential = await _auth
          .createUserWithEmailAndPassword(email: email, password: password);
    } catch (e) {
      emit(state.copyWith(errorMessage: "Terjadi kesalahan!"));
    }
    emit(state.copyWith(isLoading: false));
  }
}
