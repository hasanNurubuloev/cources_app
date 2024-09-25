import 'package:cources_app/gen/fonts.gen.dart';
import 'package:flutter/material.dart';

class FlexibleSpaceAppBar extends StatelessWidget {
  const FlexibleSpaceAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return FlexibleSpaceBar(
      centerTitle: true,
      title: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24.0),
        child: Row(
          children: [
            const Expanded(
              flex: 2,
              child: Text(
                'Изучай!',
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 24,
                  fontFamily: FontFamily.alegaya,
                ),
              ),
            ),
            Image.asset(
              'assets/images/image1.jpg',
              width: 130,
              height: 130,
            ),
          ],
        ),
      ),
    );
  }
}
