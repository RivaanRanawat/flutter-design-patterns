import 'dart:convert';

class PostAPI1 {
  String getYouTubePosts() {
    return '''
    [
      {
        "title": "Automatic Code Generation with Flutter",
        "description": "Generate automatically"
      },
      {
        "title": "Twitter Clone with Flutter",
        "description": "Clones"
      }
    ]
    ''';
  }
}

class PostAPI2 {
  String getMediumPosts() {
    return '''
    [
      {
        "header": "Aasasas",
        "bio": "Gwqweqwe"
      },
      {
        "header": "Twitter Clone with Flutter",
        "bio": "Clones"
      }
    ]
    ''';
  }
}

abstract class IPostAPI {
  List<Post> getPosts();
}

class Post {
  final String title;
  final String bio;
  Post({
    required this.title,
    required this.bio,
  });
}

// ADAPTER
class PostAPI1Adapter implements IPostAPI {
  final api = PostAPI1();
  @override
  List<Post> getPosts() {
    final data = jsonDecode(api.getYouTubePosts()) as List;
    return data
        .map(
          (e) => Post(
            title: e['title'],
            bio: e['description'],
          ),
        )
        .toList();
  }
}

class PostAPI2Adapter implements IPostAPI {
  final api = PostAPI2();
  @override
  List<Post> getPosts() {
    final data = jsonDecode(api.getMediumPosts()) as List;
    return data
        .map(
          (e) => Post(
            title: e['header'],
            bio: e['bio'],
          ),
        )
        .toList();
  }
}

class PostAPI implements IPostAPI {
  final api1 = PostAPI1Adapter();
  final api2 = PostAPI2Adapter();
  @override
  List<Post> getPosts() {
    return api1.getPosts() + api2.getPosts();
  }
}

// Usage - final PostAPI postAPI = PostAPI(); 
// postApi.getPosts();
