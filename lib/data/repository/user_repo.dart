import 'package:doulingo_fake/data/provider/user_provider.dart';
import 'package:doulingo_fake/models/user_model.dart';

class UserRepo {
  Future createUserRepo(UserModel userModel) {
    return UserProvider().createUserProvider(userModel);
  }

  Future signInRepo(UserModel userModel) async {
    return UserProvider().signInUserProvider(userModel);
  }

  // Future signUpAuthRepo(UserModel userModel) async {
  //   return UserProvider().signUpAuthProvider(userModel);
  // }

  Future signInAuthRepo(UserModel userModel, String url) async {
    return UserProvider().signInAuthProvider(userModel, url);
  }

  Future updateImageRepo({required String image}) async {
    return UserProvider().updateImageProvider(image: image);
  }
}
