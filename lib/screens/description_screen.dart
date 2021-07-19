import 'package:carihotel_app/theme.dart';
import 'package:flutter/material.dart';

class DescriptionScreen extends StatelessWidget {
  final String image;
  final String name;
  final String location;
  final String agentPhoto;
  final String agent;
  final String agentJob;
  final String description;
  final String locationImage;
  final String price;
  final String call;
  final String urlLocation;

  DescriptionScreen({
    this.image,
    this.name,
    this.location,
    this.agent,
    this.agentJob,
    this.description,
    this.locationImage,
    this.price,
    this.call,
    this.urlLocation,
    this.agentPhoto,
  });
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(image),
          Positioned(
            left: 20,
            top: 40,
            child: Container(
              width: 40,
              height: 40,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(200),
                color: Colors.white,
              ),
              child: IconButton(
                icon: Icon(Icons.chevron_left),
                onPressed: () {},
              ),
            ),
          ),
          SingleChildScrollView(
            physics: BouncingScrollPhysics(),
            child: Padding(
              padding: const EdgeInsets.only(top: 250),
              child: Container(
                height: 530,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 24),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 20),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(name, style: header2),
                              SizedBox(height: 5),
                              Text(location, style: subTitle1)
                            ],
                          ),
                          Row(
                            children: [
                              Icon(Icons.star_rounded,
                                  size: 16, color: starColor),
                              Icon(Icons.star_rounded,
                                  size: 16, color: starColor),
                              Icon(Icons.star_rounded,
                                  size: 16, color: starColor),
                              Icon(Icons.star_rounded,
                                  size: 16, color: starColor),
                              Icon(Icons.star_rounded,
                                  size: 16, color: greyColor),
                            ],
                          )
                        ],
                      ),
                      SizedBox(height: 25),
                      Text('Listing Agent', style: header2),
                      SizedBox(height: 15),
                      Row(
                        children: [
                          Image.asset(agentPhoto, width: 50),
                          SizedBox(width: 12),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(agent, style: header3),
                              Text(agentJob, style: subTitle1),
                            ],
                          ),
                          Spacer(),
                          IconButton(
                            onPressed: () {},
                            icon: Icon(Icons.message),
                            color: primaryColor,
                          ),
                          IconButton(
                            onPressed: () {},
                            icon: Icon(Icons.call),
                            color: primaryColor,
                          ),
                        ],
                      ),
                      SizedBox(height: 25),
                      Text('Description', style: header2),
                      SizedBox(height: 15),
                      Text(
                        description,
                        style: subTitle1,
                      ),
                      SizedBox(height: 25),
                      GestureDetector(
                        child: Image.asset(locationImage),
                        onTap: () {},
                      ),
                      SizedBox(height: 25),
                      Row(
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Price', style: subTitle1),
                              Text(
                                price,
                                style: header3.copyWith(
                                  color: primaryColor,
                                  fontSize: 20,
                                ),
                              ),
                            ],
                          ),
                          Spacer(),
                          Container(
                            width: 200,
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                primary: primaryColor,
                              ),
                              onPressed: () {},
                              child: Text('Book Now'),
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
