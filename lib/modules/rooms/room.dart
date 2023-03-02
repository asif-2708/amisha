import 'package:Amisha/utils/localfiles.dart';
import 'package:flutter/material.dart';
import 'package:number_inc_dec/number_inc_dec.dart';

void main() {
  runApp(const room());
}

class room extends StatelessWidget {
  const room({Key? key});

  @override
  Widget build(BuildContext context) {
    final title = 'Amisha';

    return MaterialApp(
      title: title,
      home: Scaffold(
        appBar: AppBar(
            backgroundColor: Color.fromARGB(248, 79, 208, 228),
            title: const Text(
              'Hotel Amisha',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
            centerTitle: true,
            actions: const <Widget>[]),
        body: ListView(
          children: <Widget>[
            Container(
              margin: const EdgeInsets.all(8.0),
              child: Card(
                shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(8.0))),
                child: InkWell(
                  onTap: () => print("ciao"),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch, // add this
                    children: <Widget>[
                      ClipRRect(
                        borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(8.0),
                          topRight: Radius.circular(8.0),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(bottom: 20),
                          child: Image.asset('assets/images/hotel_room_1.jpg',
                              // width: 300,

                              height: 150,
                              fit: BoxFit.fill),
                        ),
                      ),
                      // NumberInputWithIncrementDecrement(
                      //   controller: TextEditingController(),
                      // ),
                      const Padding(
                        padding: EdgeInsets.only(bottom: 20),
                        child: ListTile(
                          title: Text(
                            'Standard ',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          subtitle: Text(
                            'Max:2 \nBreakfast: Included \nAC Room: Yes \nFacilities: LED TV, RoomService, Safe Box',
                            style: TextStyle(color: Colors.black),
                          ),
                        ),
                      ),
                      // It is a increse and decrese button
                      Padding(
                        padding: const EdgeInsets.only(
                            bottom: 10, left: 100, right: 100),
                      )
                    ],
                  ),
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.all(8.0),
              child: Card(
                shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(8.0))),
                child: InkWell(
                  onTap: () => print("ciao"),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: <Widget>[
                      ClipRRect(
                        borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(8.0),
                          topRight: Radius.circular(8.0),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(bottom: 25),
                          child: Image.asset('assets/images/hotel_room_2.jpg',
                              // width: 300,

                              height: 150,
                              fit: BoxFit.fill),
                        ),
                      ),
                      const Padding(
                        padding: EdgeInsets.only(bottom: 20),
                        child: ListTile(
                          title: Text(
                            'Deluxe ',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          subtitle: Text(
                            'Max: 3 \nBreakfast: Included \nAC:Yes \nFacilities: LED TV, Room Service, Air Condition, Cleaning Services, Free WiFi, Safe Box',
                            style: TextStyle(color: Colors.black),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.all(8.0),
              child: Card(
                shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(8.0))),
                child: InkWell(
                  onTap: () => print("ciao"),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: <Widget>[
                      ClipRRect(
                        borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(8.0),
                          topRight: Radius.circular(8.0),
                        ),
                        child: Image.asset('assets/images/hotel_room_3.jpg',
                            // width: 300,
                            height: 150,
                            fit: BoxFit.fill),
                      ),
                      const Padding(
                        padding: EdgeInsets.only(bottom: 20),
                        child: ListTile(
                          title: Text(
                            'Super Deluxe',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                          subtitle: Text(
                            'Max: 3 \nbreakfast: Included \nCentral AC:Yes \nFacilities: LED TV, Room Service, Air Condition, Cleaning Services, Free WiFi, Safe Box',
                            style: TextStyle(color: Colors.black),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
