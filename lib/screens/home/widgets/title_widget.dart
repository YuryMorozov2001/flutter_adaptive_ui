
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class HomeTitle extends StatelessWidget {
  const HomeTitle({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) => Row(
        children: [
          constraints.maxWidth < 500
              ? GestureDetector(
                  onTap: (() => Scaffold.of(context).openDrawer()),
                  child: Icon(
                    Icons.menu,
                    size: 25.sp,
                  ),
                )
              : const SizedBox(),
          SizedBox(
            width: constraints.maxWidth < 500 ? 8 : 0,
          ),
          Text(
            'Home',
            style: TextStyle(
              fontSize: 25.sp,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
