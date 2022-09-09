import 'package:custom_widgets/utility/size_config.dart';
import 'package:flutter/material.dart';

class NeoMorphicButtonTest extends StatefulWidget {
  final Widget child;
  final double bevel;
  final Offset? blurOffset;
  final Color color;
  final EdgeInsets padding;
  final Function onPressed;

  NeoMorphicButtonTest({
    Key? key,
    required this.child,
    this.bevel = 10.0,
    this.padding = const EdgeInsets.all(12.6),
    required this.onPressed,
    // required this.onPressed,
  })  : blurOffset = Offset(bevel / 2, bevel / 2),
        color = Colors.grey.shade200,
        super(key: key);

  @override
  State<NeoMorphicButtonTest> createState() => _NeoMorphicButtonTestState();
}

class _NeoMorphicButtonTestState extends State<NeoMorphicButtonTest> {
  bool _isPress = false;

  void _onPointerDown(PointerDownEvent event){
    widget.onPressed();
    setState((){
      _isPress = true;
    });
  }

  void _onPointerUp(PointerUpEvent event){
    setState((){
      _isPress = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    final color = widget.color;

    return Listener(
      onPointerDown: _onPointerDown,
      onPointerUp: _onPointerUp,
      child: AnimatedContainer(
        width: double.infinity,
        height: SizeConfig.safeBlockHorizontal * 10,
        duration: const Duration(milliseconds: 180),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(widget.bevel * 9),
          gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                _isPress ? color : color.mix(Colors.black, .1),
                _isPress ? color.mix(Colors.black, .05) : color,
                _isPress ? color.mix(Colors.black, .05) : color,
                color.mix(Colors.white, _isPress ? .2 : .5),
              ],
              stops: const [
                0.0,
                0.3,
                0.6,
                1.0,
              ]),
          boxShadow: _isPress ? null : [
            BoxShadow(
              blurRadius: widget.bevel,
              offset: widget.blurOffset!,
              color: color.mix(Colors.white, .6),
            ),
            BoxShadow(
              blurRadius: widget.bevel,
              offset: widget.blurOffset!,
              color: color.mix(Colors.black, .2),
            ),
          ],
        ),
        child: Center(child: widget.child),
      ),
    );
  }
}

extension ColorUtils on Color {
  Color mix(Color another, double amount){
    return Color.lerp(this, another, amount)!;
  }
}













































//ORIGINAL
// import 'package:custom_widgets/utility/size_config.dart';
// import 'package:flutter/material.dart';
//
// class NeoMorphicButtonTest extends StatefulWidget {
//   final Widget child;
//   final double bevel;
//   final Offset? blurOffset;
//   final Color color;
//   final EdgeInsets padding;
//   final Function onPressed;
//
//   NeoMorphicButtonTest({
//     Key? key,
//     required this.child,
//     this.bevel = 10.0,
//     this.padding = const EdgeInsets.all(12.6),
//     required this.onPressed,
//     // required this.onPressed,
//   })  : blurOffset = Offset(bevel / 2, bevel / 2),
//         color = Colors.grey.shade200,
//         super(key: key);
//
//   @override
//   State<NeoMorphicButtonTest> createState() => _NeoMorphicButtonTestState();
// }
//
// class _NeoMorphicButtonTestState extends State<NeoMorphicButtonTest> {
//   bool _isPress = false;
//
//   void _onPointerDown(PointerDownEvent event){
//     widget.onPressed();
//     setState((){
//       _isPress = true;
//     });
//   }
//
//   void _onPointerUp(PointerUpEvent event){
//     setState((){
//       _isPress = false;
//     });
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     final color = widget.color;
//
//     return Listener(
//       onPointerDown: _onPointerDown,
//       onPointerUp: _onPointerUp,
//       child: AnimatedContainer(
//         width: double.infinity,
//         height: SizeConfig.safeBlockHorizontal * 10,
//         duration: const Duration(milliseconds: 180),
//         decoration: BoxDecoration(
//           borderRadius: BorderRadius.circular(widget.bevel * 9),
//           gradient: LinearGradient(
//               begin: Alignment.topLeft,
//               end: Alignment.bottomRight,
//               colors: [
//                 _isPress ? color : color.mix(Colors.black, .1),
//                 _isPress ? color.mix(Colors.black, .05) : color,
//                 _isPress ? color.mix(Colors.black, .05) : color,
//                 color.mix(Colors.white, _isPress ? .2 : .5),
//               ],
//               stops: const [
//                 0.0,
//                 0.3,
//                 0.6,
//                 1.0,
//               ]),
//           boxShadow: _isPress ? null : [
//             BoxShadow(
//               blurRadius: widget.bevel,
//               offset: -widget.blurOffset!,
//               color: color.mix(Colors.white, .6),
//             ),
//             BoxShadow(
//               blurRadius: widget.bevel,
//               offset: widget.blurOffset!,
//               color: color.mix(Colors.black, .2),
//             ),
//           ],
//         ),
//         child: Center(child: widget.child),
//       ),
//     );
//   }
// }
//
// extension ColorUtils on Color {
//   Color mix(Color another, double amount){
//     return Color.lerp(this, another, amount)!;
//   }
// }
//
