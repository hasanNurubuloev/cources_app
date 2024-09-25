import 'package:cources_app/gen/fonts.gen.dart';
import 'package:flutter/material.dart';

class CoursesAppBar extends StatelessWidget implements PreferredSizeWidget  {
  const CoursesAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      scrolledUnderElevation: 0.0,
      backgroundColor: Colors.white,
      title: const Padding(
        padding: EdgeInsets.only(left: 12, top: 20),
        child: Text(
          'Привет!',
          style: TextStyle(
            fontWeight: FontWeight.w700,
            fontSize: 36,
            fontFamily: FontFamily.alegaya,
          ),
        ),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
