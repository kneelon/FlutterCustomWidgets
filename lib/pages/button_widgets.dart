import 'package:custom_widgets/ui/neomorphic_button_test.dart';
import 'package:custom_widgets/ui/sliver.dart';
import 'package:custom_widgets/utility/size_config.dart';
import 'package:custom_widgets/widgets/toast_widget.dart';
// import 'package:flutter/material.dart';
import 'package:custom_widgets/utility/contract.dart' as constants;
import 'package:flutter_inset_box_shadow/flutter_inset_box_shadow.dart';
import 'package:flutter/material.dart' hide BoxDecoration, BoxShadow;

class ButtonWidgets extends StatefulWidget {
  const ButtonWidgets({Key? key}) : super(key: key);

  @override
  State<ButtonWidgets> createState() => _ButtonWidgetsState();
}

class _ButtonWidgetsState extends State<ButtonWidgets> {

  bool isClicked = false;
  bool isPressed = true;



  @override
  Widget build(BuildContext context) {

    return SliverWidget(
      pageName: 'Containers',
      body: Container(
        color: Colors.white,
        child: SingleChildScrollView(
          child: IntrinsicHeight(
            child: Column(
              children: [
                SizedBox(height: 18.0),
                // GestureDetector(
                //   onTap: (){
                //     setState(() {
                //       print('CLICK CLICK');
                //       isClicked = true;
                //     });
                //     Future.delayed(const Duration(milliseconds: 360)).whenComplete((){
                //       setState((){
                //         isClicked = false;
                //       });
                //     });
                //   },
                //   child: CustomGradientButton(
                //     text: 'Click Me',
                //     width: double.infinity,
                //     paddingHorizontal: 18,
                //     isClicked: isClicked),
                // ),
                SizedBox(height: 18.0),
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: SizeConfig.safeBlockHorizontal * 5.4,
                  ),
                  child: NeoMorphicButtonTest(
                    child: Text('Test Button'),
                    onPressed: (){
                      showToastWidget('Im a multi Billionaire', Colors.green);
                    },
                  ),
                ),
                const SizedBox(height: 54),
                morphismButton2(),
                const SizedBox(height: 54),
                morphismButton(),
              ],
            ),
          ),
        ),
      ), text: 'OKs',
    );
  }
  Widget morphismButton2(){
    const backgroundColor = Color(0xFFE7ECEF);
    Offset distance = isPressed ? const Offset(2.7, 2.7) : const Offset(3.6, 9);
    double blur = isPressed ? 5.0 : 9.0;

    return GestureDetector(
      onTap: () => setState(() => isPressed = !isPressed),
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 100),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(27),
          color: backgroundColor,
          boxShadow: [
            BoxShadow(
              blurRadius: blur,
              offset: -distance,
              color: Colors.white,
              inset: isPressed,
            ),
            BoxShadow(
              blurRadius: blur,
              offset: distance,
              color: Color(0xFFA7A9AF),
              inset: isPressed,
            ),
          ],
        ),
        child: SizedBox(
          width: SizeConfig.safeBlockHorizontal * 90,
          height: SizeConfig.safeBlockHorizontal * 10.9,
          child: Center(child: Text(
            'Push',
            style: TextStyle(
              fontSize: SizeConfig.safeBlockHorizontal * 4.05,
              letterSpacing: 1,
              fontWeight: FontWeight.w500,
              color: constants.pallet3,
            ))),
        ),
      ),
    );
  }

  Widget morphismButton(){
    const backgroundColor = Color(0xFFE7ECEF);
    Offset distance = isPressed ? const Offset(7.2, 7.2) : const Offset(9, 9);
    double blur = isPressed ? 5.0 : 30.0;

    return GestureDetector(
      onTap: () => setState(() => isPressed = !isPressed),
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 100),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30),
          color: backgroundColor,
          boxShadow: [
            BoxShadow(
              blurRadius: 18.0,
              offset: -distance,
              color: Colors.white,
              inset: isPressed,
            ),
            BoxShadow(
              blurRadius: 18.0,
              offset: distance,
              color: Color(0xFFA7A9AF),
              inset: isPressed,
            ),
          ],
        ),
        child: SizedBox(
          height: 300,
          width: 300,
        ),
      ),
    );
  }

}
