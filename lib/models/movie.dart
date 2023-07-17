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
  const Movie({
    required this.id,
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
  });

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
  final String video;

  VideoPlayerController get videoController =>
      VideoPlayerController.networkUrl(video as Uri);
}
