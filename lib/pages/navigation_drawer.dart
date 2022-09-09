import 'package:custom_widgets/pages/button_widgets.dart';
import 'package:custom_widgets/pages/container_widgets.dart';
import 'package:custom_widgets/pages/progress_indicator.dart';
import 'package:custom_widgets/utility/size_config.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:custom_widgets/utility/contract.dart' as constants;

import 'email_validator_page.dart';


class NavigationDrawer extends StatefulWidget {
  const NavigationDrawer({Key? key}) : super(key: key);

  @override
  State<NavigationDrawer> createState() => _NavigationDrawerState();
}

class _NavigationDrawerState extends State<NavigationDrawer> {
  bool isAdmin = true;
  String name = 'Darwin Lumampao';
  String email = 'darwindlumampao@gmail.com';
  int points = 0;

  bool isPointsShow = false;
  bool isLeaderPointsShow = false;
  bool isMonthlyPointsShow = false;




  @override
  void initState(){
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);

    return Drawer(
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            buildHeader(context),
            buildMenuItems(context),
          ],
        ),
      ),
    );
  }

  Widget buildHeader(BuildContext context) => Container(
    color: constants.appBarColor,
    padding: EdgeInsets.only(
      top: MediaQuery.of(context).padding.top,
    ),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,
      children: [
        SizedBox(height: SizeConfig.safeBlockHorizontal * 3.6),
        Image.asset(
            constants.imgLogo,
            width: SizeConfig.safeBlockHorizontal * 20.25,
            height: SizeConfig.safeBlockHorizontal * 20.25),
        Padding(
          padding: const EdgeInsets.all(4.5),
          child: Text(
            constants.appName,
            style: TextStyle(
              fontSize: SizeConfig.safeBlockHorizontal * 3.6,
              color: constants.textColorLight,
              fontWeight: FontWeight.bold,
              letterSpacing: 1,
            ),
            textAlign: TextAlign.center,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
          ),
        ),
        SizedBox(height: SizeConfig.safeBlockHorizontal * 2.7),
        Padding(
          padding: const EdgeInsets.all(6.3),
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Flexible(
                child: RichText(
                  overflow: TextOverflow.ellipsis,
                  maxLines: 1,
                  text: TextSpan(
                    text: name,
                    style: const TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              const Text('Points: 1080', style: TextStyle(color: Colors.white))
            ],
          ),
        )
      ],
    ),
  );

  Widget buildMenuItems(BuildContext context){
    SizeConfig().init(context);

    return Container(
      padding: const EdgeInsets.all(9.0),
      child: Wrap(
        children: [
          ListTile(
            leading: const Icon(Icons.access_time),
            title: Text(
              'Container',
              style: TextStyle(
                color: constants.textColor,
                letterSpacing: 0.5,
                fontSize: SizeConfig.safeBlockHorizontal * 3.6,
              ),
            ),
            onTap: (){
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => const ContainerWidgets(),
                ),
              );
            },
          ),
          ListTile(
            leading: const Icon(Icons.poll_outlined),
            title: Text(
              'Button',
              style: TextStyle(
                color: constants.textColor,
                letterSpacing: 0.5,
                fontSize: SizeConfig.safeBlockHorizontal * 3.6,
              ),
            ),
            onTap: (){
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => const ButtonWidgets(),
                ),
              );
            },
          ),
          ListTile(
            leading: const Icon(Icons.autorenew_sharp),
            title: Text(
              'Text Form Field',
              style: TextStyle(
                color: constants.textColor,
                letterSpacing: 0.5,
                fontSize: SizeConfig.safeBlockHorizontal * 3.6,
              ),
            ),
            onTap: (){
              // Navigator.of(context).push(
              //   MaterialPageRoute(
              //     builder: (context) => const ContainerWidgets(),
              //   ),
              // );
            },
          ),
          ListTile(
            leading: const Icon(Icons.announcement_outlined),
            title: Text(
              'Progress Indicator',
              style: TextStyle(
                color: constants.textColor,
                letterSpacing: 0.5,
                fontSize: SizeConfig.safeBlockHorizontal * 3.6,
              ),
            ),
            onTap: (){
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => const ProgressIndicatorWidgets(),
                ),
              );
            },
          ),
          ListTile(
            leading: const Icon(Icons.flag_outlined),
            title: Text(
              'Email Validator',
              style: TextStyle(
                color: constants.textColor,
                letterSpacing: 0.5,
                fontSize: SizeConfig.safeBlockHorizontal * 3.6,
              ),
            ),
            onTap: (){
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => const EmailValidatorPage(),
                ),
              );
            },
          ),
          adminPanel(),
        ],
      ),
    );
  }

  Widget adminPanel(){
    if(isAdmin){
      return Wrap(
        children: [
          const Divider(thickness: 1, color: Colors.black45,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                constants.wordAdminPanel,
                style: TextStyle(
                  fontWeight: FontWeight.w500,
                  letterSpacing: 0.5,
                  fontSize: SizeConfig.safeBlockHorizontal * 3.6,
                ),
              ),

            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              GestureDetector(
                onTap: (){
                  // Navigator.of(context).push(
                  //   MaterialPageRoute(
                  //     builder: (context) => const CreatePost(),
                  //   ),
                  // );
                },
                child: Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: SizeConfig.safeBlockHorizontal * 4.5,
                    vertical: SizeConfig.safeBlockHorizontal * 4.5,
                  ),
                  child: Row(
                    children: [
                      const Icon(Icons.leaderboard_outlined, color: Colors.black45,),
                      SizedBox(width: SizeConfig.safeBlockHorizontal * 6.3,),
                      Text(
                        constants.wordLeaderBoard,
                        style: TextStyle(
                          color: constants.textColor,
                          fontWeight: FontWeight.w500,
                          letterSpacing: 0.5,
                          fontSize: SizeConfig.safeBlockHorizontal * 3.6,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              _switchLeaderboard(),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              GestureDetector(
                onTap: (){
                },
                child: Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: SizeConfig.safeBlockHorizontal * 4.5,
                  ),
                  child: Row(
                    children: [
                      const Icon(Icons.trending_up_outlined, color: constants.pallet3),
                      SizedBox(width: SizeConfig.safeBlockHorizontal * 6.3,),
                      Text(
                        'Monthly Score',
                        style: TextStyle(
                          color: constants.textColor,
                          fontWeight: FontWeight.w500,
                          letterSpacing: 0.5,
                          fontSize: SizeConfig.safeBlockHorizontal * 3.6,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              _switchMonthlyScore(),
            ],
          ),

          ListTile(
            leading: const Icon(Icons.auto_stories_outlined),
            title: Text(
              constants.wordRandomContent,
              style: TextStyle(
                color: constants.textColor,
                letterSpacing: 0.5,
                fontSize: SizeConfig.safeBlockHorizontal * 3.6,
              ),
            ),
            onTap: (){
              // Navigator.of(context).push(
              //   MaterialPageRoute(
              //     builder: (context) => const RandomContent(),
              //   ),
              // );
            },
          ),
          ListTile(
            leading: const Icon(Icons.settings_outlined),
            title: Text(
              constants.capSettings,
              style: TextStyle(
                color: constants.textColor,
                letterSpacing: 0.5,
                fontSize: SizeConfig.safeBlockHorizontal * 3.6,
              ),
            ),
            onTap: (){
              // Navigator.of(context).push(
              //   MaterialPageRoute(
              //     builder: (context) => const AdminSettings(),
              //   ),
              // );
            },
          ),
        ],
      );
    }else {
      return ListTile(
        leading: const Icon(Icons.settings_outlined),
        title: Text(
          constants.capSettings,
          style: TextStyle(
            color: constants.textColor,
            letterSpacing: 0.5,
            fontSize: SizeConfig.safeBlockHorizontal * 3.6,
          ),
        ),
        onTap: (){
          // Navigator.of(context).push(
          //   MaterialPageRoute(
          //     builder: (context) => const MySettings(),
          //   ),
          // );
        },
      );
    }
  }
  bool pointsSwitch = true;
  bool leaderSwitch = true;
  bool monthlySwitch = true;
  Widget _switchPointsIos(){
    return Transform.scale(
      scale: SizeConfig.safeBlockHorizontal * 0.14,
      child: CupertinoSwitch(
        activeColor: constants.appBarColor,
        value: pointsSwitch,
        onChanged: (value){
          setState((){
            value = pointsSwitch;
            pointsSwitch = !pointsSwitch;
            //updatePointsSwitch(pointsSwitch);
            //showToastWidget(pointsSwitch.toString(), Colors.blue);
          });
        },
      ),
    );
  }
  Widget _switchLeaderboard(){
    return Transform.scale(
      scale: SizeConfig.safeBlockHorizontal * 0.14,
      child: CupertinoSwitch(
        activeColor: constants.appBarColor,
        value: leaderSwitch,
        onChanged: (value){
          setState((){
            value = leaderSwitch;
            leaderSwitch = !leaderSwitch;
            //updatePointsSwitch(pointsSwitch);
            //showToastWidget(pointsSwitch.toString(), Colors.blue);
          });
        },
      ),
    );
  }
  Widget _switchMonthlyScore(){
    return Transform.scale(
      scale: SizeConfig.safeBlockHorizontal * 0.14,
      child: CupertinoSwitch(
        activeColor: constants.appBarColor,
        value: monthlySwitch,
        onChanged: (value){
          setState((){
            value = monthlySwitch;
            monthlySwitch = !monthlySwitch;
            //updatePointsSwitch(pointsSwitch);
            //showToastWidget(pointsSwitch.toString(), Colors.blue);
          });
        },
      ),
    );
  }

}

