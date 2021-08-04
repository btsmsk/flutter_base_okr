import 'package:flutter_base_okr/data/data_source/remote/auth/auth_remote_data_source.dart';

class AuthRepository {
  final AuthRemoteDataSource authRemoteDataSource;

  AuthRepository({required this.authRemoteDataSource});

  onAuthChanged() async => authRemoteDataSource.onAuthChanged();

  signInWithEmailAndPassword(String email, String password) async =>
      authRemoteDataSource.signInWithEmailAndPassword(email, password);

  signInWithGoogle() async => authRemoteDataSource.signInWithGoogle();

  isSignedIn() async => authRemoteDataSource.isSignedIn();

  signUp(
    String email,
    String password, {
    String? username,
  }) async =>
      authRemoteDataSource.signUp(email, password, username: username);

  getCurrentUser() async => authRemoteDataSource.getCurrentUser();

  getAccessToken() async => authRemoteDataSource.getAccessToken();

  getRefreshToken() async => authRemoteDataSource.getRefreshToken();

  signOut() async => authRemoteDataSource.signOut();

  sendEmailVerification() async => authRemoteDataSource.sendEmailVerification();

  isEmailVerified() async => authRemoteDataSource.isEmailVerified();

  changePassword(String password) async =>
      authRemoteDataSource.changePassword(password);

  deleteUser() async => authRemoteDataSource.deleteUser();

  sendPasswordResetMail(String email) async =>
      authRemoteDataSource.sendPasswordResetMail(email);
}
