import 'package:custom_widgets/pages/navigation_drawer.dart';
import 'package:custom_widgets/utility/contract.dart' as constants;
import 'package:custom_widgets/utility/size_config.dart';
import 'package:flutter/material.dart';


class SliverWidget extends StatefulWidget {
  Widget body;
  String pageName;
  String text;
  VoidCallback? onClick;
  SliverWidget({
    Key? key,
    required this.body,
    required this.pageName,
    required this.text,
    this.onClick,
  }) : super(key: key);

  @override
  State<SliverWidget> createState() => _SliverWidgetState();
}

class _SliverWidgetState extends State<SliverWidget> {
  bool isAdmin = true;




  @override
  void initState(){

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);

    return Scaffold(
      // bottomNavigationBar: isAdmin ? null : const SizedBox( //BANNER ACTIVATOR
      //   height: 54,
      //   child: const MyBannerAd(),
      // ),
      backgroundColor: Colors.grey[200],
      drawer: const NavigationDrawer(),
      drawerScrimColor: Colors.black45,
      body: NestedScrollView(headerSliverBuilder: (context, _) {
        return [
          SliverAppBar(
            backgroundColor: constants.appBarColor,
            title: Text(
              widget.pageName,
              style: const TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.w500,
              ),
            ),
            actions: [
              Center(child: InkWell(
                onTap: widget.onClick,
                child: Text(
                  widget.text,
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w500,
                    fontSize: SizeConfig.safeBlockHorizontal * 4.5,
                  ),
                ),
              )),
              const SizedBox(width: 10.9),
            ],
            floating: false,
            pinned: true,
            expandedHeight: SizeConfig.safeBlockHorizontal * 50.59,
            flexibleSpace: FlexibleSpaceBar(
              background: Container(
                color: Colors.white,
                child: Image.asset(
                  constants.imgBanner,
                  width: double.infinity,
                  height: 150,
                ),
              ),
            ),
          ),
        ];
      }, body: widget.body,
      ),
    );
  }
}
