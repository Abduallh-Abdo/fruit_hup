import 'package:flutter/material.dart';

class CustomBottomNavBar extends StatelessWidget {
  const CustomBottomNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 375,
      height: 70,
      decoration: const ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30),
            topRight: Radius.circular(30),
          ),
        ),
        shadows: [
          BoxShadow(
            color: Color(0x19000000),
            spreadRadius: 0,
            blurRadius: 30,
            offset: Offset(0, -2),
          ),
        ],
      ),

      // child: Row(
      //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      //   children: [
      //     IconButton(onPressed: () {}, icon: const Icon(Icons.home_outlined)),
      //     IconButton(onPressed: () {}, icon: const Icon(Icons.favorite_border)),
      //     IconButton(
      //       onPressed: () {},
      //       icon: const Icon(Icons.shopping_cart_outlined),
      //     ),
      //     IconButton(
      //       onPressed: () {},
      //       icon: const Icon(Icons.person_2_outlined),
      //     ),
      //   ],
      // ),
    );
  }
}
