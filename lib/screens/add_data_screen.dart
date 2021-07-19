import 'package:carihotel_app/theme.dart';
import 'package:flutter/material.dart';

class AddDataScreen extends StatelessWidget {
  final TextEditingController nameController = TextEditingController();
  final TextEditingController locationController = TextEditingController();
  final TextEditingController descController = TextEditingController();
  final TextEditingController mapController = TextEditingController();
  final TextEditingController agentController = TextEditingController();
  final TextEditingController priceContoller = TextEditingController();

  void dispose() {
    nameController.dispose();
    locationController.dispose();
    descController.dispose();
    mapController.dispose();
    agentController.dispose();
    priceContoller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: primaryColor,
          title: Text('Add Data'),
        ),
        backgroundColor: Colors.white,
        body: Stack(
          children: [
            ListView(
              children: [
                SizedBox(
                  height: 150,
                )
              ],
            ),
            Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  decoration: BoxDecoration(color: Colors.white, boxShadow: [
                    BoxShadow(
                        color: Colors.black12,
                        offset: Offset(-5, 0),
                        blurRadius: 15,
                        spreadRadius: 3)
                  ]),
                  width: double.infinity,
                  height: 500,
                  child: Column(
                    children: [
                      SizedBox(
                        width: MediaQuery.of(context).size.width,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            TextField(
                              controller: nameController,
                              decoration:
                                  InputDecoration(hintText: "Hotel Name"),
                            ),
                            TextField(
                              controller: locationController,
                              decoration: InputDecoration(hintText: "Location"),
                            ),
                            TextField(
                              controller: agentController,
                              decoration: InputDecoration(hintText: "Agent"),
                            ),
                            TextField(
                              controller: mapController,
                              decoration: InputDecoration(hintText: "Maps"),
                            ),
                            TextField(
                              controller: priceContoller,
                              decoration: InputDecoration(hintText: "Price"),
                            ),
                            TextField(
                              controller: descController,
                              decoration:
                                  InputDecoration(hintText: "Description"),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width,
                        padding: const EdgeInsets.fromLTRB(15, 15, 0, 15),
                        child: ElevatedButton(
                          style:
                              ElevatedButton.styleFrom(primary: primaryColor),
                          child: Text('Add Data'),
                          onPressed: () {},
                        ),
                      )
                    ],
                  ),
                )),
          ],
        ));
  }
}
