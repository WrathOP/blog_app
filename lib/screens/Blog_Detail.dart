import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class BlogDetail extends StatelessWidget {
  static const routeName = '/blog_Detail';

  @override
  Widget build(BuildContext context) {
    final args = ModalRoute.of(context)!.settings.arguments as Map;
    final device =  MediaQuery.of(context);
    return Scaffold(
      appBar: AppBar(
        title: Text(args['title']),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Hero(
              tag: args['tag'],
              child: CachedNetworkImage(
                imageUrl: args['imgUrl'],
                fit: BoxFit.cover,
                height: device.size.height * 0.3,
                width: device.size.width,
              ),
            ),
            // Display the blog image
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                args['title'],
                style: const TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            // Add more details about the blog here
          ],
        ),
      ),
    );
  }
}
