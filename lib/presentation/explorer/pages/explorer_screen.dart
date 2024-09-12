import 'package:doingbusiness/presentation/Home/widgets/home_list.dart';
import 'package:doingbusiness/presentation/explorer/widgets/explorer_items.dart';
import 'package:flutter/material.dart';
import 'package:doingbusiness/presentation/explorer/widgets/search_bar.dart';

class ExplorerScreen extends StatefulWidget {
  const ExplorerScreen({super.key});

  @override
  State<ExplorerScreen> createState() => _ExplorerScreenState();
}

class _ExplorerScreenState extends State<ExplorerScreen> {
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
              const Text('Discover',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 35,
                    fontWeight: FontWeight.w700,
                  )),
              const Text('Daily financial news',
                  style: TextStyle(
                    color: Colors.black45,
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                  )),
              SizedBox(
                height: size.height * 0.01,
              ),
              const CustomSearchBar(),
              SizedBox(
                height: size.height * 0.01,
              ),
              const ExplorerItems(),
              SizedBox(
                height: size.height * 0.04,
              ),
              const HomeList()
            ],
          ),
        ),
      ),
    ));
  }
}
