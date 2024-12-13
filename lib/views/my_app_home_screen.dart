import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:recipe_app/utils/constraints.dart';
import 'package:recipe_app/widgets/banner.dart';
import 'package:recipe_app/widgets/my_icon_button.dart';

class MyAppHomeScreen extends StatefulWidget {
  const MyAppHomeScreen({super.key});

  @override
  State<MyAppHomeScreen> createState() => _MyAppHomeScreenState();
}

class _MyAppHomeScreenState extends State<MyAppHomeScreen> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: kbackgroundColor,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              mySearchBar(),
              //banner
              BannerToExplore(),
            ],
          ),
        ),
      )
    );
  }

  Padding mySearchBar() {
    return Padding(
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: Column(
                  children: [
                    headerParts(),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 22),
                      child: TextField(
                        decoration: InputDecoration(
                            filled: true,
                            prefixIcon: const Icon(Iconsax.search_normal),
                            fillColor: Colors.white,
                            border: InputBorder.none,
                            hintText: "Search Any Recipes!",
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: BorderSide.none
                          ),
                          hintStyle: const TextStyle(
                                color: Colors.grey
                            ),
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: BorderSide.none
                          )
                        ),
                      ),
                    ),
                  ],
              ),
            );
  }

  Row headerParts() {
    return Row(
                  children: [
                    const Text(
                      "What are you\ncooking today?",
                      style: TextStyle(
                      fontSize: 32,
                      fontWeight:
                      FontWeight.bold,
                      height: 1),
                    ),
                    const Spacer(),
                    MyIconButton(icon: Iconsax.notification,
                        pressed: () {})
                ],);
  }
}
