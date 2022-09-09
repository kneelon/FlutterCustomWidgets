import 'package:custom_widgets/utility/size_config.dart';
import 'package:flutter/material.dart';
import 'package:custom_widgets/utility/contract.dart' as constants;

class CustomGradientButton extends StatelessWidget {

  final String text;
  final double width;
  final double paddingHorizontal;
  final bool isClicked;
  const CustomGradientButton({
    Key? key,
    required this.text,
    required this.width,
    required this.paddingHorizontal,
    required this.isClicked,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);

    return Padding(
      padding: EdgeInsets.symmetric(horizontal: paddingHorizontal),
      child: Container(
        width: width,
        height: SizeConfig.safeBlockHorizontal * 10.08,
        decoration: BoxDecoration(
            borderRadius: const BorderRadius.all(Radius.circular(18)),
            boxShadow: [
              BoxShadow(
                color: constants.gradient2, //2
                offset: const Offset(1, 12), //0, 20
                blurRadius: 6.3,
                spreadRadius: isClicked ? -7.2 : -9,
              ),
            ],
            gradient: LinearGradient(
              // begin: Alignment.topLeft,
              // end: Alignment.bottomCenter,
                colors: const [
                  constants.gradient1, //1
                  constants.gradient2, //2
                  constants.gradient3, //3
                  constants.gradient3, //3
                ],
                stops: isClicked ? [1,3,9,10,] : [0.1,0.3,9,0,]),
        ),
        child: Center(
          child: Text(
            text,
            style: TextStyle(
              fontSize: SizeConfig.safeBlockHorizontal * 4.5,
              letterSpacing: 1,
              color: Colors.white,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
      ),
    );
  }
}
