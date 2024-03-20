
abstract class Repository<T> {
  Future<T> getOne(int id);
  void updateOne();
  void deleteOne(int id);
  void createOne(T t);
  // Repository({});
}