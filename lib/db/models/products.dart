import 'package:moor/moor.dart';

class Categories extends Table{
  IntColumn get id => integer().autoIncrement()();
  TextColumn get name => text()();
}

class Products extends Table{
  IntColumn get id => integer().autoIncrement()();
  IntColumn get categoryId => integer().nullable().customConstraint("NULL REFERENCES categories(id)")();
  IntColumn get userId => integer().nullable().customConstraint("NULL REFERENCES users(id)")();
  TextColumn get name => text()();
  RealColumn get costPrice => real()();
  IntColumn get quantity => integer()();
  RealColumn get sellingPrice => real()();
  BoolColumn get isAvailable => boolean().withDefault(Constant(true))();
  DateTimeColumn get dateAdded => dateTime().withDefault(Constant(DateTime.now()))();
}


class CartItems extends Table{
  IntColumn get id => integer().autoIncrement()();
  IntColumn get cartId => integer().nullable().customConstraint("NULL REFERENCES carts(id)")();
  IntColumn get productId => integer().nullable().customConstraint("NULL REFERENCES products(id)")();
  RealColumn get totalCost => real()();
  IntColumn get quantity => integer()();
}