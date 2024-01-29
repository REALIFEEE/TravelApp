import 'package:flutter/material.dart';
import 'package:travelapp/detailpage.dart';
import 'package:travelapp/signup.dart';
import 'package:travelapp/variables.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            'Home',
            style: TextStyle(fontSize: 24),
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Hello $name',
                style: const TextStyle(fontSize: 18),
              ),
              const SizedBox(
                height: 30,
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const DetailScreen()));
                },
                child: ListView.separated(
                    shrinkWrap: true,
                    itemCount: wisata.length,
                    itemBuilder: (BuildContext context, int index) {
                      return Container(
                        height: 100,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(color: Colors.white),
                        ),
                        child: Center(
                          child: Text(
                            '${wisata[index]}',
                            style: const TextStyle(fontSize: 20),
                          ),
                        ),
                      );
                    },
                    separatorBuilder: (BuildContext context, int index) {
                      return const Divider();
                    }),
              ),
            ],
          ),
        ));
  }
}
