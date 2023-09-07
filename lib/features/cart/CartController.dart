import 'Cart.dart';

class CartController {
  static final List<Cart> carts = [];

  static List<Cart> get() {
    return carts;
  }

  static void add(item) {
    Cart cartItem = Cart(
      productitem_ID: item.productitemID, 
      product_CODE: item.productDETAIL.productCODE,
      productitem_NAME: item.productitemNAME,
      productunit_CODE: null,
      productitem_QUANTITY: null,
      pricelevel_ID: null,
      productitem_RATE: null,
      taxcode_ID: null,
      vat: null,
      isPermanent: 'N'
    );
    
    carts.add(cartItem);
  }

}
