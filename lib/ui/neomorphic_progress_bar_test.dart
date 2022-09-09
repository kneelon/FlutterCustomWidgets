import 'package:custom_widgets/utility/size_config.dart';
import 'package:flutter/material.dart';

import 'package:flutter/material.dart';

class NeomorphicProgressBarTest extends StatelessWidget {
  const NeomorphicProgressBarTest({
    Key? key,
    required this.width,
    required this.height,
    required this.value,
    required this.text,
    required this.color,
  }) : super(key: key);

  final double width;
  final double height;

  /// Value from 1.0 to 0.0
  final num value;

  final String text;
  final Color color;

  @override
  Widget build(BuildContext context) {
    final innerContainerWidth = width * value * 0.98;
    final innerContainerHeight = height * 0.90;
    return Padding(
      padding: const EdgeInsets.all(5.0),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Container(
            // height: height * 1.01,
            // width: width.toDouble() / 4,
            // width: width * 1.01,
            height: height.toDouble() / 4,
            width: width * 1.01,
            child: Stack(
              children: <Widget>[
                DugContainer(
                  width: SizeConfig.safeBlockHorizontal * 180,
                  height: height,
                ),
                InnerContainer(
                  width: innerContainerWidth,
                  height: innerContainerHeight,
                  color: color),
              ],
            ),
          ),
          SizedBox(width: 5),
          Text(
            '$text %',
            style: TextStyle(
              color: Colors.blueGrey[300],
            ),
          ),
        ],
      ),
    );
  }
}

class InnerContainer extends StatelessWidget {
  const InnerContainer({
    Key? key,
    required this.height,
    required this.width,
    required this.color,
  }) : super(key: key);

  final double height;
  final double width;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Padding(
        padding: const EdgeInsets.all(2.0),
        child: Container(
          // height: height * 600 / 896,
          // width: width * 85 / 414,
          height: height * 85 / 414,
          width: width * 600 / 896,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(95.0),
            color: color ?? Color.fromRGBO(235, 233, 232, 1),
            boxShadow: [
              BoxShadow(
                offset: Offset(1.5, 1.5),
                color: Colors.black38,
                blurRadius: 2,
              ),
              BoxShadow(
                offset: Offset(-1.5, -1.5),
                color:
                color?.withOpacity(0.95) ?? Colors.white.withOpacity(0.85),
                blurRadius: 2,
              )
            ],
          ),
        ),
      ),
    );
  }
}

class DugContainer extends StatelessWidget {
  const DugContainer({
    Key? key,
    required this.height,
    required this.width,
  }) : super(key: key);
  final double height;
  final double width;
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Container(
        // height: height * 600 / 896,
        // width: width * 100 / 414,
        height: height * 100 / 414,
        width: width * 600 / 896,
        decoration: BoxDecoration(
          boxShadow: const [
            BoxShadow(
              color: exteriorShadow,
              offset: Offset(0.0, 0.0),
            ),
            BoxShadow(
              color: interiorShadow,
              offset: Offset(0.0, 0.0),
              spreadRadius: -1.0,
              blurRadius: 11.0,
            ),
          ],
          borderRadius: BorderRadius.circular(100.0),
        ),
      ),
    );
  }
}

const exteriorShadow = Color.fromRGBO(209, 207, 205, 1);
const interiorShadow = Color.fromRGBO(224, 221, 217, 1);
const backgroundColor = Color.fromRGBO(235, 235, 234, 1);