import 'package:carihotel_app/theme.dart';
import 'package:flutter/material.dart';

class HotelCard extends StatelessWidget {
  final String images;
  final String name;
  final String location;

  const HotelCard({
    this.images,
    this.name,
    this.location,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 5),
      width: 230,
      height: 210,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
              color: Colors.black.withOpacity(0.06),
              offset: Offset(3, 3),
              blurRadius: 5),
        ],
      ),
      child: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(15),
              topRight: Radius.circular(15),
            ),
            child: Image.asset(images),
          ),
          SizedBox(height: 8),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 12),
            child: Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(name, style: title1),
                    SizedBox(height: 2),
                    Text(location, style: subTitle2),
                  ],
                ),
                Spacer(),
                Row(
                  children: [
                    Icon(Icons.star_rounded, size: 16, color: starColor),
                    Icon(Icons.star_rounded, size: 16, color: starColor),
                    Icon(Icons.star_rounded, size: 16, color: starColor),
                    Icon(Icons.star_rounded, size: 16, color: starColor),
                    Icon(Icons.star_rounded, size: 16, color: greyColor),
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
