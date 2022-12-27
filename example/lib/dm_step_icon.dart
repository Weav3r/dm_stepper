import 'package:flutter/material.dart';

class DMStepIcon extends StatelessWidget {
  const DMStepIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                height: 5,
                width: 5,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(1),
                ),
              ),
              const SizedBox(width: 1.5),
              Container(
                height: 5,
                width: 5,
                decoration: BoxDecoration(
                  color: const Color.fromRGBO(147, 154, 230, 1),
                  borderRadius: BorderRadius.circular(1),
                ),
              ),
            ],
          ),
          const SizedBox(height: 1.5),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                height: 5,
                width: 5,
                decoration: BoxDecoration(
                  color: const Color.fromRGBO(147, 154, 230, 1),
                  borderRadius: BorderRadius.circular(1),
                ),
              ),
              const SizedBox(width: 1.5),
              Container(
                height: 5,
                width: 5,
                decoration: BoxDecoration(
                  color: const Color.fromRGBO(147, 154, 230, 1),
                  borderRadius: BorderRadius.circular(1),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
