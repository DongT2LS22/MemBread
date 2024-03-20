
import 'package:gr1_flutter/models/user/user.dart';
import 'package:gr1_flutter/repositories/repository.dart';

class UserRepository extends Repository<User>{
  @override
  void createOne(User t) {
    // TODO: implement createOne
  }

  @override
  void deleteOne(int id) {
    // TODO: implement deleteOne
  }

  @override
  Future<User> getOne(int id) {
    // TODO: implement getOne
    throw UnimplementedError();
  }

  @override
  void updateOne() {
    // TODO: implement updateOne
  }

}