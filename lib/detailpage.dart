import 'package:flutter/material.dart';
import 'package:travelapp/variables.dart';

class DetailScreen extends StatelessWidget {
  final String wisata;
  final String imgtitle;
  final String time;
  final String price;
  final String desc;
  //final String imgTitle;
  const DetailScreen(
      {super.key,
      required this.wisata,
      required this.imgtitle,
      required this.time,
      required this.price,
      required this.desc,
      });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('${wisata}'),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Image.network(imgtitle),
              Container(
                margin: EdgeInsets.only(top: 16.0),
                child: Text(
                  '${wisata}',
                  textAlign: TextAlign.center,
                  style: const TextStyle(
                    fontSize: 30.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.symmetric(vertical: 16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    const Column(
                      children: [
                        Icon(Icons.calendar_today),
                        Text('Open Everyday')
                      ],
                    ),
                    Column(
                      children: [const Icon(Icons.access_time), Text('${time}')],
                    ),
                    Column(
                      children: [
                        const Icon(Icons.monetization_on),
                        Text('${price}')
                      ],
                    )
                  ],
                ),
              ),
              Container(
                padding: const EdgeInsets.all(16.0),
                child: Text(
                  '${desc}',
                  textAlign: TextAlign.center,
                  style: const TextStyle(fontSize: 16.0),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
