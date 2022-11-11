import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'cart_shorts.dart';

class StackCards extends StatelessWidget {
  const StackCards({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 230.w,
      child: Padding(
        padding: const EdgeInsets.all(5.0),
        child: Stack(
          children: [
            const ShortsCard(
              index: 3,
            ),
            Positioned(
              right: 1.w,
              child: const ShortsCard(
                index: 4,
              ),
            ),
            Positioned(
              right: 0,
              left: 0,
              top: 70.w,
              child: CircleAvatar(
                backgroundColor:
                    const Color.fromARGB(255, 10, 9, 9).withOpacity(0.5),
                radius: 20.w,
                child: Image.asset(
                  "assets/red-lightning-bolt-11549724242g6nug9ifha-removebg-preview.png",
                  width: 20.w,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
