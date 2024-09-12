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
    return Scaffold(
        body: SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              GestureDetector(
                child: Icon(
                  Icons.arrow_back_ios_new,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text('Discover',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 35,
                    fontWeight: FontWeight.w700,
                  )),
              Text('Daily financial news',
                  style: TextStyle(
                    color: Colors.black45,
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                  )),
              SizedBox(
                height: 10,
              ),
              CustomSearchBar(),
              SizedBox(
                height: 15,
              ),
              ExplorerItems(),
              SizedBox(
                height: 40,
              ),
              HomeList()
            ],
          ),
        ),
      ),
    ));
  }
}
