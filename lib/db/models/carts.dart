import 'package:moor/moor.dart';

class Carts extends Table{
  IntColumn get id => integer().autoIncrement()();
  DateTimeColumn get dateAdded => dateTime().withDefault(Constant(DateTime.now()))();
  IntColumn get userId => integer().nullable().customConstraint("NULL REFERENCES users(id)")();
  BoolColumn get isOpen => boolean().withDefault(Constant(true))();
}