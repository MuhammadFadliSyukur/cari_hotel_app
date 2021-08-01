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
        padding: EdgeInsets.only(left: 24),
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
              Text('Find Your\nPerfect Place!', style: header1),
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
                    hintText: 'Find your dream place',
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
                        name: 'Hotel Indonesia',
                        location: 'Jakarta, Indonesia',
                      ),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => DescriptionScreen(
                              image: 'assets/images/desc1.png',
                              name: 'Hotel Indonesia',
                              location: 'JL MH Thamrin No. 1 Jakarta',
                              agentPhoto: 'assets/images/owner1.png',
                              agent: 'De Kezia',
                              agentJob: 'Front Office',
                              call: '',
                              description:
                                  'This luxury hotel is 2.1 km from the National Museum of Indonesia and 4 km from Istiqlal Mosque, and an 11-minute walk from Sudirman train station.',
                              locationImage: 'assets/images/maos1.png',
                              urlLocation: '',
                              price: '\$112',
                            ),
                          ),
                        );
                      },
                    ),
                    SizedBox(width: 20),
                    GestureDetector(
                      child: HotelCard(
                        images: 'assets/images/hotel2.png',
                        name: 'The Westin',
                        location: 'Jakarta, Indonesia',
                      ),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => DescriptionScreen(
                              image: 'assets/images/desc2.png',
                              name: 'The Westin',
                              location: 'JL HR Rasuna Said Kav-22A',
                              agentPhoto: 'assets/images/owner2.png',
                              agent: 'Jhosuer',
                              agentJob: 'Front Office',
                              call: '',
                              description:
                                  'Located atop the tallest building in the Golden Triangle business and shopping district, this upscale hotel is 3 km from Taman Suropati park and 8 km from the National Museum of Indonesia.',
                              locationImage: 'assets/images/maos2.png',
                              urlLocation: '',
                              price: '\$96',
                            ),
                          ),
                        );
                      },
                    ),
                    SizedBox(width: 20),
                    GestureDetector(
                      child: HotelCard(
                        images: 'assets/images/hotel3.png',
                        name: 'Fairmont Senayan',
                        location: 'Jakarta, Indonesia',
                      ),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => DescriptionScreen(
                              image: 'assets/images/desc3.png',
                              name: 'Fairmont Senayan',
                              location: 'JL Asia Afrika No. 8 Gelora Jakarta',
                              agentPhoto: 'assets/images/owner3.png',
                              agent: 'Gabriella',
                              agentJob: 'Front Office',
                              call: '',
                              description:
                                  'A 12-minute walk from designer outlets at Plaza Senayan, this luxury hotel in the business district is 8 km from the National Museum of Indonesia.',
                              locationImage: 'assets/images/maos3.png',
                              urlLocation: '',
                              price: '\$97',
                            ),
                          ),
                        );
                      },
                    ),
                    SizedBox(width: 20),
                    GestureDetector(
                      child: HotelCard(
                        images: 'assets/images/hotel4.png',
                        name: 'The Harmitage',
                        location: 'Jakarta, Indonesia',
                      ),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => DescriptionScreen(
                              image: 'assets/images/desc4.png',
                              name: 'The Harmitage',
                              location: 'Jl. Cilacap No.1, Menteng, Jakarta',
                              agentPhoto: 'assets/images/owner4.png',
                              agent: 'Megan',
                              agentJob: 'Front Office',
                              call: '',
                              description:
                                  'This upscale, cozy hotel is set in a Dutch Colonial-style building that was built in the 1920s and is set in leafy surroundings 2.9 km from the National Monument.',
                              locationImage: 'assets/images/maos4.png',
                              urlLocation: '',
                              price: '\$89',
                            ),
                          ),
                        );
                      },
                    ),
                    SizedBox(width: 20),
                    GestureDetector(
                      child: HotelCard(
                        images: 'assets/images/hotel5.png',
                        name: 'Raffles Jakarta',
                        location: 'Jakarta, Indonesia',
                      ),
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => DescriptionScreen(
                              image: 'assets/images/desc5.png',
                              name: 'Raffles Jakarta',
                              location: 'Ciputra World No.1 Jakarta',
                              agentPhoto: 'assets/images/owner5.png',
                              agent: 'Hasan',
                              agentJob: 'Front Office',
                              call: '',
                              description:
                                  'This multi-storey luxury hotel is 6 km from Central Jakarta, 7 km from the National Museum of Indonesia and Taman Ismail Marzuki, a center for arts, culture and science.',
                              locationImage: 'assets/images/maos5.png',
                              urlLocation: '',
                              price: '\$101',
                            ),
                          ),
                        );
                      },
                    ),
                  ],
                ),
              ),
              SizedBox(height: 30),
              Text('Recomended For You', style: header2),
              SizedBox(height: 15),
              RecommendedCard(
                images: 'assets/images/recommended1.png',
                name: 'Aryaduta Hotel',
                location: 'Bandung',
              ),
              SizedBox(height: 15),
              RecommendedCard(
                images: 'assets/images/recommended2.png',
                name: 'Pheonix Hotel',
                location: 'Jogjakarta',
              ),
              SizedBox(height: 15),
              RecommendedCard(
                images: 'assets/images/recommended3.png',
                name: 'Trans Resort Hotel',
                location: 'Bali',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
