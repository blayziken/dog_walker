class DogWalker {
  String name;
  String location;
  String rate;
  String image;

  DogWalker({
    this.name = "",
    this.rate = "",
    this.location = "",
    this.image = "",
  });
}

List<DogWalker> walkers = [
  DogWalker(
    name: "Mason York",
    image: "assets/images/Frame3575.png",
    location: "7 km from you",
    rate: "3/h",
  ),
  DogWalker(
    name: "Mark Greene",
    image: "assets/images/PHOTO4.png",
    location: "14 km from you",
    rate: "3/h",
  ),
  DogWalker(
    name: "Tolu Femi",
    image: "assets/images/IMAGE77.png",
    location: "22 km from you",
    rate: "5/h",
  ),
  DogWalker(
    name: "Greene York",
    image: "assets/images/6-mega-y.png",
    location: "10 km from you",
    rate: "4/h",
  ),
];
