import 'package:custom_widgets/utility/size_config.dart';
import 'package:custom_widgets/widgets/toast_widget.dart';
import 'package:flutter/material.dart';

//https://www.youtube.com/watch?v=VkogytRzDVM
class NeoMorphicButton extends StatefulWidget {

  final Widget child;
  final double bevel;
  final Offset? blurOffset;
  final Color color;
  final EdgeInsets padding;
  final Function onPressed;

  NeoMorphicButton({
    Key? key,
    required this.child,
    this.bevel = 10.0,
    this.padding = const EdgeInsets.all(12.6),
    required this.onPressed,
  }) : blurOffset = Offset(bevel / 2, bevel / 2),
       color = Colors.grey.shade200,
        super(key: key);

  @override
  State<NeoMorphicButton> createState() => _NeoMorphicButtonState();
}

class _NeoMorphicButtonState extends State<NeoMorphicButton> {
  bool _isPress = false;

  void _onPointerDown(PointerDownEvent event){
    widget.onPressed();
    setState((){
      _isPress = true;
      //showToastWidget('Clicked', Colors.deepOrangeAccent);
    });
  }

  void _onPointerUp(PointerUpEvent event){
    widget.onPressed();
    setState((){
      _isPress = false;
      //showToastWidget('Clicked', Colors.deepOrangeAccent);
    });
  }

  @override
  void initState(){
    //checkPressEvent();
    super.initState();
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
        padding: widget.padding,
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
              offset: -widget.blurOffset!,
              color: color.mix(Colors.white, .6),
            ),
            BoxShadow(
              blurRadius: widget.bevel,
              offset: widget.blurOffset!,
              color: color.mix(Colors.black, .3),
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















