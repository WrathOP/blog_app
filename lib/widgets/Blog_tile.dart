import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class BlogsTile extends StatelessWidget {
  String imgUrl, title, tag;

  BlogsTile({
    required this.tag,
    required this.imgUrl,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    final device = MediaQuery.of(context);
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, '/blog_Detail', arguments: {
          'imgUrl': imgUrl,
          'title': title,
          'tag': tag,
        });
      },
      child: Container(
        margin: const EdgeInsets.only(bottom: 16),
        height: device.size.height * 0.2,
        child: Stack(
          children: <Widget>[
            Hero(
              tag: tag,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(6),
                child: CachedNetworkImage(
                  imageUrl: imgUrl,
                  width: device.size.width,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Container(
              height: device.size.height * 0.2,
              decoration: BoxDecoration(
                  backgroundBlendMode: BlendMode.darken,
                  gradient: const LinearGradient(colors: [
                    Color(0xff000000), // Black at the bottom
                    Color(0x00000000), // Transparent black at the top
                    // Color(0x66000000), // Transparent black at the bottom
                  ], begin: Alignment.bottomCenter, end: Alignment.center),
                  borderRadius: BorderRadius.circular(6)),
            ),
            SizedBox(
              width: device.size.width,
              child: Padding(
                padding: const EdgeInsets.only(bottom: 8.0, left: 8, right: 2),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      title,
                      textAlign: TextAlign.left,
                      style: const TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                          color: Colors.white),
                    ),
                  ],
                ),
              ),
            ),
            // GradientShadow(
            //   height: 170,
            // ),
          ],
        ),
      ),
    );
  }
}
