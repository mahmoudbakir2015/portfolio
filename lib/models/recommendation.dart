class Recommendation {
  final String name, image, source, text;
  Recommendation({
    required this.image,
    required this.name,
    required this.source,
    required this.text,
  });
}

List<Recommendation> recommendations = [
  Recommendation(
    image: 'assets/images/1.jpg',
    name: 'mahmoudbakir',
    source: 'mahmoudbakir2015@gmail.com',
    text: '''netsh int tcp set heuristics disabled
netsh int tcp set global autouninglevel=disabled
netsh int tcp set global rss=enabled
netsh int tcp show global''',
  ),
  Recommendation(
    image: 'assets/images/2.jpg',
    name: 'mohamed elsayed',
    source: 'mahmoudbakir2015@gmail.com',
    text: '''netsh int tcp set heuristics disabled
netsh int tcp set global autouninglevel=disabled
netsh int tcp set global rss=enabled
netsh int tcp show global''',
  ),
  Recommendation(
    image: 'assets/images/3.jpg',
    name: 'bekoo',
    source: 'mahmoudbakir2015@gmail.com',
    text: '''netsh int tcp set heuristics disabled
netsh int tcp set global autouninglevel=disabled
netsh int tcp set global rss=enabled
netsh int tcp show global''',
  ),
  Recommendation(
    image: 'assets/images/4.jpg',
    name: 'coco',
    source: 'mahmoudbakir2015@gmail.com',
    text: '''netsh int tcp set heuristics disabled
netsh int tcp set global autouninglevel=disabled
netsh int tcp set global rss=enabled
netsh int tcp show global''',
  ),
];
