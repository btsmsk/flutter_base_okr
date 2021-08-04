import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';

class AuthRemoteDataSource {
  final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;
  final GoogleSignIn _googleSignIn = GoogleSignIn();

  Stream<User?> onAuthChanged() => _firebaseAuth.authStateChanges();

  Future<User?> signInWithEmailAndPassword(
      String email, String password) async {
    final UserCredential credential = await _firebaseAuth.signInWithEmailAndPassword(
        email: email, password: password);
    return credential.user;
  }

  Future<User?> signInWithGoogle() async {
    await _googleSignIn.signOut();
    final GoogleSignInAccount? googleUser = await _googleSignIn.signIn();
    final GoogleSignInAuthentication? googleAuth =
    await googleUser?.authentication;
    final AuthCredential? credential = GoogleAuthProvider.credential(
      accessToken: googleAuth?.accessToken,
      idToken: googleAuth?.idToken,
    );
    if(credential != null) await _firebaseAuth.signInWithCredential(credential);
    final User? user = _firebaseAuth.currentUser;
    return user;
  }

  Future<bool> isSignedIn() async {
    final currentUser = await _firebaseAuth.currentUser;
    return currentUser != null;
  }

  Future<User?> signUp(
      String email,
      String password, {
        String? username,
      }) async {
    final UserCredential userCredential = await _firebaseAuth.createUserWithEmailAndPassword(
      email: email,
      password: password,
    );
    return userCredential.user;
  }

  Future<User?> getCurrentUser() async {
    final User? user = await _firebaseAuth.currentUser;
    return user;
  }

  Future<String?> getAccessToken() async {
    User? user = await getCurrentUser();
    IdTokenResult? tokenResult = await user?.getIdTokenResult();
    return tokenResult?.token;
  }

  Future<String?> getRefreshToken() async {
    User? user = await _firebaseAuth.currentUser;
    IdTokenResult? tokenResult = await user?.getIdTokenResult(true);
    return tokenResult?.token;
  }

  Future<void> signOut() async => Future.wait([
      _firebaseAuth.signOut(),
      _googleSignIn.signOut(),
    ]);

  Future<void> sendEmailVerification() async {
    User? user = await _firebaseAuth.currentUser;
    user?.sendEmailVerification();
  }

  Future<bool> isEmailVerified() async {
    User? user = await _firebaseAuth.currentUser;
    return user?.emailVerified == true;
  }

  @override
  Future<void> changeEmail(String email) async {
    User? user = await _firebaseAuth.currentUser;
    return user?.updateEmail(email);
  }

  @override
  Future<void> changePassword(String password) async {
    User? user = await _firebaseAuth.currentUser;
    user?.updatePassword(password).then((_) {
      print("Succesfull changed password");
    }).catchError((error) {
      print("Password can't be changed" + error.toString());
    });
    return null;
  }

  @override
  Future<void> deleteUser() async {
    User? user = await _firebaseAuth.currentUser;
    user?.delete().then((_) {
      print("Succesfull user deleted");
    }).catchError((error) {
      print("user can't be delete" + error.toString());
    });
    return null;
  }

  @override
  Future<void> sendPasswordResetMail(String email) async {
    await _firebaseAuth.sendPasswordResetEmail(email: email);
    return null;
  }
}