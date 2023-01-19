class HealthCenter {
  final int id, number;
  final String title, subTitle, description, image;

  HealthCenter(
      {required this.id,
        required this.number,
        required this.title,
        required this.subTitle,
        required this.description,
        required this.image});
}

// list of products
List<HealthCenter> healthCenter = [
  HealthCenter(
      id: 1,
      number: 0932692786,
      title: "مركز السلام الصحي",
      subTitle: " محطة بغداد - جدة",
      image: "assets/images/logo.png",
      description:
      ""
  ),
  HealthCenter(
      id: 2,
      number: 0932692786,
      title: "مركز السلام الصحي",
      subTitle: " محطة بغداد - جدة",
      image: "assets/images/logo.png",
      description:
      ""
  ),
  HealthCenter(
      id: 3,
      number: 0932692786,
      title: "مركز السلام الصحي",
      subTitle: " محطة بغداد - جدة",
      image: "assets/images/logo.png",
      description:
      ""
  ),
  HealthCenter(
      id: 4,
      number: 0932692786,
      title: "مركز السلام الصحي",
      subTitle: " محطة بغداد - جدة",
      image: "assets/images/logo.png",
      description:
      ""
  ),
];