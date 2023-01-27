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
      number: 0126408222,
      title: "مستشفى جامعه الملك عبد العزيز",
      subTitle: "",
      image: "assets/images/health-center.png",
      description:
      ""
  ),
  HealthCenter(
      id: 2,
      number: 0122327555,
      title: "مستشفى شرق جده العام",
      subTitle: "",
      image: "assets/images/health-center.png",
      description:
      ""
  ),
  HealthCenter(
      id: 3,
      number: 0126375555,
      title: "مستشفى الملك عبد العزيز",
      subTitle: "",
      image: "assets/images/health-center.png",
      description:
      ""
  ),

];