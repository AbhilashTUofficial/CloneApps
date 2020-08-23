class Calls {
  String name;
  String time;
  String imgUrl;
  bool callPlatform;

  Calls({this.name, this.time, this.imgUrl, this.callPlatform});
}

List<Calls> callsList = [
  Calls(
      name: "Mom",
      time: "August 11, 9:27 AM",
      imgUrl: "Assets/Images"
          "/img1.jpg",
      callPlatform: true),
  Calls(
      name: "Brother",
      time: "July 25, 8:02 AM",
      imgUrl: "Assets/Images"
          "/img2.jpg",
      callPlatform: false),
  Calls(
      name: "Friend1",
      time: "June 19, 5:11 AM",
      imgUrl: "Assets/Images"
          "/img3.jpg",
      callPlatform: true),
  Calls(
      name: "Teacher",
      time: "June 16, 2:20 AM",
      imgUrl: "Assets/Images"
          "/img4.jpg",
      callPlatform: false),
  Calls(
      name: "Girl Friend",
      time: "May 16, 10:00 AM",
      imgUrl: "Assets/Images"
          "/img5.jpg",
      callPlatform: false),
  Calls(
      name: "Friend2",
      time: "April 24, 1:36 AM",
      imgUrl: "Assets/Images"
          "/img6.jpg",
      callPlatform: true),
];
