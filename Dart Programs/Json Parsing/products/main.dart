import 'product_json.dart';
import 'product_model.dart';

void main() {
  ProductModel productModel = ProductModel.fromJson(productData);

  print("--------------- User Data ---------------");
  print("total: ${productModel.total}");
  print("skip: ${productModel.skip}");
  print("limit: ${productModel.limit}");
  for (var product in productModel.productList) {
    print("------------------------------");
    print("id: ${product.id}");
    print("title: ${product.title}");
    print("description: ${product.description}");
    print("category: ${product.category}");
    print("price: ${product.price}");
    print("discountPercentage: ${product.discountPercentage}%");
    print("rating: ${product.rating}");
    print("stock: ${product.stock}");
    print("tags: ${product.tags}");
    print("brand: ${product.brand}");
    print("sku: ${product.sku}");
    print("weight: ${product.weight}");
    print(
        "dimensions: {width: ${product.dimensions.width}, height: ${product.dimensions.height}, depth: ${product.dimensions.depth}}");
    print("warrantyInformation: ${product.warrantyInformation}");
    print("shippingInformation: ${product.shippingInformation}");
    print("availabilityStatus: ${product.availabilityStatus}");
    print("reviews: [ ");
    for (var val in product.reviewList) {
      print("rating: ${val.rating}");
      print("comment: ${val.comment}");
      print("date: ${val.date}");
      print("reviewerName: ${val.reviewerName}");
      print("reviewerEmail: ${val.reviewerEmail}");
    }
    print("]");
    print("returnPolicy: ${product.returnPolicy}");
    print("minimumOrderQuantity: ${product.minimumOrderQuantity}");
    print(
        "meta: {createdAt: ${product.meta.createdAt}, updatedAt: ${product.meta.updatedAt}, barCode: ${product.meta.barcode}, qrCode: ${product.meta.qrCode}}");
    print("images: ${product.images}");
    print("thumbnail: ${product.thumbnail}");
  }
}
