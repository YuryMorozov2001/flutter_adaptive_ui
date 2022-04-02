import 'package:flutter/material.dart';

import 'widgets/main_view.dart';
import 'widgets/menu_widget.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) => Scaffold(
        drawer: constraints.maxWidth < 500 ? Drawer(
          backgroundColor: Theme.of(context).backgroundColor,
          child: const HomeMenuWidget(),
        ) : null,
        backgroundColor: Theme.of(context).backgroundColor,
        body: Padding(
          padding: EdgeInsets.only(
              left: 16.0, right: 16, top: MediaQuery.of(context).padding.top),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              constraints.maxWidth > 600
                  ? const HomeMenuWidget()
                  : const SizedBox(),
              const HomeMainView(),
            ],
          ),
        ),
      ),
    );
  }
}
