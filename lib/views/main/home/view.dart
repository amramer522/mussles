import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeView extends StatefulWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  List<String> images = ["home.svg", "workout.svg", "statistics.svg", "profile.svg"];
  List<String> titles = ["Home", "Workout", "Statistics", "Profile"];
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          //todo: go to create plan view
        },
        child: const Icon(Icons.add),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        onTap: (value) {
          currentIndex = value;
          setState(() {});
        },
        items: List.generate(
          images.length,
          (index) => BottomNavigationBarItem(
              icon: SvgPicture.asset("assets/svg/${images[index]}"),
              activeIcon: SvgPicture.asset(
                "assets/svg/${images[index]}",
                color: Theme.of(context).primaryColor,
              ),
              label: titles[index]),
        ),
      ),
    );
  }
}
