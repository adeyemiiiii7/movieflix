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
        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSR_bREX_YutIFnr35k2KCb4n40xxS68L_4IQ&usqp=CAU',
    rating: 88,
    video: '',
    about:
        'A thief who steals corporate secrets through the use of  dream-sharing technology is given the inverse task of planting an idea into the mind of a C.E.O. but his tragic past may doom the project and his team to disaster.',
    isHollywood: true,
    isWorldwide: true,
    isNollywood: false, watch: '',
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
        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTslBxtRaEOoy36AJpBCxhko-39EyG81IVnjA&usqp=CAU',
    video: '',
    rating: 98,
    about:
        "The toys are mistakenly delivered to a day-care center instead of the attic right before Andy leaves for college, and it's up to Woody to convince the other toys that they weren't abandoned and to return home.",
    isHollywood: true,
    isWorldwide: true,
    isNollywood: false, watch: 'Disney Plus',
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
        'https://thescriptlab.com/wp-content/uploads/scripts/1123-poster-600x900-1.jpg',
    rating: 78,
    video: '',
    about:
        "As Harvard student Mark Zuckerberg creates the social networking site that would become known as Facebook, he is sued by the twins who claimed he stole their idea and by the co-founder who was later squeezed out of the business.",
    isHollywood: true,
    isWorldwide: true,
    isNollywood: false, watch: '',
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
        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRRL-k78Tpm1jzcvVQLSCBQ8mm__l4vwj_DKQ&usqp=CAU',
    rating: 81,
    video: '',
    about:
        "A hapless young Viking who aspires to hunt dragons becomes the unlikely friend of a young dragon himself, and learns there may be more to the creatures than he assumed.",
    isHollywood: true,
    isWorldwide: true,
    isNollywood: false, watch: '',
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
        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTQ9LzVAdcGLwEXVVr9W-GerHnVHsMh2FYLIA&usqp=CAU',
    rating: 81,
    video: '',
    about:
        "Dave Lizewski is an unnoticed high school student and comic book fan who one day decides to become a superhero, even though he has no powers, training or meaningful reason to do so.",
    isHollywood: true,
    isWorldwide: true,
    isNollywood: false, watch: '',
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
    isNollywood: false, watch: '',
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
    imageUrl:
        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTgJ0PtGvgaXRnEblBx3n-7ekJkBrnL5oIm4GP5iSock342w-KXBxkM8Dy8uzNv310D5do&usqp=CAU',
    rating: 81,
    video:
        'https://www.imdb.com/video/vi4064281/?playlistId=tt1130884&ref_=tt_ov_vi',
    about:
        "Teddy Daniels and Chuck Aule, two US marshals, are sent to an asylum on a remote island in order to investigate the disappearance of a patient, where Teddy uncovers a shocking truth about the place.",
    isHollywood: true,
    isWorldwide: true,
    isNollywood: false, watch: 'Netfilx',
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
        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQzicanOk7lda2HRqgiSR7JVBWb34rhijB7OQ&usqp=CAU',
    rating: 81,
    video:
        'https://www.imdb.com/video/vi612735001/?playlistId=tt0478304&ref_=tt_ov_vi',
    about:
        "The story of a family in Waco, Texas in 1956. The eldest son witnesses the loss of innocence and struggles with his parents' conflicting teachings.",
    isHollywood: true,
    isWorldwide: true,
    isNollywood: false, watch: 'Amazon Prime Videos',
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
        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTejnPtcJ9JN7Vy-1NJapZk1pTiWwwYNV55Eg&usqp=CAU',
    rating: 83,
    video:
        'https://www.imdb.com/video/vi2758057497/?playlistId=tt1832382&ref_=tt_ov_vi',
    about:
        "A married couple are faced with a difficult decision - to improve the life of their child by moving to another country or to stay in Iran and look after a deteriorating parent who has Alzheimer's disease.",
    isHollywood: false,
    isWorldwide: true,
    isNollywood: false, watch: 'Amazon Prime Videos ',
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
        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT13NDajgsSvsVbeGvUJ9ACY5m1T1Z0LmGI-g&usqp=CAU',
    rating: 67,
    video:
        'https://www.imdb.com/video/vi2758057497/?playlistId=tt1832382&ref_=tt_ov_vi',
    about:
        "In a future where people stop aging at 25, but are engineered to live only one more year, having the means to buy your way out of the situation is a shot at immortal youth. Here, Will Salas finds himself accused of murder and on the run with a hostage - a connection that becomes an important part of the way against the system.",
    isHollywood: true,
    isWorldwide: true,
    isNollywood: false, watch: 'Netflix',
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
    imageUrl:
        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTXCCypRWcnE_5v3Wc9RMKXzgHmUdrsySf60A&usqp=CAU',
    rating: 67,
    video:
        'https://www.imdb.com/video/vi1639488793/?playlistId=tt1302011&ref_=tt_ov_vi',
    about:
        "Po and his friends fight to stop a peacock villain from conquering China with a deadly new weapon, but first the Dragon Warrior must come to terms with his past.",
    isHollywood: true,
    isWorldwide: true,
    isNollywood: false,
    watch:
        'Avalibale for rent on Amazon Video, Google Play Movies, YouTube, Rakuten TV, Apple TV, Sky Store online',
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
        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTHmokM8dySSuaOKP7GP7cWIOwClxVMW5bsOw&usqp=CAU',
    rating: 67,
    video: 'https://www.imdb.com/video/vi3394673689/?playlistId=tt1340800',
    about:
        "In the bleak days of the Cold War, espionage veteran George Smiley is forced from semi-retirement to uncover a Soviet Agent within MI6.",
    isHollywood: true,
    isWorldwide: true,
    isNollywood: false, watch: 'Netfilx',
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
        'https://shop.soggettivagallery.com/wp-content/uploads/django-unchained-aaron-lea.png',
    rating: 84,
    video: 'https://www.imdb.com/video/vi2291574553/?playlistId=tt1853728',
    about:
        "With the help of a German bounty-hunter, a freed slave sets out to rescue his wife from a brutal plantation owner in Mississippi.",
    isHollywood: true,
    isWorldwide: true,
    isNollywood: false,
    watch:
        ' buy "Django Unchained" on Apple TV, Amazon Video, Google Play Movies, YouTube, Vudu, Microsoft Store, Redbox, DIRECTV, AMC on Demand as download or rent it on Apple TV, Amazon Video, Google Play Movies, YouTube, Vudu, Microsoft Store, Redbox, DIRECTV, Spectrum On Demand online.',
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
        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQbYqm0HjOtZdm62f7_atHDa7FQucoFMrA-xA&usqp=CAU',
    rating: 84,
    video:
        'https://www.imdb.com/video/vi144884505/?playlistId=tt1345836&ref_=tt_ov_vi',
    about:
        "Eight years after the Joker's reign of chaos, Batman is coerced out of exile with the assistance of the mysterious Selina Kyle in order to defend Gotham City from the vicious guerrilla terrorist Bane.",
    isHollywood: true,
    isWorldwide: true,
    isNollywood: false,
    watch:
        'Avalibale to rent on Amazon Instant Video, iTunes, Google Play, and Vudu.',
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
    watch:
        'Avalibale to rent on Amazon Instant Video, iTunes, Google Play, and Vudu.',
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
    watch:
        'Avalibale to rent on Amazon Instant Video, iTunes, Google Play, and Vudu.',
  ),
  Movie(
    id: 'm17',
    year: [
      'c4',
    ],
    title: 'Her',
    genre: Genre.drama, // Genre.adventure,
    duration: 125,
    restriction: Restriction.Guidance,
    imageUrl:
        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRWV222zbsWvn4TI2JjMEWs2LY1HfUOCSjaig&usqp=CAU',
    rating: 80,
    video:
        'https://www.imdb.com/video/vi4112492569/?playlistId=tt1798709&ref_=tt_ov_vi',
    about:
        "A lonely writer develops an unlikely relationship with his newly purchased operating system that's designed to meet his every need.",
    isHollywood: true,
    isWorldwide: true,
    isNollywood: false,
    watch:
        'Avalibale to rent on Amazon Instant Video, iTunes, Google Play, and Vudu.',
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
    imageUrl: 'https://assets2.ignimgs.com/2015/02/06/birdmandvdjpg-ac4b4a.jpg',
    rating: 77,
    video:
        'https://www.imdb.com/video/vi1378069529/?playlistId=tt2562232&ref_=tt_ov_vi',
    about:
        "A washed-up superhero actor attempts to revive his fading career by writing, directing, and starring in a Broadway production.",
    isHollywood: true,
    isWorldwide: true,
    isNollywood: false,
    watch:
        'Avalibale to rent on Amazon Instant Video, iTunes, Google Play, and Vudu.',
  ),
  Movie(
    id: 'm19',
    year: [
      'c5',
    ],
    title: 'Leviathan',
    genre: Genre.drama, // Genre.adventure,
    duration: 140,
    restriction: Restriction.Guidance,
    imageUrl:
        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQLl5qvB8MNKy-YAKU_NwHccJ4scj-dtouIbQ&usqp=CAU',
    rating: 92,
    video:
        'https://www.imdb.com/video/vi869838617/?playlistId=tt2802154&ref_=tt_ov_vi',
    about:
        "In a Russian coastal town, Kolya is forced to fight the corrupt mayor when he is told that his house will be demolished. He recruits a lawyer friend to help, but the man's arrival brings further misfortune for Kolya and his family..",
    isHollywood: true,
    isWorldwide: true,
    isNollywood: false,
    watch:
        'Avalibale to rent on Amazon Instant Video, iTunes, Google Play, and Vudu.',
  ),
  Movie(
    id: 'm20',
    year: [
      'c5',
    ],
    title: 'The Grand Budapest Hotel',
    genre: Genre.comedy, // Genre.adventure,
    duration: 109,
    restriction: Restriction.Guidance,
    imageUrl:
        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTm8-zytPVRix3bODDdKo-3iBTzfqOXske-aA&usqp=CAU',
    rating: 81,
    video:
        'https://www.imdb.com/video/vi1157933593/?playlistId=tt2278388&ref_=tt_ov_vi',
    about:
        "A writer encounters the owner of an aging high-class hotel, who tells him of his early years serving as a lobby boy in the hotel's glorious years under an exceptional concierge.",
    isHollywood: true,
    isWorldwide: true,
    isNollywood: false,
    watch:
        'Avalibale to rent on Amazon Instant Video, iTunes, Google Play, and Vudu.',
  ),
  Movie(
    id: 'm21',
    year: [
      'c5',
    ],
    title: 'Boyhood',
    genre: Genre.drama, // Genre.adventure,
    duration: 165,
    restriction: Restriction.Guidance,
    imageUrl:
        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQY6jZD11Pm5lLeBmUI-3IcU1zgTAfuHwWiv8_PkQgmqvMjOYEAPO0XGONhdjaVPWaNZX4&usqp=CAU',
    rating: 81,
    video:
        'https://www.imdb.com/video/vi1306504217/?playlistId=tt1065073&ref_=tt_ov_vi',
    about: "The life of Mason, from early childhood to his arrival at college.",
    isHollywood: true,
    isWorldwide: true,
    isNollywood: false, watch: 'Apple Tv Or Amazon prime Video',
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
        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTk1bHh4ZI6Sqc4EB1XDudaNH7_vf-lFvkn8Q&usqp=CAU',
    rating: 74,
    video:
        'https://www.imdb.com/video/vi1306504217/?playlistId=tt1065073&ref_=tt_ov_vi',
    about:
        "Ethan and his team take on their most impossible mission yet when they have to eradicate an international rogue organization as highly skilled as they are and committed to destroying the IMF.",
    isHollywood: true,
    isWorldwide: true,
    isNollywood: false,
    watch:
        'Avalibale to rent on Amazon Instant Video, iTunes, Google Play, and Vudu.',
  ),
  Movie(
    id: 'm23',
    year: [
      'c5',
    ],
    title: 'Inside Out',
    //   genre: Genre.animation, // Genre.adventure,
    duration: 95,
    restriction: Restriction.ParentalGuidance13,
    imageUrl:
        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRgViwN8oJck8QQTvIQeG7TOVZZqwODyk3P1A&usqp=CAU',
    rating: 81,
    video:
        'https://www.imdb.com/video/vi203730969/?playlistId=tt2096673&ref_=tt_ov_vi',
    about:
        "After young Riley is uprooted from her Midwest life and moved to San Francisco, her emotions - Joy, Fear, Anger, Disgust and Sadness - conflict on how best to navigate a new city, house, and school.",
    isHollywood: true,
    isWorldwide: true,
    isNollywood: false, watch: 'Disney Plus',
    isadventure: true,
    isaction: false,
    iscomedy: false,
    isanimation: false,
    ishorror: false,
    isromance: false,
    isthriller: false,
    isfantasy: false,
    isbiography: false,
    isdrama: false,
  ),
  Movie(
    id: 'm24',
    year: [
      'c5',
    ],
    title: 'Kingsman Secret Service',
    //  genre: Genre.action, // Genre.adventure,
    duration: 77,
    restriction: Restriction.Guidance,
    imageUrl:
        'https://m.media-amazon.com/images/M/MV5BYTM3ZTllNzItNTNmOS00NzJiLTg1MWMtMjMxNDc0NmJhODU5XkEyXkFqcGdeQXVyODE5NzE3OTE@._V1_UX140_CR0,0,140,209_AL_.jpg',
    rating: 77,
    video:
        'https://www.imdb.com/video/vi1901244185/?playlistId=tt2802144&ref_=tt_ov_vi',
    about:
        "Gary 'Eggsy' Unwin faces several challenges when he gets recruited as a secret agent in a secret spy organisation in order to look for Richmond Valentine, an eco-terrorist.",
    isHollywood: true,
    isWorldwide: true,
    isNollywood: false,
    watch:
        'Avalibale to rent on Amazon Instant Video, iTunes, Google Play, and Vudu.',
    isadventure: false,
    isaction: true,
    iscomedy: false,
    isanimation: false,
    ishorror: false,
    isromance: false,
    isthriller: false,
    isfantasy: false,
    isbiography: false,
    isdrama: false,
  ),
  Movie(
    id: 'm25',
    year: [
      'c5',
    ],
    title: 'Avengers: Age of Ultron',
    //genre: Genre.action, // Genre.adventure,
    duration: 73,
    restriction: Restriction.ParentalGuidance13,
    imageUrl:
        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTzFYs6PrepGobemI3KusHLnn3J2LJ4vQiISw&usqp=CAU',
    rating: 77,
    video:
        'https://www.imdb.com/video/vi2821566745/?playlistId=tt2395427&ref_=tt_ov_vi',
    about:
        "When Tony Stark and Bruce Banner try to jump-start a dormant peacekeeping program called Ultron, things go horribly wrong and it's up to Earth's mightiest heroes to stop the villainous Ultron from enacting his terrible plan.",
    isHollywood: true,
    isWorldwide: true,
    isNollywood: false, watch: 'Disney Plus',
    isadventure: false,
    isaction: true,
    iscomedy: false,
    isanimation: false,
    ishorror: false,
    isromance: false,
    isthriller: false,
    isfantasy: false,
    isbiography: false,
    isdrama: false,
  ),
  Movie(
    id: 'm26',
    year: [
      'c6',
    ],
    title: 'Moonlight',
    // genre: Genre.drama, // Genre.adventure,
    duration: 125,
    restriction: Restriction.NC18,
    imageUrl:
        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTrq-XH3tGb45jPkhBvm7LN13hd-8v6UNRc6g&usqp=CAU',
    rating: 74,
    video:
        'https://www.imdb.com/video/vi2821566745/?playlistId=tt2395427&ref_=tt_ov_vi',
    about:
        "A young African-American man grapples with his identity and sexuality while experiencing the everyday struggles of childhood, adolescence, and burgeoning adulthood.",
    isHollywood: true,
    isWorldwide: true,
    isNollywood: false,
    watch:
        'Avalibale to rent on Amazon Instant Video, iTunes, Google Play, and Vudu.',
    isadventure: false,
    isaction: true,
    iscomedy: false,
    isanimation: false,
    ishorror: false,
    isromance: false,
    isthriller: false,
    isfantasy: false,
    isbiography: false,
    isdrama: true,
  ),
  Movie(
    id: 'm27',
    year: [
      'c7',
    ],
    title: 'Captain America: Civil War',
    // genre: Genre.action, // Genre.adventure,
    duration: 147,
    restriction: Restriction.ParentalGuidance13,
    imageUrl:
        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSkBC8UA0muQn7sP6KRglbo-za0h8Rg7nzNaA&usqp=CAU',
    rating: 74,
    video:
        'https://www.imdb.com/video/vi174044441/?playlistId=tt3498820&ref_=tt_pr_ov_vi',
    about:
        "Political involvement in the Avengers' affairs causes a rift between Captain America and Iron Man.",
    isHollywood: true,
    isWorldwide: true,
    isNollywood: false, watch: 'Disney Plus',
    isadventure: false,
    isaction: true,
    iscomedy: false,
    isanimation: false,
    ishorror: false,
    isromance: false,
    isthriller: false,
    isfantasy: false,
    isbiography: false,
    isdrama: false,
  ),
  Movie(
    id: 'm28',
    year: [
      'c8',
    ],
    title: 'Blade Runner 2049',
    //genre: Genre.action, // Genre.adventure,
    duration: 147,
    restriction: Restriction.Guidance,
    imageUrl:
        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS35QzSRD5IZ6t2CWaRIYBf1xD1WkPKza1oAQ&usqp=CAU',
    rating: 74,
    video:
        'https://www.imdb.com/video/vi3362371865/?playlistId=tt1856101&ref_=tt_ov_vi',
    about:
        "Young Blade Runner K's discovery of a long-buried secret leads him to track down former Blade Runner Rick Deckard, who's been missing for thirty years.",
    isHollywood: true,
    isWorldwide: true,
    isNollywood: false,
    watch:
        'Avalibale to rent on Amazon Instant Video, iTunes, Google Play, and Vudu.',
    isadventure: false,
    isaction: true,
    iscomedy: false,
    isanimation: false,
    ishorror: false,
    isromance: false,
    isthriller: false,
    isfantasy: false,
    isbiography: false,
    isdrama: false,
  ),
  Movie(
    id: 'm29',
    year: [
      'c8',
    ],
    title: 'Lady Bird',
    genre: Genre.drama, // Genre.adventure,
    duration: 94,
    restriction: Restriction.Guidance,
    imageUrl:
        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRXLPaAjA3v6LA6okORY8mUcdsAqn_UiXhULQ&usqp=CAU',
    rating: 74,
    video:
        'https://www.imdb.com/video/vi317437977/?playlistId=tt4925292&ref_=tt_ov_vi',
    about:
        "In 2002, an artistically inclined 17-year-old girl comes of age in Sacramento, California.",
    isHollywood: true,
    isWorldwide: true,
    isNollywood: false,
    watch:
        'Avalibale to rent on Amazon Instant Video, iTunes, Google Play, and Vudu.',
    isadventure: false,
    isaction: false,
    iscomedy: false,
    isanimation: false,
    ishorror: false,
    isromance: false,
    isthriller: false,
    isfantasy: false,
    isbiography: false,
    isdrama: false,
  ),
  Movie(
    id: 'm30',
    year: [
      'c8',
    ],
    title: 'Black Panther',
    // Genre.adventure,
    duration: 124,
    restriction: Restriction.Guidance,
    imageUrl:
        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTKxUUDUi7dLDIlRJN1bhFdnrrIX4XV-0iz6noRGuxSUhh6RdQwNWJ1WBr_iyUaB0XN_C4&usqp=CAU',
    rating: 74,
    video:
        'https://www.imdb.com/video/vi2320939289/?playlistId=tt1825683&ref_=tt_ov_vi',
    about:
        "T'Challa, heir to the hidden but advanced kingdom of Wakanda, must step forward to lead his people into a new future and must confront a challenger from his country's past.",
    isHollywood: true,
    isWorldwide: true,
    isNollywood: false, watch: 'Disney Plus',
    isadventure: false,
    isaction: true,
    iscomedy: false,
    isanimation: false,
    ishorror: false,
    isromance: false,
    isthriller: false,
    isfantasy: false,
    isbiography: false,
    isdrama: false,
  ),
  Movie(
    id: 'm31',
    year: [
      'c8',
    ],
    title: 'Spider-Man: Into the Spider-Verse',
    // Genre.adventure,
    duration: 124,
    restriction: Restriction.Guidance,
    imageUrl:
        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSfmcEbdaoEbuoUSOaXH5LEOIm0FNxX1Bob8jcbSK3ALFAB9bc3CS89JRFUcSzUA3DIG2U&usqp=CAU',
    rating: 74,
    video:
        'https://www.imdb.com/video/vi1489877529/?playlistId=tt4633694&ref_=tt_ov_vi',
    about:
        "Teen Miles Morales becomes the Spider-Man of his universe and must join with five spider-powered individuals from other dimensions to stop a threat for all realities.",
    isHollywood: true,
    isWorldwide: true,
    isNollywood: false, watch: 'Disney Plus And Netflix',
    isadventure: false,
    isaction: true,
    iscomedy: false,
    isanimation: true,
    ishorror: false,
    isromance: false,
    isthriller: false,
    isfantasy: false,
    isbiography: false,
    isdrama: false,
  ),
  Movie(
    id: 'm32',
    year: [
      'c10',
    ],
    title: 'John Wick: Chapter 3 - Parabellum',
    duration: 130,
    restriction: Restriction.NC18,
    imageUrl:
        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR1KsPNDZBfR7mmKx6R8m46LZ1e-iKOyYIiWw&usqp=CAU',
    rating: 74,
    video:
        'https://www.imdb.com/video/vi3203841305/?playlistId=tt6146586&ref_=tt_ov_vi',
    about:
        "John Wick is on the run after killing a member of the international assassins' guild, and with a fourteen million price tag on his head, he is the target of hit men and women everywhere.",
    isHollywood: true,
    isWorldwide: true,
    isNollywood: false,
    watch:
        'Avalibale to rent on Amazon Instant Video, iTunes, Google Play, and Vudu.',
    isadventure: false,
    isaction: true,
    iscomedy: false,
    isanimation: false,
    ishorror: false,
    isromance: false,
    isthriller: false,
    isfantasy: false,
    isbiography: false,
    isdrama: false,
  ),
  Movie(
    id: 'm33',
    year: [
      'c10',
    ],
    title: 'Knives Out',
    duration: 130,
    restriction: Restriction.ParentalGuidance13,
    imageUrl:
        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSR2oGKkZATcwOkfh8z_oEyQvmAK0aKvnVRkg&usqp=CAU',
    rating: 74,
    video:
        'https://www.imdb.com/video/vi2464857881/?playlistId=tt8946378&ref_=tt_ov_vi',
    about:
        "A detective investigates the death of the patriarch of an eccentric, combative family.",
    isHollywood: true,
    isWorldwide: true,
    isNollywood: false,
    watch: 'Netflix',
    isadventure: false,
    isaction: true,
    iscomedy: false,
    isanimation: false,
    ishorror: false,
    isromance: false,
    isthriller: true,
    isfantasy: false,
    isbiography: false,
    isdrama: true,
  ),
  Movie(
    id: 'm34',
    year: [
      'c10',
    ],
    title: 'Avengers: Endgame',
    duration: 181,
    restriction: Restriction.ParentalGuidance13,
    imageUrl:
        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ9uWxV-TRhgbN-k63XYcxLBRfl3sCI1LHU-w&usqp=CAU',
    rating: 74,
    video:
        'https://www.imdb.com/video/vi2163260441/?playlistId=tt4154796&ref_=tt_ov_vi',
    about:
        "After the devastating events of Avengers: Infinity War (2018), the universe is in ruins. With the help of remaining allies, the Avengers assemble once more in order to reverse Thanos' actions and restore balance to the universe.",
    isHollywood: true,
    isWorldwide: true,
    isNollywood: false,
    watch: 'Disney plus',
    isadventure: true,
    isaction: true,
    iscomedy: false,
    isanimation: false,
    ishorror: false,
    isromance: false,
    isthriller: false,
    isfantasy: false,
    isbiography: false,
    isdrama: false,
  ),
  Movie(
    id: 'm35',
    year: [
      'c11',
    ],
    title: 'Extraction',
    duration: 116,
    restriction: Restriction.Guidance,
    imageUrl:
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQcZXVGDcNDb5jYczad4FFt5yPaNtDcsaYybg&usqp=CAU",
    rating: 68,
    video: 'https://www.youtube.com/watch?v=L6P3nI6VnlY',
    about:
        "Tyler Rake, a fearless black market mercenary, embarks on the most deadly extraction of his career when he's enlisted to rescue the kidnapped son of an imprisoned international crime lord.",
    isHollywood: true,
    isWorldwide: true,
    isNollywood: false,
    watch: 'Netflix',
    isadventure: false,
    isaction: true,
    iscomedy: false,
    isanimation: false,
    ishorror: false,
    isromance: false,
    isthriller: false,
    isfantasy: false,
    isbiography: false,
    isdrama: false,
  ),
  Movie(
    id: 'm36',
    year: [
      'c11',
    ],
    title: 'Tenet', // Genre.adventure,
    duration: 150,
    restriction: Restriction.Guidance,
    imageUrl:
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTjtVFf1lrV54IG85WvSQmhSFePbGRcw4ewWw&usqp=CAU",
    rating: 73,
    video: 'https://www.youtube.com/watch?v=L6P3nI6VnlY',
    about:
        "Armed with only one word, Tenet, and fighting for the survival of the entire world, a Protagonist journeys through a twilight world of international espionage on a mission that will unfold in something beyond real time.",
    isHollywood: true,
    isWorldwide: true,
    isNollywood: false, watch: 'Amazon prime Video',
    isadventure: false,
    isaction: true,
    iscomedy: false,
    isanimation: false,
    ishorror: false,
    isromance: false,
    isthriller: true,
    isfantasy: false,
    isbiography: false,
    isdrama: false,
  ),
  Movie(
    id: 'm37',
    year: [
      'c11',
    ],
    title: 'Enola Homes', // Genre.adventure,
    duration: 123,
    restriction: Restriction.ParentalGuidance13,
    imageUrl:
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSi4xV2L3BCro_IUJp452S96siZk3e-JPs4FQ&usqp=CAU",
    rating: 73,
    video: 'https://www.youtube.com/watch?v=1d0Zf9sXlHk',
    about:
        "When Enola Holmes (Sherlock's teen sister) discovers her mother is missing, she endeavours to find her, becoming a super-sleuth in her own right as she outwits her famous brother and unravels a dangerous conspiracy.",
    isHollywood: true,
    isWorldwide: true,
    isNollywood: false,
    watch: 'Netflix',
    isadventure: false,
    isaction: true,
    iscomedy: false,
    isanimation: false,
    ishorror: false,
    isromance: false,
    isthriller: false,
    isfantasy: false,
    isbiography: false,
    isdrama: false,
  ),
];
