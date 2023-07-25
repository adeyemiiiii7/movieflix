import 'package:video_player/video_player.dart';

enum Genre {
  adventure,
  action,
  comedy,
  animation,
  horror,
  romance,
  thriller,
  drama,
  fantasy,
  biography
}

enum Restriction {
  Guidance,
  GeneralAudience,
  ParentalGuidance13,
  NC18,
}

class Movie {
  const Movie(
      {required this.id,
      required this.year,
      required this.title,
      required this.imageUrl,
      required this.duration,
      required this.restriction,
      required this.genre,
      required this.isHollywood,
      required this.isNollywood,
      required this.isWorldwide,
      required this.about,
      required this.rating,
      required this.video,
      required this.watch,
      required this.isadventure,
      required this.isaction,
      required this.iscomedy,
      required this.isanimation,
      required this.ishorror,
      required this.isromance,
      required this.isthriller,
      required this.isdrama,
      required this.isfantasy,
      required this.isbiography});

  final String id;
  final List<String> year;
  final String title;
  final String imageUrl;
  final int duration;
  final Restriction restriction;
  final Genre genre;
  final bool isHollywood;
  final bool isNollywood;
  final bool isWorldwide;
  final String about;
  final int rating;
  final Uri video;
  final String watch;
  final bool isdrama;
  final bool isadventure;
  final bool isaction;
  final bool iscomedy;
  final bool isanimation;
  final bool ishorror;
  final bool isromance;
  final bool isthriller;
  final bool isfantasy;
  final bool isbiography;

  // Update the videoController property to return VideoPlayerController.
  VideoPlayerController get videoController =>
      VideoPlayerController.networkUrl(video);
  // VideoPlayerController videoController = VideoPlayerController.networkUrl(video);
}
