import 'package:flutter/material.dart';
import 'title_widget.dart';
import 'package:sizer/sizer.dart';

import 'grid_widget.dart';

class HomeMainView extends StatelessWidget {
  const HomeMainView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: const [
          HomeTitle(),
          Expanded(child: GridWidget()),
        ],
      ),
    );
  }
}
