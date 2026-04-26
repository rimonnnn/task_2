import 'package:flutter/material.dart';
import 'package:task_2/widgets/customn_top_card.dart';

class TopHomeScreen extends StatelessWidget {
  TopHomeScreen({super.key});
  final PageController controller = PageController(viewportFraction: 0.9);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SizedBox(
        height: 180,
        child: PageView(
          controller: controller,
          children: [
            CustomnTopCard(
              "Summer sale",
              "assets/images/shoes.png",
              "Sports shoes for running",
              "- 40% OFF",
              Colors.black,
              Colors.lightBlue,
            ),
            CustomnTopCard(
              "Summer sale",
              "assets/images/tshirt.png",
              "T-shirt for casual wear",
              "- 80% OFF",
              Colors.black,
              Colors.orangeAccent,
            ),
            CustomnTopCard(
              "Summer sale",
              "assets/images/camera.png",
              "Camera for photografia",
              "- 60% OFF",
              Colors.black,
              Colors.deepPurple,
            ),
          ],
        ),
      ),
    );
  }
}
