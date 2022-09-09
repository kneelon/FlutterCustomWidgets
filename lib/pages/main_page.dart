import 'package:custom_widgets/ui/sliver.dart';
import 'package:custom_widgets/utility/size_config.dart';
import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {


  Future loadList() async{
    await Future.delayed(const Duration(milliseconds: 900));
    refreshData();
  }


  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return WillPopScope(
      onWillPop: _onWillPop,
      child: Scaffold(
        body: refreshData(),
      ),
    );
  }

  Widget refreshData(){
    return SliverWidget(
      body: buildList(),
      pageName: 'Custom Widgets',
      text: 'Logout',
    );
  }

  Widget buildList(){
    return Container(
      color: Colors.white,
      child: Column(
        children: [
          Text('TEXT')
        ],
      ),
    );
  }

  Future<bool> _onWillPop() async {
    return await showDialog(
        context: (context),
        builder: (context){
          return AlertDialog(
            content: SizedBox(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    'Are you sure you want to close this App?',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.black45,
                      letterSpacing: 0.5,
                      fontSize: SizeConfig.safeBlockHorizontal * 3.6,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: SizeConfig.safeBlockHorizontal * 2.7),
                    child: const Divider(thickness: 1.8),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      GestureDetector(
                        onTap: () => Navigator.of(context).pop(false),
                        child: Text(
                          'Cancel',
                          style: TextStyle(
                            color: Colors.lightBlue,
                            letterSpacing: 0.5,
                            fontSize: SizeConfig.safeBlockHorizontal * 3.6,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () => Navigator.of(context).pop(true),
                        child: Text(
                          'Close',
                          style: TextStyle(
                            color: Colors.deepOrangeAccent,
                            letterSpacing: 0.5,
                            fontSize: SizeConfig.safeBlockHorizontal * 3.6,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          );
        }
    ) ?? false;
  }
}
