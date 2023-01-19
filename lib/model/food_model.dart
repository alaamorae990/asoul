class FoodModel {
  final int id;
  final String title, subTitle, description, image;

  FoodModel(
      {required this.id,

        required this.title,
        required this.subTitle,
        required this.description,
        required this.image});
}

// list of products
List<FoodModel> foodModel = [
  FoodModel(
      id: 1,

      title: "وجبة الإفطار",
      subTitle: " بيض مسلوق حيث تحتوي هذه الوجبة على 29.6 جم من الكربوهيدرات",
      image: "assets/images/e.jpg",
      description:
      ""
  ),
  FoodModel(
      id: 2,

      title: "وجبة الثانية ضمن المدرسة",
      subTitle: " صندويش جبنة حيث تحتوي على 29.6 جم من الكربوهيدرات  ",
      image: "assets/images/cheez.jpg",
      description:
      ""
  ),
  FoodModel(
      id: 3,

      title: "وجبة الغداء",
      subTitle: " محشي ملفوف حيث يحوي على 17.1 جم من الكربوهيدرات",
      image: "assets/images/mhushe.jpg",
      description:
      ""
  ),
  FoodModel(
      id: 4,

      title: "حلويات",
      subTitle: " سلطة فواكة حيث تحتوي على 15 جم من الكربوهيدرات",
      image: "assets/images/fruit.jpg",
      description:
      ""
  ),
  FoodModel(
      id: 5,

      title: "وجية خفيفة",
      subTitle: " بطاطا مسلوقة حيث تحتوي على 19.7 جم من الكربوهيدرات",
      image: "assets/images/batato.jpg",
      description:
      ""
  ),
  FoodModel(
      id: 6,

      title: "وجبة خفيفة",
      subTitle: "شوربة عدس حيث تحتوي 9.2 جم من الكبروهيدرات",
      image: "assets/images/shorba.jpg",
      description:
      ""
  ),
];