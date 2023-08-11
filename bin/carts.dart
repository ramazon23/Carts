import 'dart:convert';

// ignore_for_file: public_member_api_docs, sort_constructors_first
class Main {
  List<Carts>? carts;
  int? total;
  int? skip;
  int? limit;
  Main({
    this.carts,
    this.total,
    this.skip,
    this.limit,
  });

  factory Main.fromMap(Map<String, dynamic> map) {
    return Main(
      carts: (map['carts'] as List).map((e) => Carts.fromMap(e)).toList(),
      total: map['total'] as int,
      skip: map['skip'] as int,
      limit: map['limit'] as int,
    );
  }
}

class Carts {
  List<Products>? products;
  int? total;
  int? discountedTotal;
  int? userId;
  int? totalProducts;
  int? totalQuantity;
  Carts({
    this.products,
    this.total,
    this.discountedTotal,
    this.userId,
    this.totalProducts,
    this.totalQuantity,
  });

  factory Carts.fromMap(Map<String, Object?> map) {
    return Carts(
      products:
          (map['products'] as List).map((e) => Products.fromMap(e)).toList(),
      total: map['total'] as int,
      discountedTotal: map['discountedTotal'] as int,
      userId: map['userId'] as int,
      totalProducts: map['totalProducts'] as int,
      totalQuantity: map['totalQuantity'] as int,
    );
  }

  @override
  String toString() {
    return 'Carts(total: $total, discountedTotal: $discountedTotal, userId: $userId, totalProducts: $totalProducts, totalQuantity: $totalQuantity)';
  }
}

class Products {
  int? id;
  String? title;
  int? price;
  int? quantity;
  int? total;
  double? discountPercentage;
  int? discountedPrice;
  Products({
    this.id,
    this.title,
    this.price,
    this.quantity,
    this.total,
    this.discountPercentage,
    this.discountedPrice,
  });

  factory Products.fromMap(Map<String, dynamic> map) {
    return Products(
      id: map['id'] as int,
      title: map['title'] as String,
      price: map['price'] as int,
      quantity: map['quantity'] as int,
      total: map['total'] as int,
      discountPercentage: map['discountPercentage'] as double,
      discountedPrice: map['discountedPrice'] as int,
    );
  }

  @override
  String toString() {
    return 'Products(id: $id, title: $title, price: $price, quantity: $quantity, total: $total, discountPercentage: $discountPercentage, discountedPrice: $discountedPrice)';
  }
}
