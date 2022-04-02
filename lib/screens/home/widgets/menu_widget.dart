import 'package:flutter/material.dart';
import '../../../constants/app_theme.dart';
import 'package:sizer/sizer.dart';

class HomeMenuWidget extends StatelessWidget {
  const HomeMenuWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        right: 16.0,
        top: Scaffold.of(context).hasDrawer == true
            ? MediaQuery.of(context).padding.top + 16
            : 4,
        left: Scaffold.of(context).hasDrawer == true ? 16 : 0,
      ),
      child: SizedBox(
        height: 100.h,
        width: 55,
        child: SingleChildScrollView(
          child: MediaQuery.removePadding(
            removeTop: true,
            context: context,
            child: ListView.builder(
              itemBuilder: (context, index) => Padding(
                padding: const EdgeInsets.only(
                  bottom: 10.0,
                ),
                child: Container(
                  height: 55,
                  decoration: BoxDecoration(
                      color: index == 0
                          ? Theme.of(context).btnColor
                          : Theme.of(context).primaryColor,
                      borderRadius: BorderRadius.circular(16)),
                ),
              ),
              shrinkWrap: true,
              itemCount: 8,
              physics: const NeverScrollableScrollPhysics(),
            ),
          ),
        ),
      ),
    );
  }
}
