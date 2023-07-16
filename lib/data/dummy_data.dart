import 'package:flutter/material.dart';

import '../models/movie.dart';
import '../models/year.dart';

const avaliableYears = [
  Year(
    id: 'c1',
    title: "2010",
    color: Colors.orange,
  ),
  Year(
    id: 'c2',
    title: "2011",
    color: Colors.purpleAccent,
  ),
  Year(
    id: 'c3',
    title: "2012",
    color: Colors.blue,
  ),
  Year(
    id: 'c4',
    title: "2013",
    color: Colors.white24,
  ),
  Year(
    id: 'c5',
    title: "2014",
    color: Colors.blueGrey,
  ),
  Year(
    id: 'c6',
    title: "2015",
    color: Color.fromARGB(255, 0, 55, 255),
  ),
  Year(
    id: 'c7',
    title: "2016",
    color: Color.fromARGB(255, 255, 0, 247),
  ),
  Year(
    id: 'c8',
    title: "2017",
    color: Color.fromARGB(255, 0, 255, 128),
  ),
  Year(
    id: 'c9',
    title: "2018",
    color: Color.fromARGB(255, 0, 251, 255),
  ),
  Year(
    id: 'c10',
    title: "2019",
    color: Color.fromARGB(255, 0, 179, 255),
  ),
  Year(
    id: 'c11',
    title: "2020",
    color: Color.fromARGB(255, 0, 60, 255),
  ),
  Year(
    id: 'c12',
    title: "2021",
    color: Color.fromARGB(255, 212, 0, 255),
  ),
  Year(
    id: 'c13',
    title: "2022",
    color: Color.fromARGB(255, 255, 0, 204),
  ),
  Year(
    id: 'c14',
    title: "2023",
    color: Color.fromARGB(255, 255, 0, 64),
  ),
];
const dummyData = [
  Movie(
    id: 'm1',
    year: [
      'c1',
    ],
    title: 'Inception',
    genre: Genre.action, // Genre.adventure,
    duration: 148,
    restriction: Restriction.ParentalGuidance13,
    imageUrl:
        'https://www.imdb.com/title/tt1375666/mediaviewer/rm3426651392/?ref_=tt_ov_i',
    rating: 88,
    video: '',
    about:
        'A thief who steals corporate secrets through the use of  dream-sharing technology is given the inverse task of planting an idea into the mind of a C.E.O. but his tragic past may doom the project and his team to disaster.',
    isHollywood: true,
    isWorldwide: true,
    isNollywood: false,
  ),
  Movie(
    id: 'm2',
    year: [
      'c1',
    ],
    title: 'Toy Story 3',
    genre: Genre.adventure, // Genre.adventure,
    duration: 103,
    restriction: Restriction.Guidance,
    imageUrl:
        'https://www.imdb.com/title/tt0435761/mediaviewer/rm3038678784/?ref_=tt_ov_i',
    video: '',
    rating: 98,
    about:
        "The toys are mistakenly delivered to a day-care center instead of the attic right before Andy leaves for college, and it's up to Woody to convince the other toys that they weren't abandoned and to return home.",
    isHollywood: true,
    isWorldwide: true,
    isNollywood: false,
  ),
  Movie(
    id: 'm3',
    year: [
      'c1',
    ],
    title: 'The Social Network',
    genre: Genre.biography, // Genre.adventure,
    duration: 120,
    restriction: Restriction.Guidance,
    imageUrl:
        'https://www.imdb.com/title/tt1285016/mediaviewer/rm880244480/?ref_=tt_ov_i',
    rating: 78,
    video: '',
    about:
        "As Harvard student Mark Zuckerberg creates the social networking site that would become known as Facebook, he is sued by the twins who claimed he stole their idea and by the co-founder who was later squeezed out of the business.",
    isHollywood: true,
    isWorldwide: true,
    isNollywood: false,
  ),
  Movie(
    id: 'm4',
    year: [
      'c1',
    ],
    title: 'How to Train Your Dragon',
    genre: Genre.adventure, // Genre.adventure,
    duration: 98,
    restriction: Restriction.ParentalGuidance13,
    imageUrl:
        'https://www.imdb.com/title/tt1285016/mediaviewer/rm880244480/?ref_=tt_ov_i',
    rating: 81,
    video: '',
    about:
        "A hapless young Viking who aspires to hunt dragons becomes the unlikely friend of a young dragon himself, and learns there may be more to the creatures than he assumed.",
    isHollywood: true,
    isWorldwide: true,
    isNollywood: false,
  ),
  Movie(
    id: 'm5',
    year: [
      'c1',
    ],
    title: 'Kick-Ass',
    genre: Genre.action, // Genre.adventure,
    duration: 76,
    restriction: Restriction.NC18,
    imageUrl:
        'https://www.imdb.com/title/tt1250777/mediaviewer/rm633638656/?ref_=tt_ov_i',
    rating: 81,
    video: '',
    about:
        "Dave Lizewski is an unnoticed high school student and comic book fan who one day decides to become a superhero, even though he has no powers, training or meaningful reason to do so.",
    isHollywood: true,
    isWorldwide: true,
    isNollywood: false,
  ),
  Movie(
    id: 'm6',
    year: [
      'c1',
    ],
    title: 'Kick-Ass',
    genre: Genre.action, // Genre.adventure,
    duration: 76,
    restriction: Restriction.NC18,
    imageUrl:
        'https://www.imdb.com/title/tt1250777/mediaviewer/rm633638656/?ref_=tt_ov_i',
    rating: 81,
    video: '',
    about:
        "Dave Lizewski is an unnoticed high school student and comic book fan who one day decides to become a superhero, even though he has no powers, training or meaningful reason to do so.",
    isHollywood: true,
    isWorldwide: true,
    isNollywood: false,
  ),
  Movie(
    id: 'm7',
    year: [
      'c1',
    ],
    title: 'Shutter Island',
    genre: Genre.thriller, // Genre.adventure,
    duration: 76,
    restriction: Restriction.NC18,
    imageUrl: 'https://www.imdb.com/title/tt1130884/mediaviewer/rm1814907136/',
    rating: 81,
    video:
        'https://www.imdb.com/video/vi4064281/?playlistId=tt1130884&ref_=tt_ov_vi',
    about:
        "Teddy Daniels and Chuck Aule, two US marshals, are sent to an asylum on a remote island in order to investigate the disappearance of a patient, where Teddy uncovers a shocking truth about the place.",
    isHollywood: true,
    isWorldwide: true,
    isNollywood: false,
  ),
  Movie(
    id: 'm8',
    year: [
      'c2',
    ],
    title: 'The Tree of Life',
    genre: Genre.drama, // Genre.adventure,
    duration: 139,
    restriction: Restriction.ParentalGuidance13,
    imageUrl:
        'https://www.imdb.com/title/tt0478304/mediaviewer/rm4192437504/?ref_=tt_ov_i',
    rating: 81,
    video:
        'https://www.imdb.com/video/vi612735001/?playlistId=tt0478304&ref_=tt_ov_vi',
    about:
        "The story of a family in Waco, Texas in 1956. The eldest son witnesses the loss of innocence and struggles with his parents' conflicting teachings.",
    isHollywood: true,
    isWorldwide: true,
    isNollywood: false,
  ),
  Movie(
    id: 'm9',
    year: [
      'c2',
    ],
    title: 'A Seperation',
    genre: Genre.drama, // Genre.adventure,
    duration: 123,
    restriction: Restriction.ParentalGuidance13,
    imageUrl:
        'https://www.imdb.com/title/tt0478304/mediaviewer/rm4192437504/?ref_=tt_ov_i',
    rating: 83,
    video:
        'https://www.imdb.com/video/vi2758057497/?playlistId=tt1832382&ref_=tt_ov_vi',
    about:
        "A married couple are faced with a difficult decision - to improve the life of their child by moving to another country or to stay in Iran and look after a deteriorating parent who has Alzheimer's disease.",
    isHollywood: false,
    isWorldwide: true,
    isNollywood: false,
  ),
  Movie(
    id: 'm10',
    year: [
      'c2',
    ],
    title: 'In Time',
    genre: Genre.thriller, // Genre.adventure,
    duration: 109,
    restriction: Restriction.ParentalGuidance13,
    imageUrl:
        'https://www.imdb.com/video/vi775265305/?playlistId=tt1637688&ref_=tt_pr_ov_vi',
    rating: 67,
    video:
        'https://www.imdb.com/video/vi2758057497/?playlistId=tt1832382&ref_=tt_ov_vi',
    about:
        "In a future where people stop aging at 25, but are engineered to live only one more year, having the means to buy your way out of the situation is a shot at immortal youth. Here, Will Salas finds himself accused of murder and on the run with a hostage - a connection that becomes an important part of the way against the system.",
    isHollywood: true,
    isWorldwide: true,
    isNollywood: false,
  ),
  Movie(
    id: 'm11',
    year: [
      'c2',
    ],
    title: 'Ku FU Panda 2',
    genre: Genre.animation, // Genre.adventure,
    duration: 90,
    restriction: Restriction.ParentalGuidance13,
    imageUrl: 'https://www.imdb.com/title/tt1302011/?ref_=ttls_li_i',
    rating: 67,
    video:
        'https://www.imdb.com/video/vi1639488793/?playlistId=tt1302011&ref_=tt_ov_vi',
    about:
        "Po and his friends fight to stop a peacock villain from conquering China with a deadly new weapon, but first the Dragon Warrior must come to terms with his past.",
    isHollywood: true,
    isWorldwide: true,
    isNollywood: false,
  ),
  Movie(
    id: 'm12',
    year: [
      'c2',
    ],
    title: 'Tinker Tailor Soldier Spy',
    genre: Genre.thriller, // Genre.adventure,
    duration: 127,
    restriction: Restriction.Guidance,
    imageUrl:
        'https://www.imdb.com/title/tt1340800/mediaviewer/rm1489419520/?ref_=tt_ov_i',
    rating: 67,
    video: 'https://www.imdb.com/video/vi3394673689/?playlistId=tt1340800',
    about:
        "In the bleak days of the Cold War, espionage veteran George Smiley is forced from semi-retirement to uncover a Soviet Agent within MI6.",
    isHollywood: true,
    isWorldwide: true,
    isNollywood: false,
  ),
  Movie(
    id: 'm13',
    year: [
      'c3',
    ],
    title: 'Django Unchained',
    genre: Genre.action, // Genre.adventure,
    duration: 165,
    restriction: Restriction.NC18,
    imageUrl:
        'https://m.media-amazon.com/images/M/MV5BMjIyNTQ5NjQ1OV5BMl5BanBnXkFtZTcwODg1MDU4OA@@._V1_UY209_CR0,0,140,209_AL_.jpg',
    rating: 84,
    video: 'https://www.imdb.com/video/vi2291574553/?playlistId=tt1853728',
    about:
        "With the help of a German bounty-hunter, a freed slave sets out to rescue his wife from a brutal plantation owner in Mississippi.",
    isHollywood: true,
    isWorldwide: true,
    isNollywood: false,
  ),
  Movie(
    id: 'm14',
    year: [
      'c3',
    ],
    title: 'The Dark Knight Rises',
    genre: Genre.action, // Genre.adventure,
    duration: 164,
    restriction: Restriction.ParentalGuidance13,
    imageUrl:
        'https://www.imdb.com/title/tt1345836/mediaviewer/rm834516224/?ref_=tt_ov_i',
    rating: 84,
    video:
        'https://www.imdb.com/video/vi144884505/?playlistId=tt1345836&ref_=tt_ov_vi',
    about:
        "Eight years after the Joker's reign of chaos, Batman is coerced out of exile with the assistance of the mysterious Selina Kyle in order to defend Gotham City from the vicious guerrilla terrorist Bane.",
    isHollywood: true,
    isWorldwide: true,
    isNollywood: false,
  ),
  Movie(
    id: 'm15',
    year: [
      'c3',
    ],
    title: 'Skydall',
    genre: Genre.action, // Genre.adventure,
    duration: 143,
    restriction: Restriction.ParentalGuidance13,
    imageUrl:
        'https://m.media-amazon.com/images/M/MV5BMWZiNjE2OWItMTkwNy00ZWQzLWI0NTgtMWE0NjNiYTljN2Q1XkEyXkFqcGdeQXVyNzAwMjYxMzA@._V1_UY209_CR0,0,140,209_AL_.jpg',
    rating: 78,
    video:
        'https://www.imdb.com/title/tt1074638/mediaviewer/rm2254713344/?ref_=tt_ov_i',
    about:
        "James Bond's loyalty to M is tested when her past comes back to haunt her. When MI6 comes under attack, 007 must track down and destroy the threat, no matter how personal the cost.",
    isHollywood: true,
    isWorldwide: true,
    isNollywood: false,
  ),
  Movie(
    id: 'm16',
    year: [
      'c3',
    ],
    title: 'The Wolf of Wall Street',
    genre: Genre.comedy, // Genre.adventure,
    duration: 180,
    restriction: Restriction.Guidance,
    imageUrl:
        'https://m.media-amazon.com/images/M/MV5BMjIxMjgxNTk0MF5BMl5BanBnXkFtZTgwNjIyOTg2MDE@._V1_UY209_CR0,0,140,209_AL_.jpg',
    rating: 82,
    video:
        'https://www.imdb.com/video/vi2312218649/?playlistId=tt0993846&ref_=tt_pr_ov_vi',
    about:
        "Based on the true story of Jordan Belfort, from his rise to a wealthy stock-broker living the high life to his fall involving crime, corruption and the federal government.",
    isHollywood: true,
    isWorldwide: true,
    isNollywood: false,
  ),
  Movie(
    id: 'm17',
    year: [
      'c3',
    ],
    title: 'Her',
    genre: Genre.drama, // Genre.adventure,
    duration: 125,
    restriction: Restriction.Guidance,
    imageUrl:
        'https://www.imdb.com/title/tt1798709/mediaviewer/rm1539299328/?ref_=tt_ov_i',
    rating: 80,
    video:
        'https://www.imdb.com/video/vi4112492569/?playlistId=tt1798709&ref_=tt_ov_vi',
    about:
        "A lonely writer develops an unlikely relationship with his newly purchased operating system that's designed to meet his every need.",
    isHollywood: true,
    isWorldwide: true,
    isNollywood: false,
  ),
  Movie(
    id: 'm18',
    year: [
      'c4',
    ],
    title: 'Birdman or (The Unexpected Virtue of Ignorance)',
    genre: Genre.drama, // Genre.adventure,
    duration: 119,
    restriction: Restriction.Guidance,
    imageUrl:
        'https://www.imdb.com/title/tt2562232/mediaviewer/rm3926180864/?ref_=tt_ov_i',
    rating: 77,
    video:
        'https://www.imdb.com/video/vi1378069529/?playlistId=tt2562232&ref_=tt_ov_vi',
    about:
        "A washed-up superhero actor attempts to revive his fading career by writing, directing, and starring in a Broadway production.",
    isHollywood: true,
    isWorldwide: true,
    isNollywood: false,
  ),
  Movie(
    id: 'm19',
    year: [
      'c4',
    ],
    title: 'Leviathan',
    genre: Genre.drama, // Genre.adventure,
    duration: 140,
    restriction: Restriction.Guidance,
    imageUrl:
        'https://www.imdb.com/title/tt2802154/mediaviewer/rm3515366912/?ref_=tt_ov_i',
    rating: 92,
    video:
        'https://www.imdb.com/video/vi869838617/?playlistId=tt2802154&ref_=tt_ov_vi',
    about:
        "In a Russian coastal town, Kolya is forced to fight the corrupt mayor when he is told that his house will be demolished. He recruits a lawyer friend to help, but the man's arrival brings further misfortune for Kolya and his family..",
    isHollywood: true,
    isWorldwide: true,
    isNollywood: false,
  ),
  Movie(
    id: 'm20',
    year: [
      'c4',
    ],
    title: 'The Grand Budapest Hotel',
    genre: Genre.comedy, // Genre.adventure,
    duration: 109,
    restriction: Restriction.Guidance,
    imageUrl:
        'https://www.imdb.com/title/tt2278388/mediaviewer/rm1834474496/?ref_=tt_ov_i',
    rating: 81,
    video:
        'https://www.imdb.com/video/vi1157933593/?playlistId=tt2278388&ref_=tt_ov_vi',
    about:
        "A writer encounters the owner of an aging high-class hotel, who tells him of his early years serving as a lobby boy in the hotel's glorious years under an exceptional concierge.",
    isHollywood: true,
    isWorldwide: true,
    isNollywood: false,
  ),
  Movie(
    id: 'm21',
    year: [
      'c4',
    ],
    title: 'Boyhood',
    genre: Genre.drama, // Genre.adventure,
    duration: 165,
    restriction: Restriction.Guidance,
    imageUrl:
        'https://www.imdb.com/title/tt1065073/mediaviewer/rm4108897280/?ref_=tt_ov_i',
    rating: 81,
    video:
        'https://www.imdb.com/video/vi1306504217/?playlistId=tt1065073&ref_=tt_ov_vi',
    about: "The life of Mason, from early childhood to his arrival at college.",
    isHollywood: true,
    isWorldwide: true,
    isNollywood: false,
  ),
  Movie(
    id: 'm22',
    year: [
      'c5',
    ],
    title: 'Mission: Impossible - Rogue Nation',
    genre: Genre.action, // Genre.adventure,
    duration: 131,
    restriction: Restriction.ParentalGuidance13,
    imageUrl:
        'https://www.imdb.com/title/tt1065073/mediaviewer/rm4108897280/?ref_=tt_ov_i',
    rating: 74,
    video:
        'https://www.imdb.com/video/vi1306504217/?playlistId=tt1065073&ref_=tt_ov_vi',
    about:
        "Ethan and his team take on their most impossible mission yet when they have to eradicate an international rogue organization as highly skilled as they are and committed to destroying the IMF.",
    isHollywood: true,
    isWorldwide: true,
    isNollywood: false,
  ),
  Movie(
    id: 'm23',
    year: [
      'c5',
    ],
    title: 'Inside Out',
    genre: Genre.animation, // Genre.adventure,
    duration: 95,
    restriction: Restriction.ParentalGuidance13,
    imageUrl:
        'https://www.imdb.com/title/tt2096673/mediaviewer/rm3662344960/?ref_=tt_ov_i',
    rating: 81,
    video:
        'https://www.imdb.com/video/vi203730969/?playlistId=tt2096673&ref_=tt_ov_vi',
    about:
        "After young Riley is uprooted from her Midwest life and moved to San Francisco, her emotions - Joy, Fear, Anger, Disgust and Sadness - conflict on how best to navigate a new city, house, and school.",
    isHollywood: true,
    isWorldwide: true,
    isNollywood: false,
  ),
  Movie(
    id: 'm24',
    year: [
      'c5',
    ],
    title: 'Inside Out',
    genre: Genre.action, // Genre.adventure,
    duration: 77,
    restriction: Restriction.Guidance,
    imageUrl:
        'https://m.media-amazon.com/images/M/MV5BYTM3ZTllNzItNTNmOS00NzJiLTg1MWMtMjMxNDc0NmJhODU5XkEyXkFqcGdeQXVyODE5NzE3OTE@._V1_UX140_CR0,0,140,209_AL_.jpg',
    rating: 77,
    video:
        'https://www.imdb.com/video/vi1901244185/?playlistId=tt2802144&ref_=tt_ov_vi',
    about:
        "After young Riley is uprooted from her Midwest life and moved to San Francisco, her emotions - Joy, Fear, Anger, Disgust and Sadness - conflict on how best to navigate a new city, house, and school.",
    isHollywood: true,
    isWorldwide: true,
    isNollywood: false,
  ),
  Movie(
    id: 'm25',
    year: [
      'c5',
    ],
    title: 'Avengers: Age of Ultron',
    genre: Genre.action, // Genre.adventure,
    duration: 73,
    restriction: Restriction.ParentalGuidance13,
    imageUrl:
        'https://www.imdb.com/title/tt2395427/mediaviewer/rm4050576640/?ref_=tt_ov_i',
    rating: 77,
    video:
        'https://www.imdb.com/video/vi2821566745/?playlistId=tt2395427&ref_=tt_ov_vi',
    about:
        "When Tony Stark and Bruce Banner try to jump-start a dormant peacekeeping program called Ultron, things go horribly wrong and it's up to Earth's mightiest heroes to stop the villainous Ultron from enacting his terrible plan.",
    isHollywood: true,
    isWorldwide: true,
    isNollywood: false,
  ),
  Movie(
    id: 'm26',
    year: [
      'c6',
    ],
    title: 'Moonlight',
    genre: Genre.drama, // Genre.adventure,
    duration: 125,
    restriction: Restriction.NC18,
    imageUrl:
        'https://www.imdb.com/title/tt2395427/mediaviewer/rm4050576640/?ref_=tt_ov_i',
    rating: 74,
    video:
        'https://www.imdb.com/video/vi2821566745/?playlistId=tt2395427&ref_=tt_ov_vi',
    about:
        "A young African-American man grapples with his identity and sexuality while experiencing the everyday struggles of childhood, adolescence, and burgeoning adulthood.",
    isHollywood: true,
    isWorldwide: true,
    isNollywood: false,
  ),
  Movie(
    id: 'm27',
    year: [
      'c6',
    ],
    title: 'Captain America: Civil War',
    genre: Genre.action, // Genre.adventure,
    duration: 147,
    restriction: Restriction.ParentalGuidance13,
    imageUrl:
        'https://www.imdb.com/title/tt3498820/mediaviewer/rm3218348288/?ref_=tt_ov_i',
    rating: 74,
    video:
        'https://www.imdb.com/video/vi174044441/?playlistId=tt3498820&ref_=tt_pr_ov_vi',
    about:
        "Political involvement in the Avengers' affairs causes a rift between Captain America and Iron Man.",
    isHollywood: true,
    isWorldwide: true,
    isNollywood: false,
  ),
  Movie(
    id: 'm28',
    year: [
      'c7',
    ],
    title: 'Blade Runner 2049',
    genre: Genre.action, // Genre.adventure,
    duration: 147,
    restriction: Restriction.Guidance,
    imageUrl:
        'https://www.imdb.com/title/tt1856101/mediaviewer/rm2677875712/?ref_=tt_ov_i',
    rating: 74,
    video:
        'https://www.imdb.com/video/vi3362371865/?playlistId=tt1856101&ref_=tt_ov_vi',
    about:
        "Young Blade Runner K's discovery of a long-buried secret leads him to track down former Blade Runner Rick Deckard, who's been missing for thirty years.",
    isHollywood: true,
    isWorldwide: true,
    isNollywood: false,
  ),
  Movie(
    id: 'm29',
    year: [
      'c7',
    ],
    title: 'Lady Bird',
    genre: Genre.drama, // Genre.adventure,
    duration: 94,
    restriction: Restriction.Guidance,
    imageUrl:
        'https://www.imdb.com/title/tt4925292/mediaviewer/rm98587392/?ref_=tt_ov_i',
    rating: 74,
    video:
        'https://www.imdb.com/video/vi317437977/?playlistId=tt4925292&ref_=tt_ov_vi',
    about:
        "In 2002, an artistically inclined 17-year-old girl comes of age in Sacramento, California.",
    isHollywood: true,
    isWorldwide: true,
    isNollywood: false,
  ),
  Movie(
    id: 'm30',
    year: [
      'c8',
    ],
    title: 'Black Panther',
    genre: Genre.action, // Genre.adventure,
    duration: 124,
    restriction: Restriction.Guidance,
    imageUrl:
        'https://www.imdb.com/title/tt1825683/mediaviewer/rm172972800/?ref_=tt_ov_i',
    rating: 74,
    video:
        'https://www.imdb.com/video/vi2320939289/?playlistId=tt1825683&ref_=tt_ov_vi',
    about:
        "T'Challa, heir to the hidden but advanced kingdom of Wakanda, must step forward to lead his people into a new future and must confront a challenger from his country's past.",
    isHollywood: true,
    isWorldwide: true,
    isNollywood: false,
  ),
  Movie(
    id: 'm31',
    year: [
      'c8',
    ],
    title: 'Spider-Man: Into the Spider-Verse',
    genre: Genre.action, // Genre.adventure,
    duration: 124,
    restriction: Restriction.Guidance,
    imageUrl:
        'https://www.imdb.com/title/tt4633694/mediaviewer/rm173371392/?ref_=tt_ov_i',
    rating: 74,
    video:
        'https://www.imdb.com/video/vi1489877529/?playlistId=tt4633694&ref_=tt_ov_vi',
    about:
        "Teen Miles Morales becomes the Spider-Man of his universe and must join with five spider-powered individuals from other dimensions to stop a threat for all realities.",
    isHollywood: true,
    isWorldwide: true,
    isNollywood: false,
  ),
  Movie(
    id: 'm32',
    year: [
      'c9',
    ],
    title: 'John Wick: Chapter 3 - Parabellum',
    genre: Genre.drama, // Genre.adventure,
    duration: 130,
    restriction: Restriction.NC18,
    imageUrl:
        'https://www.imdb.com/title/tt6146586/mediaviewer/rm2374853376/?ref_=tt_ov_i',
    rating: 74,
    video:
        'https://www.imdb.com/video/vi3203841305/?playlistId=tt6146586&ref_=tt_ov_vi',
    about:
        "John Wick is on the run after killing a member of the international assassins' guild, and with a fourteen million price tag on his head, he is the target of hit men and women everywhere.",
    isHollywood: true,
    isWorldwide: true,
    isNollywood: false,
  ),
  Movie(
    id: 'm33',
    year: [
      'c9',
    ],
    title: 'Knives Out',
    genre: Genre.drama, // Genre.adventure,
    duration: 130,
    restriction: Restriction.ParentalGuidance13,
    imageUrl:
        'https://www.imdb.com/title/tt8946378/mediaviewer/rm2569376769/?ref_=tt_ov_i',
    rating: 74,
    video:
        'https://www.imdb.com/video/vi2464857881/?playlistId=tt8946378&ref_=tt_ov_vi',
    about:
        "A detective investigates the death of the patriarch of an eccentric, combative family.",
    isHollywood: true,
    isWorldwide: true,
    isNollywood: false,
  ),
  Movie(
    id: 'm34',
    year: [
      'c9',
    ],
    title: 'Avengers: Endgame',
    genre: Genre.action, // Genre.adventure,
    duration: 181,
    restriction: Restriction.ParentalGuidance13,
    imageUrl:
        'https://www.imdb.com/title/tt4154796/mediaviewer/rm2775147008/?ref_=tt_ov_i',
    rating: 74,
    video:
        'https://www.imdb.com/video/vi2163260441/?playlistId=tt4154796&ref_=tt_ov_vi',
    about:
        "After the devastating events of Avengers: Infinity War (2018), the universe is in ruins. With the help of remaining allies, the Avengers assemble once more in order to reverse Thanos' actions and restore balance to the universe.",
    isHollywood: true,
    isWorldwide: true,
    isNollywood: false,
  ),
];
