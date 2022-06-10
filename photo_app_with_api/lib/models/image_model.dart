class ImageModel {
  String largeImageURL;

  ImageModel({
    required this.largeImageURL,
});

  factory ImageModel.fromJson(json){
    return ImageModel(largeImageURL: json["largeImageURL"]);
  }
}