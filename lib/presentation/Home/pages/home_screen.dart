import 'package:doingbusiness/presentation/Home/widgets/home_header.dart';
import 'package:doingbusiness/presentation/Home/widgets/home_list.dart';
import 'package:doingbusiness/presentation/Home/widgets/home_slider.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
        body: SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.all(size.width * 0.02),
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              /*HOME HEADER */
              HomeHeader(),
              SizedBox(
                height: size.height * 0.02,
              ),

              /*HOME SLIDER */
              HomeSlider(),
              SizedBox(
                height: size.height * 0.02,
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
                ],
              ),
              SizedBox(
                height: size.height * 0.02,
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
