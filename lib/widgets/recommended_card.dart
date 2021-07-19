import 'package:carihotel_app/theme.dart';
import 'package:flutter/material.dart';

class RecommendedCard extends StatelessWidget {
  final String images;
  final String name;
  final String location;

  RecommendedCard({
    this.images,
    this.name,
    this.location,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 24),
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: 100,
        padding: EdgeInsets.all(20),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.06),
              offset: Offset(3, 3),
              blurRadius: 5,
            )
          ],
        ),
        child: Row(
          children: [
            Image.asset(images),
            SizedBox(width: 8),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(name, style: header3),
                SizedBox(height: 2),
                Text(location, style: subTitle2),
                Spacer(),
                Row(
                  children: [
                    Icon(Icons.star_rounded, size: 16, color: starColor),
                    Icon(Icons.star_rounded, size: 16, color: starColor),
                    Icon(Icons.star_rounded, size: 16, color: starColor),
                    Icon(Icons.star_rounded, size: 16, color: starColor),
                    Icon(Icons.star_rounded, size: 16, color: greyColor),
                  ],
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
