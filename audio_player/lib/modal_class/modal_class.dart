import 'dart:io';
import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:flutter/material.dart';

File? file;
String? path;

String? index;
int? argsVal;

AssetsAudioPlayer myAudioPlayer = AssetsAudioPlayer();

List audioPlay = [
  "assets/audio/Dil Meri Na Sune - Genius 320 Kbps.mp3",
  "assets/audio/New vs Old Bollywood Songs Mashup _ Raj Barman ft. Deepshikha _ Bollywood Songs Medley (320  kbps).mp3",
  "assets/audio/Hath Ma Chhe Whiskey (2017 Latest) Jignesh Kaviraj-(SpaceMaza.com).mp3",
  "assets/audio/Nawabzaade_ TERE NAAL NACHNA Song Feat. Athiya Shetty _ Badshah, Sunanda S _ Raghav Punit Dharmesh (320  kbps).mp3",
  "assets/audio/radha-rani-nandlal-chhanga-aapnidhun.mp3",
  "assets/audio/Sawarne Lage - Full Song _ Mitron _ Jackky & Kritika _ Nikhita Gandhi _ Tanishk Bagchi (320  kbps).mp3",
  "assets/audio/Tera Fitoor Lyrical - Genius _ Utkarsh Sharma, Ishita Chauhan _ Arijit Singh _ Himesh Reshammiya (320  kbps).mp3",
  "assets/audio/WhatsApp Audio 2021-07-19 at 9.39.45 AM.mpeg",
  "assets/audio/Rangtaari Loveyatri A Journey Of Love 2018 320.mp3",
  "assets/audio/Saami Saami Pushpa The Rise Part 01 2021 320.mp3"
];

List audioName = [
  "Dil Meri Na Sune",
  "New vs Old Bollywood \nSongs Mashup ",
  "Hath Ma Chhe Whiskey",
  "TERE NAAL NACHNA",
  "Radha-Rani-Lage",
  "Sawarne Lage",
  "Tera Fitoor",
  "Raabta",
  "Rangtaari",
  "Saami Saami",
];

List audioArtist = [
  "Atif Aslam",
  "Raj Barman ft. Deepshikha",
  "Jignesh Kaviraj",
  "Athiya Shetty & Badshah \n& Sunanda",
  "Nandlal Chhanga",
  "Tanishk Bagchi",
  "Arijit Singh & \nHimesh Reshammiya",
  "Shreya Ghosal & Arijit Singh",
  "Ayush Sharma & Warina Hussain",
  "Sunidhi Chauhan",
];


List audioNamePlay = [
  "Dil Meri Na Sune",
  "New vs Old Bollywood Songs Mashup ",
  "Hath Ma Chhe Whiskey",
  "TERE NAAL NACHNA",
  "Radha-Rani-Lage",
  "Sawarne Lage",
  "Tera Fitoor",
  "Raabta",
  "Rangtaari",
  "Saami Saami",
];

List audioArtistPlay = [
  "Atif Aslam",
  "Raj Barman ft. Deepshikha",
  "Jignesh Kaviraj",
  "Athiya Shetty & Badshah & Sunanda",
  "Nandlal Chhanga",
  "Tanishk Bagchi",
  "Arijit Singh & Himesh Reshammiya",
  "Shreya Ghosal & Arijit Singh",
  "Ayush Sharma & Warina Hussain",
  "Sunidhi Chauhan",
];

List audioImage = [
  "https://www.thestatesman.com/wp-content/uploads/2018/07/Genius-1.jpg",
  "https://cdn.britannica.com/03/151903-131-E310E9EC/Microphone-background-sound-waves-energy-Music.jpg",
  "https://i1.sndcdn.com/artworks-000238671700-iwprns-t500x500.jpg",
  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQU7qPeU1fuPogiO77haxHCxeAqGsgOL0MvrEavTQSmEHb04xggecobz2d9hO26MFYHl84&usqp=CAU",
  "https://sambdecdnems03.cdnsrv.jio.com/c.saavncdn.com/091/Radha-Rani-Gujarati-2019-20210805233324-500x500.jpg",
  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTakrmbd9KNb9-neNh4k-ZOBB3gqs344vbhnnwIunkvzk8jkABTllHk71d1qFeSN0Puy40&usqp=CAU",
  "https://i.scdn.co/image/ab67616d0000b273908fec17584651a31b73b97d",
  "https://www.pinkvilla.com/files/styles/fbimagesection/public/Deepika-Padukone-in-Raabtas-song-teaser-will-set-temperatures-soaring_0.jpg?itok=-93wBnzU",
  "https://i.scdn.co/image/ab67616d0000b273dffc940373527bb94e2f4a76",
  "https://st1.latestly.com/wp-content/uploads/2021/10/Saami-Saami.jpg",
];

List<Color> myColors = [
  Colors.indigo,
  Colors.blueAccent,
  Colors.blue,
  Colors.lightBlueAccent,
  Colors.lightGreen,
  Colors.amberAccent,
  Colors.deepOrangeAccent,
  Colors.redAccent,
  Colors.pink,
  Colors.pinkAccent,
];
