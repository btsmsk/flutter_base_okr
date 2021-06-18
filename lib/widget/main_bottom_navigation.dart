import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_base_okr/ui/view/company/company.dart';
import 'package:flutter_base_okr/ui/view/home/home.dart';
import 'package:flutter_base_okr/ui/view/latest/latest.dart';
import 'package:flutter_base_okr/ui/view/upcoming/upcoming.dart';
import 'package:flutter_base_okr/ui/view/vehicles/vehicles.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_svg/svg.dart';
import 'package:provider/provider.dart';
import 'main_bottom_navigation_provider.dart';

class MainBottomNavigationBar extends StatefulWidget {
  final Function(int) onTabChangeListener;

  MainBottomNavigationBar({required this.onTabChangeListener});

  State<StatefulWidget> createState() => BottomNavigationBarState();
}

class BottomNavigationBarState extends State<MainBottomNavigationBar> {
  late MainBottomNavigationProvider provider;
  var tabs = [HomeScreen(), Vehicles(), Upcoming(), Latest(), Company()];

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    provider = Provider.of<MainBottomNavigationProvider>(context, listen: true);
  }

  @override
  Widget build(BuildContext context) {
    return Observer(
        builder: (_) => Scaffold(
              body: tabs[provider.currentIndex],
              bottomNavigationBar: BottomNavigationBar(
                type: BottomNavigationBarType.fixed,
                currentIndex: provider.currentIndex,
                selectedItemColor: Colors.black87,
                unselectedItemColor: Colors.black38,
                onTap: (index) {
                  provider.setCurrentTab(index);
                  widget.onTabChangeListener(index);
                },
                items: <BottomNavigationBarItem>[
                  BottomNavigationBarItem(
                    label: "Home",
                    icon: Icon(Icons.home),
                  ),
                  BottomNavigationBarItem(
                    label: "Vehicles",
                    icon: SvgPicture.asset('assets/icons/capsule.svg',
                        color: provider.currentIndex != 1
                            ? Colors.black38
                            : Colors.black87,
                        colorBlendMode: BlendMode.srcATop,
                        width: 24,
                        height: 24),
                  ),
                  BottomNavigationBarItem(
                    label: "Upcoming",
                    icon: Icon(Icons.access_time),
                  ),
                  BottomNavigationBarItem(
                    label: "Latest",
                    icon: Icon(Icons.library_books),
                  ),
                  BottomNavigationBarItem(
                    label: "Company",
                    icon: Icon(Icons.location_city),
                  ),
                ],
              ),
            ));
  }
}
