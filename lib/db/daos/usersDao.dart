import 'package:moor/moor.dart';
import 'package:pos_app/db/db.dart';
import 'package:pos_app/db/models/carts.dart';
import 'package:pos_app/db/models/products.dart';
import 'package:pos_app/db/models/users.dart';


part 'usersDao.g.dart';

@UseDao(tables: [Users, Products, Carts])
class UsersDao extends DatabaseAccessor<POSDatabase> with _$UsersDaoMixin{
  POSDatabase db;
  UsersDao(this.db): super(db);
  Stream<User> getCurrentUser(){
    return(select(users)..where((user) => user.userLoggedIn.equals(true))).watchSingle();
  }

  Future<User> getUser(String username){
    return (select(users)..where((user) => user.username.equals(username))).getSingle();
  }

  Future<List<User>> getEmployees() => select(users).get();
  Stream<List<User>> getStreamEmployees() => select(users).watch();

  Stream<List<User>> searchUsers(String query){
    return (select(users)..where((user) => user.fullName.contains(query))).watch();
  }

  Future insertUser(Insertable<User> user) => into(users).insert(user);
  Future updateUser(Insertable<User> user) => update(users).replace(user);
  Future deleteUser(Insertable<User> user) => delete(users).delete(user);
}