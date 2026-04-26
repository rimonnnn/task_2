import 'package:flutter/material.dart';

class FeaturedProductsWidget extends StatelessWidget {
  FeaturedProductsWidget({super.key});

  final List<Map<String, String>> products = [
    {"title": "T-Shirt", "price": "\$25", "image": "assets/images/tshirt.png"},
    {"title": "Shoes", "price": "\$60", "image": "assets/images/shoes.png"},
    {"title": "Camera", "price": "\$40", "image": "assets/images/camera.png"},
    {"title": "T-Shirt", "price": "\$25", "image": "assets/images/tshirt.png"},
    {"title": "Shoes", "price": "\$60", "image": "assets/images/shoes.png"},
    {"title": "Home", "price": "\$15", "image": "assets/images/home.png"},
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: products.length,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
        childAspectRatio: 0.75,
      ),
      itemBuilder: (context, index) {
        return Card(
          color: Colors.white,
          elevation: 3,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16),
          ),
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: Center(
                    child: Image.asset(
                      products[index]["image"]!,
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
                const SizedBox(height: 8),
                Text(
                  products[index]["title"]!,
                  style: const TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 4),
                Text(
                  products[index]["price"]!,
                  style: const TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    color: Colors.lightBlue,
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
