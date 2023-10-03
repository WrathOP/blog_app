import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:blog_app/models/blog_model.dart';

final blogsProvider = FutureProvider<List<Blog>>((ref) async {
  final String url = 'https://intent-kit-16.hasura.app/api/rest/blogs';
  final String adminSecret =
      '32qR4KmXOIpsGPQKMqEJHGJS27G5s7HdSKO3gdtQd2kv5e852SiYwWNfxkZOBuQ6';

  try {
    final response = await http.get(Uri.parse(url), headers: {
      'x-hasura-admin-secret': adminSecret,
    });

    if (response.statusCode == 200) {
      // Request successful, parse and return the response data
      final Map<String, dynamic> jsonData = jsonDecode(response.body);
      final List<dynamic> blogsData = jsonData['blogs'];
      final List<Blog> blogs = blogsData.map((json) {
        return Blog(
          id: json['id'] as String,
          image: json['image_url'] as String,
          title: json['title'] as String,
        );
      }).toList();
      return blogs;
    } else {
      // Request failed, return an empty list or throw an error
      print('Request failed with status code: ${response.statusCode}');
      print('Response data: ${response.body}');
      return <Blog>[];
    }
  } catch (e) {
    // Handle any errors that occurred during the request, throw an error here if needed
    print('Error: $e');
    return <Blog>[];
  }
});
