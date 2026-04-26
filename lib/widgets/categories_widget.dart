import 'package:flutter/material.dart';

class CategoriesWidget extends StatelessWidget {
  const CategoriesWidget({super.key});

  @override
  Widget build(BuildContext context) {
    List<Map<String, String>> categories = [
      {"title": "Electronics", "image": "assets/images/camera.png"},
      {"title": "Fashoin", "image": "assets/images/tshirt.png"},
      {"title": "Sports", "image": "assets/images/shoes.png"},
      {"title": "Home", "image": "assets/images/home.png"},
    ];
    return SizedBox(
      height: 120,
      child: ListView.builder(
        physics: BouncingScrollPhysics(),
        itemCount: 4,
        shrinkWrap: false,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return SizedBox(
            width: 100,
            child: Card(
              color: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadiusGeometry.circular(16),
              ),
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 8),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      fit: BoxFit.fill,
                      categories[index]["image"]!,
                      height: 55,
                      width: 55,
                    ),
                    SizedBox(height: 6),
                    Text(
                      categories[index]["title"]!,
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
