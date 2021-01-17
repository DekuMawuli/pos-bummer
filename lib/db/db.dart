import 'dart:io';

import 'package:moor/ffi.dart';
import 'package:moor/moor.dart';
import 'package:sqflite/sqflite.dart' show getDatabasesPath;
import 'package:path/path.dart' as p;

import 'daos/usersDao.dart';
import 'daos/productsDao.dart';
import 'daos/cartsDao.dart';
import 'models/carts.dart';
import 'models/products.dart';
import 'models/users.dart';

part 'db.g.dart';

LazyDatabase _openDB() {
  return LazyDatabase(() async {
    final file = File('pos.sqlite');
    return VmDatabase(file);
  });
}


@UseMoor(
  tables: [Users, Carts, Products, Categories, CartItems],
  daos: [UsersDao, ProductsDao, CategoriesDao, CartsDao, CartItemsDao],
)
class POSDatabase extends _$POSDatabase {
  POSDatabase() : super(_openDB());

  @override
  int get schemaVersion => 1;

  
}
