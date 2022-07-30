import 'package:flutter/material.dart';
import 'package:hello_world/http_service.dart';
import 'package:hello_world/post_model.dart';

class PostsPage extends StatelessWidget {
  final HttpService httpService = HttpService();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text("Moveis"),
      ),

        body: FutureBuilder(
            future: httpService.getPosts(),
            builder: (BuildContext context, AsyncSnapshot<List<Post>> snapshot) {
              if(snapshot.hasData) {
                List<Post>? posts = snapshot.data;
                print(posts);
                // return ListView(
                //   children: posts.map((Post post) => ListTitle(title: Text(post.title),)).toList()
                // )
              }
              return CircularProgressIndicator();

  })
    );
  }
}