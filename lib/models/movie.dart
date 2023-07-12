enum Genre {
  adventure,
  action,
  comedy,
  animation,
  horror,
  romance,
  thriller,
  drama,
  fantasy
}

enum Restriction {
  Guidance,
  GeneralAudience,
  ParentalGuidance,
  NC18,
}

class Movie {
  const Movie({
    required this.id,
    required this.year,
  });
}
