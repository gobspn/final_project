class musicItem {
  final int id;
  final String name;
  final String artistname;
  final String image;
  final String detail;


 musicItem({
    required this.id,
    required this.name,
    required this.artistname,
    required this.image,
    required this.detail,
  });

  @override
  String toString() {
    return "$name";
  }
}