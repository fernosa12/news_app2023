part of 'auth_cubit.dart';

@freezed
class AuthState with _$AuthState {
  const factory AuthState({@Default(false) bool isSignedIn}) = _Initial;
}
