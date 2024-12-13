import 'package:flutter/material.dart';
import 'package:recipe_app/utils/constraints.dart';

class BannerToExplore extends StatelessWidget {
  const BannerToExplore({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 170,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: kBannerColor,
      ),
      child: Stack(children: [
        Positioned(
          top: 30,
            left: 20,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  "Cook the best\nrecipes at home",
                  style: TextStyle(
                    height: 1.1,
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                SizedBox(height: 10),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    padding: EdgeInsets.symmetric(
                      horizontal: 33,
                    ),
                    backgroundColor: Colors.white,
                    elevation: 0,
                  ),
                    onPressed: (){},
                    child: Text("Explore",
                      style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                      ),
                    )
                )
              ],
            )
        ),
        Positioned(
            top: 0,
            bottom: 0,
            right: -20,
            child: Image.network(
                "data:image/jpeg;base64,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",)
          ,)
      ],
      ),
    );
  }
}
