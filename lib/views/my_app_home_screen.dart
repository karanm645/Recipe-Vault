import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
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
  String category = "All";
  final CollectionReference categoriesItems = FirebaseFirestore.instance.collection("App-Category");
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: kbackgroundColor,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              headerParts(),
              mySearchBar(),
              //banner
              const BannerToExplore(),
              const Padding(
                padding: EdgeInsets.symmetric(
                  vertical: 20,
                ),
                child: Text(
                  "Categories",
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              // for category
              StreamBuilder(stream: categoriesItems.snapshots(),
                  builder: (context,
                      AsyncSnapshot<QuerySnapshot> streamSnapshot){
                if(streamSnapshot.hasData){
                  return SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: List.generate(
                          streamSnapshot.data!.docs.length,
                              (index) => GestureDetector(
                                onTap: (){},
                                child: Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(25),
                                    color: category ==
                                        streamSnapshot.data!.docs[index]
                                        ["name"]
                                        ? kprimaryColor:Colors.white,
                                ),
                                  padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                                  margin: const EdgeInsets.only(right: 20),
                                  child: Text(
                                    streamSnapshot.data!.docs[index]["name"],
                                    style: TextStyle(
                                      color: category ==
                                          streamSnapshot.data!.docs[index]
                                          ["name"]
                                          ? Colors.white
                                          :Colors.grey.shade600,
                                      fontWeight: FontWeight.w600,
                                    )
                                  ),
                                ),
                              ),
                      ),
                    ),
                  );
                }
                // if snapshot has date, show the date...otherwise show progress bar
                return const Center(
                  child: CircularProgressIndicator(),
                );
                  },
              ),
            ],
          ),
        ),
      )
    );
  }

  Padding mySearchBar() {
    return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
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
