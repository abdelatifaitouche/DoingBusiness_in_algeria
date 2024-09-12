import 'package:doingbusiness/presentation/Home/widgets/home_header.dart';
import 'package:doingbusiness/presentation/Home/widgets/home_list.dart';
import 'package:doingbusiness/presentation/Home/widgets/home_slider.dart';
import 'package:doingbusiness/presentation/explorer/pages/explorer_screen.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              /*HOME HEADER */
              HomeHeader(),
              SizedBox(
                height: 20,
              ),

              /*HOME SLIDER */
              HomeSlider(),
              SizedBox(
                height: 20,
              ),
              /* SEPARATE TITLEs */
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Recommended',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      )),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const ExplorerScreen()),
                      );
                    },
                    child: Text("See More",
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w400,
                            color: Colors.grey)),
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),

              /*HOME ITEMS */
              HomeList()
            ],
          ),
        ),
      ),
    ));
  }
}
