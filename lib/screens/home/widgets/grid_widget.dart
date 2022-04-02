import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class GridWidget extends StatelessWidget {
  const GridWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) => GridView.builder(
        physics: const ScrollPhysics(),
        itemBuilder: (context, index) => Container(
          child: Center(
              child: Text(
            'data',
            style: TextStyle(
                fontSize:
                    SizerUtil.deviceType == DeviceType.mobile ? 22.sp : 14.sp),
          )),
          decoration: BoxDecoration(
              color: index == 0 ? Theme.of(context).primaryColor : Colors.white,
              borderRadius: BorderRadius.circular(32)),
        ),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: (constraints.maxWidth / 150).floor(),
          crossAxisSpacing: 16.0,
          mainAxisSpacing: 16.0,
        ),
        padding: const EdgeInsets.only(top: 16),
        itemCount: 10,
        shrinkWrap: true,
      ),
    );
  }
}
