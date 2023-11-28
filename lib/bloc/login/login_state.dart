part of 'login_cubit.dart';

@freezed
class LoginState with _$LoginState {
  const factory LoginState({
    @Default(false) bool isLoading,
    String? errorMessage,
    String? successMessage,
    String? token,
    String? userId,
    UserModel? userModel,
    @Default(false) bool isAuthenticated,
  }) = Initial;
}
