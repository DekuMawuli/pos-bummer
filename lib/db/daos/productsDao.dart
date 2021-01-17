import 'package:moor/moor.dart';
import 'package:pos_app/db/db.dart';
import 'package:pos_app/db/models/carts.dart';
import 'package:pos_app/db/models/products.dart';
import 'package:pos_app/db/models/users.dart';

part 'productsDao.g.dart';


@UseDao(tables: [Products, Carts, CartItems, Categories, Users])
class ProductsDao extends DatabaseAccessor<POSDatabase>
    with _$ProductsDaoMixin {
  POSDatabase db;
  ProductsDao(this.db) : super(db);

  Future<List<Product>> getAllProducts() => select(products).get();
  Stream<List<Product>> streamAllProducts() => select(products).watch();

  Future insertProduct(Insertable<Product> product) =>
      into(products).insert(product);
  Future updateProduct(Insertable<Product> product) =>
      update(products).replace(product);
  Future deleteProduct(Insertable<Product> product) =>
      delete(products).delete(product);

  Future<List<Product>> getCategoryProducts(int categoryID) {
    return (select(products)
          ..where((product) => product.categoryId.equals(categoryID)))
        .get();
  }

  Future<List<Product>> getUserAddedProducts(int userID) {
    return (select(products)..where((product) => product.userId.equals(userID)))
        .get();
  }

  Stream<List<UserAssociatedWithProduct>> userWithProducts() {
    final query = select(products).join(
      [
        leftOuterJoin(users, users.id.equalsExp(products.userId)),
      ],
    );

    return query.watch().map((rows) {
      return rows.map((row) {
        return UserAssociatedWithProduct(
          row.readTable(users),
          row.readTable(products),
        );
      }).toList();
    });
  }

 
 
}

class UserAssociatedWithProduct {
  final User user;
  final Product product;

  UserAssociatedWithProduct(this.user, this.product);
}


@UseDao(tables: [Products, Carts, CartItems, Users])
class CartItemsDao extends DatabaseAccessor<POSDatabase>
    with _$CartItemsDaoMixin {
  POSDatabase db;
  CartItemsDao(this.db) : super(db);

  Future<List<CartItem>> getAllCartItems() => select(cartItems).get();

  Future insertCartItem(Insertable<CartItem> cartItem) =>
      into(cartItems).insert(cartItem);
  Future updateCartItem(Insertable<CartItem> cartItem) =>
      update(cartItems).replace(cartItem);
  Future deleteCartItem(Insertable<CartItem> cartItem) =>
      delete(cartItems).delete(cartItem);

  Stream<List<CartItem>> getItemsInCart(int cartId) {
    return (select(cartItems)
          ..where((cartItem) => cartItem.cartId.equals(cartId)))
        .watch();
  }
}

@UseDao(tables: [Categories])
class CategoriesDao extends DatabaseAccessor<POSDatabase>
    with _$CategoriesDaoMixin {
  POSDatabase db;
  CategoriesDao(this.db) : super(db);

  Future<List<Categorie>> getAllCategories() => select(categories).get();
  Stream<List<Categorie>> streamAllCategories() => select(categories).watch();

  Future insertCategory(Insertable<Categorie> categorie) =>
      into(categories).insert(categorie);
  Future updateCategory(Insertable<Categorie> categorie) =>
      update(categories).replace(categorie);
  Future deleteCategory(Insertable<Categorie> categorie) =>
      delete(categories).delete(categorie);

  Future<Categorie> getCategory(String name){
    return (select(categories)..where((category) => category.name.equals(name))).getSingle();
  }

  Stream<List<Categorie>> searchCategory(String query){
    return(select(categories)..where((category) => category.name.contains(query))).watch();
  }

  Future<List<Categorie>> searchGetCategory(String query){
    return(select(categories)..where((category) => category.name.contains(query))).get();
  }
}
