import 'package:custom_widgets/ui/sliver.dart';
import 'package:custom_widgets/utility/contract.dart' as constants;
import 'package:custom_widgets/utility/size_config.dart';
import 'package:flutter/material.dart';

class ContainerWidgets extends StatefulWidget {
  const ContainerWidgets({Key? key}) : super(key: key);

  @override
  State<ContainerWidgets> createState() => _ContainerWidgetsState();
}

class _ContainerWidgetsState extends State<ContainerWidgets> {
  bool isClicked = false;

  @override
  Widget build(BuildContext context) {
    return SliverWidget(
      pageName: 'Containers',
      body: Container(
        color: Colors.white,
        child: Column(
          children: [
            SizedBox(height: 18.0),
            gradientContainer(),
          ],
        ),
      ), text: 'OK',
    );
  }
  Widget gradientContainer(){
    return Container(
      width: SizeConfig.safeBlockHorizontal * 45,
      height: SizeConfig.safeBlockHorizontal * 45,
      decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(45)),
          boxShadow: [
            BoxShadow(
              color: constants.gradient2, //2
              offset: Offset(0, 20),
              blurRadius: 18,
              spreadRadius: -9,
            ),
          ],
          gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomCenter,
              colors: [
                constants.gradient1, //1
                constants.gradient2, //2
                constants.gradient3, //3
                constants.gradient3, //3
              ],
              stops: [
                0.1,
                0.3,
                0.9,
                1.0
              ])
      ),
      child: Icon(Icons.android, size: 60, color: Colors.grey[100]),
    );
  }
}
