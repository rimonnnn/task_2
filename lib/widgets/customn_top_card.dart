import 'package:flutter/material.dart';

class CustomnTopCard extends StatelessWidget {
  final String? title;
  final String? imagePath;
  final String? description;
  final String? offerText;
  final Color? buttonTextColor;
  final Color? cardColor;
  const CustomnTopCard(
    this.title,
    this.imagePath,
    this.description,
    this.offerText,
    this.buttonTextColor,
    this.cardColor, {
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 10),
      decoration: BoxDecoration(
        color: cardColor ?? Colors.white,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Row(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title ?? "",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  Text(
                    offerText ?? "",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  Text(
                    maxLines: 1,
                    description ?? "",
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.normal,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(height: 15),
                  ElevatedButton(
                    style: ButtonStyle(
                      backgroundColor: WidgetStateProperty.all(Colors.white),
                    ),
                    onPressed: () {},
                    child: Text(
                      "Shop Now",
                      style: TextStyle(color: buttonTextColor ?? Colors.white),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Image.asset(imagePath ?? "", width: 100, height: 120),
          ),
        ],
      ),
    );
  }
}
