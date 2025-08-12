import 'package:flutter/material.dart';
import 'package:simble_flutter_market/shared/widgets/cards.dart';

class Body extends StatefulWidget {
  const Body({super.key});

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    // Saple products
    final products = [
      Product(
        name: "Wireless Headphones",
        description:
            "High-quality bluetooth headphones with noise cancellation",
        price: 99.99,
        originalPrice: 149.99,
        isOnSale: true,
        rating: 4.5,
        imageUrl:
            "https://external-content.duckduckgo.com/iu/?u=https%3A%2F%2Fthf.bing.com%2Fth%2Fid%2FOIP.U0p2CD1i0WYAx3hYiz_1_wHaHa%3Fcb%3Dthfc1%26pid%3DApi&f=1&ipt=c5e3eb586bcf4c4cc942d34613a9eae512d7b0c4431e9b3af8351e6cdf11ab54&ipo=images",
      ),
      Product(
        name: "Smart Watch",
        description: "Fitness tracker with heart rate monitor",
        price: 199.99,
        rating: 4.2,
        imageUrl: "https://via.placeholder.com/300x200?text=Smart+Watch",
      ),
    ];

    return Scaffold(
      body: Center(
        child: ProductCard(
          product: products[0],
          onAddToCart: () => (),
          onTap: () => (),
        ),
      ),
    );
  }
}
