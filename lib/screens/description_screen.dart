import 'package:carihotel_app/theme.dart';
import 'package:flutter/material.dart';

class DescriptionScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset('assets/images/desc1.png'),
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
            child: Padding(
              padding: const EdgeInsets.only(top: 250),
              child: Container(
                height: 500,
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
                              Text('Modern House', style: header2),
                              SizedBox(height: 5),
                              Text('KBP Bandung, Indonesia', style: subTitle1)
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
                          Image.asset('assets/images/owner1.png', width: 50),
                          SizedBox(width: 12),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('De Kezia', style: header3),
                              Text('Front Office', style: subTitle1),
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
                        'Luxury homes at affordable prices with Bandung hilly atmosphere. Located in a strategic location, flood free.',
                        style: subTitle1,
                      ),
                      SizedBox(height: 25),
                      Image.asset('assets/images/maos1.png'),
                      SizedBox(height: 25),
                      Row(
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('Price', style: subTitle1),
                              Text(
                                '\$7,500',
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
