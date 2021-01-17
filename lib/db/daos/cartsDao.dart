import 'package:moor/moor.dart';
import 'package:pos_app/db/models/carts.dart';
import 'package:pos_app/db/models/products.dart';
import 'package:pos_app/db/models/users.dart';

import '../db.dart';

part 'cartsDao.g.dart';

@UseDao(tables: [Carts, CartItems, Users])
class CartsDao extends DatabaseAccessor<POSDatabase> with _$CartsDaoMixin{
  POSDatabase db;
  CartsDao(this.db): super(db);

  Future<List<Cart>> allCarts() => select(carts).get();
  Stream<List<Cart>> allStreamCarts() => select(carts).watch();

  Future insertCart(Insertable<Cart> cart) => into(carts).insert(cart);
  Future updateCart(Insertable<Cart> cart) => update(carts).replace(cart);
  Future deleteCart(Insertable<Cart> cart) => delete(carts).delete(cart);

  Future<List<Cart>> getUserAddedCarts(int userId){
    return (select(carts)..where((cart) => cart.userId.equals(userId))).get();
  }
  Future<Cart> getOpenCart(){
    return (select(carts)..where((cart) => cart.isOpen.equals(true))).getSingle();
  }

   Stream<List<CartWithCartItems>> getCartWithCartItems(){
    final query = (select(carts)..where((cart) => null));
  }

}
class CartWithCartItems{
  final Cart cart;
  final CartItem cartItem;

  CartWithCartItems(this.cart, this.cartItem);
}