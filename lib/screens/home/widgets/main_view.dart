
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import 'grid_widget.dart';

class HomeMainView extends StatelessWidget {
  const HomeMainView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: LayoutBuilder(
        builder: (context, constraints) => Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
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
            const Expanded(child: GridWidget()),
          ],
        ),
      ),
    );
  }
}
