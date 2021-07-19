import 'package:carihotel_app/screens/description_screen.dart';
import 'package:carihotel_app/theme.dart';
import 'package:carihotel_app/widgets/hotel_card.dart';
import 'package:carihotel_app/widgets/recommended_card.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  final TextEditingController searchContoller = TextEditingController();

  void dispose() {
    searchContoller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 24),
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(top: 60),
                child: IconButton(onPressed: () {}, icon: Icon(Icons.menu)),
              ),
              SizedBox(height: 30),
              Text('Find Your\nPerfect Place', style: header1),
              SizedBox(height: 30),
              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(200),
                  boxShadow: [
                    BoxShadow(
                      color: Color(0xff616161).withOpacity(0.06),
                      offset: Offset(0, 3),
                      blurRadius: 5,
                    ),
                  ],
                ),
                child: TextFormField(
                  controller: searchContoller,
                  decoration: InputDecoration(
                    hintText: 'Find youor dream place',
                    hintStyle: subTitle1,
                    prefixIcon: Icon(Icons.search, size: 20),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(100),
                      borderSide: BorderSide.none,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 30),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                physics: BouncingScrollPhysics(),
                child: Row(
                  children: [
                    GestureDetector(
                      child: HotelCard(
                        images: 'assets/images/hotel1.png',
                        name: 'Modern House',
                        location: 'Bandung',
                      ),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => DescriptionScreen(),
                          ),
                        );
                      },
                    ),
                    SizedBox(width: 20),
                    HotelCard(
                      images: 'assets/images/hotel2.png',
                      name: 'White House',
                      location: 'Jakarta',
                    ),
                  ],
                ),
              ),
              SizedBox(height: 30),
              Text('Recomended For You', style: header2),
              SizedBox(height: 15),
              RecommendedCard(
                images: 'assets/images/recommended1.png',
                name: 'Wooden House',
                location: 'Bamdung',
              ),
              SizedBox(height: 15),
              RecommendedCard(
                images: 'assets/images/recommended2.png',
                name: 'Triangle House',
                location: 'Bamdung',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
