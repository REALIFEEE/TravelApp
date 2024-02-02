import 'package:flutter/material.dart';
import 'package:travelapp/data.dart';
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
              ListView.separated(
                  shrinkWrap: true,
                  itemCount: wisata.length,
                  itemBuilder: (BuildContext context, int index) {
                    return GestureDetector(
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) {
                          return DetailScreen(
                            wisata: wisata[index],
                            imgtitle: titleimg[index],
                            time: hours[index],
                            price: pricelist[index],
                           desc: desc,
                          );
                        }));
                      },
                      child: Container(
                        height: 100.0,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          border: Border.all(color: Colors.white),
                        ),
                        
                       child: ListTile(
                        leading: Image.network(titleimg[index], width: 140.0,),
                        title: Title(
                          color: Colors.black, child: Text('${wisata[index]}')
                          ),
                          subtitle: Text('${truncated}') ,
                       ),
                      ),
                    );
                  },
                  separatorBuilder: (BuildContext context, int index) {
                    return const Divider();
                  }),
            ],
          ),
        ));
  }
}
