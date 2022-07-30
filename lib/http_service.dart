import 'package:flutter/material.dart';
import 'package:hello_world/post_model.dart';
import 'package:http/http.dart';
import 'dart:convert';

class HttpService {
  final String postUrl = "http://192.168.0.153:4012/api/mov/movies";
  Future<List<Post>> getPosts() async {
    Response res = await get(Uri.parse(postUrl));

    if(res.statusCode == 200) {
      List<dynamic> body = jsonDecode(res.body);

      List<Post> posts = body.map((dynamic item) => Post.fromJson(item)).toList();
      return posts;
    } else {
      throw "Can't get movies.";
    }
  }
}