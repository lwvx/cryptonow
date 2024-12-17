import 'package:flutter/material.dart';
import '../ui/tabbar_code/tabbarcode.dart';

class Addfavourite extends StatelessWidget {
  const Addfavourite({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: const Color(0xff04091D),
        appBar: AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: const Color(0xff04091D),
          leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(
              Icons.arrow_back_ios_outlined,
              color: Colors.white,
            ),
          ),
          title: const Text(
            'Add favourite',
            style: TextStyle(
              color: Colors.white,
              fontSize: 20,
              fontWeight: FontWeight.w500,
            ),
          ),
          centerTitle: true,
        ),
        body: const Column(
          children: [
            Tabbarcode(),
            Expanded(
              child: TabBarView(
                children: [
                  Center(
                    child: Text(
                      'Exchanger Page',
                      style: TextStyle(color: Colors.white, fontSize: 18),
                    ),
                  ),
                  Center(
                    child: Text(
                      'Name',
                      style: TextStyle(
                        color: Colors.white54,
                        fontSize: 13,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
