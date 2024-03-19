import 'package:flutter/cupertino.dart';

class MainBanner extends StatelessWidget {
  const MainBanner({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10.0),
      height: 280,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20.0),
          image: const DecorationImage(
              image: NetworkImage('https://static.vecteezy.com/system/resources/previews/003/692/287/non_2x/big-sale-discount-promotion-banner-template-with-blank-product-podium-scene-graphic-free-vector.jpg')
          )
      ),
    );
  }
}
