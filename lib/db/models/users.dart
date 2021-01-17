
import 'package:moor/moor.dart';

class Users extends Table{
  IntColumn get id => integer().autoIncrement()();
  TextColumn get fullName => text()();
  TextColumn get username => text()();
  TextColumn get password => text()();
  TextColumn get phone => text().withLength(min: 10, max: 15)();
  BoolColumn get userLoggedIn => boolean().withDefault(Constant(false))();
  BoolColumn get isAdmin => boolean().withDefault(Constant(false))();

}