import 'package:instagram_pcto/screens/home/models/user.dart';

class Post{
  final String id;
  final String imageUrl;
  final String caption;
  final String date;
  final String location;
  final User author;

  Post({
  required this.id,
  required this.imageUrl,
  required this.caption,
  required this.date,
  required this.location,
  required this.author,
  });
}