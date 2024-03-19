import 'package:cartbucket/src/models/product.dart';
import 'package:cartbucket/src/views/productview.dart';
import 'package:flutter/material.dart';

class ProductTile extends StatelessWidget {
  const ProductTile({super.key, required this.product});

  final Product product;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(
            builder: (context) => ProductView(product: product)));
      },
      child: Container(
        margin: const EdgeInsets.all(10.0),
        padding: const EdgeInsets.all(20.0),
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20.0),
            boxShadow: [
              BoxShadow(color: Colors.grey.shade300, blurRadius: 20.0)
            ]),
        child: Row(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular((20.0)),
              child: Hero(
                tag: product.id,
                child: Image.network(
                  product.image,
                  height: 100,
                  width: 100,
                ),
              ),
            ),
            const SizedBox(
              width: 10,
            ),
            Flexible(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    product.title,
                    style: const TextStyle(fontSize: 18),
                  ),
                  const SizedBox(
                    height: 10.0,
                  ),
                  Text(
                    product.description,
                    maxLines: 2,
                    style: const TextStyle(fontSize: 14),
                  ),
                  const SizedBox(
                    height: 10.0,
                  ),
                  Text(
                    '\$${product.price}',
                    maxLines: 2,
                    style: const TextStyle(fontSize: 15),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
