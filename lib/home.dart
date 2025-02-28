import 'dart:developer';

import 'package:apifetch/controller.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  void initState() {
    super.initState();
    Provider.of<Controller>(context, listen: false).fetchdatas();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Consumer<Controller>(
        builder:
            (context, value, child) => ListView.builder(
              itemCount: value.listnew.length,

              itemBuilder: (context, index) {
                log(value.listnew[index].toString());
                return Container(
                  color: Colors.black12,
                  child: Column(
                    children: [
                      Text(value.listnew[index].name ?? 'no data'),
                      Text(value.listnew[index].description ?? ''),
                      Text(value.listnew[index].id ?? ""),
                      Text(value.listnew[index].avatar ?? ""),
                      Image.network(value.listnew[index].avatar ?? ""),
                    ],
                  ),
                );
              },
            ),
      ),
    );
  }
}
