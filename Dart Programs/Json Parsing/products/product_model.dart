//KEY DATATYPES
//CONSTRUCTOR
//FACTORY CONSTRUCTOR

class ProductModel {
  //KEY DATATYPES
  int total, skip, limit;
  List<Products> productList;
  //CONSTRUCTOR
  ProductModel({
    required this.total,
    required this.skip,
    required this.limit,
    required this.productList,
  });
  //FACTORY CONSTRUCTOR
  factory ProductModel.fromJson(Map map) => ProductModel(
        total: map['total'],
        skip: map['skip'],
        limit: map['limit'],
        productList:
            (map['products'] as List).map((e) => Products.fromJson(e)).toList(),
      );
}

class Products {
  //KEY DATATYPES
  int id, stock, weight, minimumOrderQuantity;
  String title,
      description,
      category,
      brand,
      sku,
      warrantyInformation,
      shippingInformation,
      availabilityStatus,
      returnPolicy,
      thumbnail;
  double price, discountPercentage, rating;
  List<String> tags, images;
  Dimensions dimensions;
  List<Review> reviewList;
  Meta meta;
  //CONSTRUCTOR
  Products({
    required this.id,
    required this.stock,
    required this.weight,
    required this.minimumOrderQuantity,
    required this.title,
    required this.description,
    required this.category,
    required this.brand,
    required this.sku,
    required this.warrantyInformation,
    required this.shippingInformation,
    required this.availabilityStatus,
    required this.returnPolicy,
    required this.thumbnail,
    required this.price,
    required this.discountPercentage,
    required this.rating,
    required this.tags,
    required this.images,
    required this.dimensions,
    required this.reviewList,
    required this.meta,
  });

  //FACTORY CONSTRUCTOR
  factory Products.fromJson(Map map) => Products(
        id: map['id'],
        stock: map['stock'],
        weight: map['weight'],
        minimumOrderQuantity: map['minimumOrderQuantity'],
        title: map['title'],
        description: map['description'],
        category: map['category'],
        brand: map['brand'] ?? "",
        sku: map['sku'],
        warrantyInformation: map['warrantyInformation'],
        shippingInformation: map['shippingInformation'],
        availabilityStatus: map['availabilityStatus'],
        returnPolicy: map['returnPolicy'],
        thumbnail: map['thumbnail'],
        price: map['price'].toDouble(),
        discountPercentage: map['discountPercentage'].toDouble(),
        rating: map['rating'],
        tags: map['tags'].toList(),
        images: map['images'].toList(),
        dimensions: Dimensions.fromJson(map['dimensions']),
        reviewList:
            (map['reviews'] as List).map((e) => Review.fromJson(e)).toList(),
        meta: Meta.fromJson(map['meta']),
      );
}

class Dimensions {
  //KEY DATATYPES
  double width, height, depth;
  //CONSTRUCTOR
  Dimensions({
    required this.width,
    required this.height,
    required this.depth,
  });
  //FACTORY CONSTRUCTOR
  factory Dimensions.fromJson(Map map) => Dimensions(
        width: map['width'].toDouble(),
        height: map['height'].toDouble(),
        depth: map['depth'].toDouble(),
      );
}

class Review {
  //KEY DATATYPES
  int rating;
  String comment, date, reviewerName, reviewerEmail;
  //CONSTRUCTOR
  Review({
    required this.rating,
    required this.comment,
    required this.date,
    required this.reviewerName,
    required this.reviewerEmail,
  });
  //FACTORY CONSTRUCTOR
  factory Review.fromJson(Map map) => Review(
        rating: map['rating'],
        comment: map['comment'],
        date: map['date'],
        reviewerName: map['reviewerName'],
        reviewerEmail: map['reviewerEmail'],
      );
}

class Meta {
  //KEY DATATYPES
  String createdAt, updatedAt, barcode, qrCode;
  //CONSTRUCTOR
  Meta({
    required this.createdAt,
    required this.updatedAt,
    required this.barcode,
    required this.qrCode,
  });
  //FACTORY CONSTRUCTOR
  factory Meta.fromJson(Map map) => Meta(
        createdAt: map['createdAt'],
        updatedAt: map['updatedAt'],
        barcode: map['barcode'],
        qrCode: map['qrCode'],
      );
}
