class GenresItem {
  String name;

  GenresItem({required this.name});

  static List<GenresItem> genresItem = [
    GenresItem(name: 'Action'),
    GenresItem(name: 'Sci-Fi'),
    GenresItem(name: 'Adventure'),
    GenresItem(name: 'Fantasy'),
    GenresItem(name: 'Horror'),
  ];
}