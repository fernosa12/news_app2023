part of 'sign_up_cubit.dart';

@freezed
class SignUpState with _$SignUpState {
  const SignUpState._();

  const factory SignUpState({
    @Default(false) bool isLoading,
    @Default(false) bool isValid,
    String? errorMessage,
    String? succesMessge,
    String? userName,
    UserModel? userModel,
  }) = Initial;
}
