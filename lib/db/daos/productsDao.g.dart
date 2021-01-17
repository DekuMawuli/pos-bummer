// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'productsDao.dart';

// **************************************************************************
// DaoGenerator
// **************************************************************************

mixin _$ProductsDaoMixin on DatabaseAccessor<POSDatabase> {
  $ProductsTable get products => attachedDatabase.products;
  $CartsTable get carts => attachedDatabase.carts;
  $CartItemsTable get cartItems => attachedDatabase.cartItems;
  $CategoriesTable get categories => attachedDatabase.categories;
  $UsersTable get users => attachedDatabase.users;
}
mixin _$CartItemsDaoMixin on DatabaseAccessor<POSDatabase> {
  $ProductsTable get products => attachedDatabase.products;
  $CartsTable get carts => attachedDatabase.carts;
  $CartItemsTable get cartItems => attachedDatabase.cartItems;
  $UsersTable get users => attachedDatabase.users;
}
mixin _$CategoriesDaoMixin on DatabaseAccessor<POSDatabase> {
  $CategoriesTable get categories => attachedDatabase.categories;
}
