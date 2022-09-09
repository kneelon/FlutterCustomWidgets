import 'package:custom_widgets/ui/neomorphic_progress_bar.dart';
import 'package:custom_widgets/ui/neomorphic_progress_bar_test.dart';
import 'package:custom_widgets/ui/sliver.dart';
import 'package:custom_widgets/utility/size_config.dart';
import 'package:flutter/material.dart';
import 'package:custom_widgets/utility/contract.dart' as constants;

class ProgressIndicatorWidgets extends StatefulWidget {
  const ProgressIndicatorWidgets({Key? key}) : super(key: key);

  @override
  State<ProgressIndicatorWidgets> createState() => _ProgressIndicatorWidgetsState();
}

class _ProgressIndicatorWidgetsState extends State<ProgressIndicatorWidgets> {

  bool isClicked = false;

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);

    return SliverWidget(
      pageName: 'Progress Indicator',
      body: Container(
        color: Colors.white,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // NeomorphicProgressBar(
            //   width: 100,
            //   height: 306,
            //   value: 0.9,
            //   text: 'Vote',
            //   color: Colors.white,
            // ),
            NeomorphicProgressBarTest(
              width: SizeConfig.safeBlockHorizontal * 81,
              height: 72,
              value: 0.4,
              text: '100',
              color: Colors.white,
            )
          ],
        ),
      ), text: 'OK',
    );
  }

}
