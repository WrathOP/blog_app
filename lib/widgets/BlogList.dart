import 'package:blog_app/widgets/Blog_tile.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../services/fetchBlogs.dart';

class BlogList extends ConsumerStatefulWidget {
  const BlogList({Key? key}) : super(key: key);

  @override
  _BlogListState createState() => _BlogListState();
}

class _BlogListState extends ConsumerState<BlogList> {
  @override
  Widget build(BuildContext context) {
    final blogList = ref.watch(blogsProvider);
    return blogList.when(
      data: (data) {
        return ListView.builder(
          shrinkWrap: true,
          padding: const EdgeInsets.symmetric(horizontal: 16),
          itemBuilder: (context, idx) {
            return BlogsTile(
              tag: data[idx].id,
              imgUrl: data[idx].image,
              title: data[idx].title,
            );
          },
          itemCount: data.length,
        );
      },
      loading: () => const Center(
        child: CircularProgressIndicator(),
      ),
      error: (error, stackTrace) => Text('Error: $error'),
    );
  }
}
