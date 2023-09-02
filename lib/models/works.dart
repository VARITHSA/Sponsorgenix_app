class Works {
  int id;
  String type;
  String image;
  Works({
    required this.id,
    required this.type,
    required this.image,
  });

  factory Works.fromJson(Map<String, dynamic> json) {
    return Works(
      id: json['id'],
      type: json['type'],
      image: json['image'],
    );
  }
}
