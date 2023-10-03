import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:blog_app/screens/Blog_Detail.dart';
import 'package:blog_app/screens/Home.dart';

void main() {
  runApp(ProviderScope(
    child: BlogExplorerApp(),
  ));
}

class BlogExplorerApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Blog Explorer',
        theme: ThemeData.dark(),
        routes: {
          HomeScreen.routeName: (context) => const HomeScreen(),
          BlogDetail.routeName: (context) => BlogDetail(),
        });
  }
}
