class ActorsModel {
  final String images;
  final String name;
  final String discription;

  ActorsModel({this.images, this.name, this.discription});
}

List<ActorsModel> actors = [
  ActorsModel(
    images: "assets/actors/actor1.jpg",
    name: "Millie Bobby Brown",
    discription:
        "Millie Bobby Brown is an English actress and producer. At the age of twelve,\n she gained notability for her role as Eleven in the first season of Netflix \nscience fiction series Stranger Things, which was renewed \nfor three seasons.",
  ),
  ActorsModel(
    images: "assets/actors/actor2.jpg",
    name: "Finn Wolfhard",
    discription:
        "Finn Wolfhard is a Canadian actor, musician, screenwriter, and director. \nHis acting roles include Mike Wheeler in the Netflix series Stranger Things,\n for which he has won Screen Actors Guild Award for Outstanding Performance by an Ensemble in a Drama Series \nout of three nominations.",
  ),
  ActorsModel(
    images: "assets/actors/actor3.jpg",
    name: "Noah Schnapp",
    discription:
        "Noah Cameron Schnapp is an American actor. He played Will Byers in the Netflix \nscience fiction horror web television series Stranger Things, \nfor which he won a Screen Actors Guild Award for Outstanding Performance \nby an Ensemble in a Drama Series.",
  ),
  ActorsModel(
    images: "assets/actors/actor4.jpg",
    name: "Gaten Matarazzo",
    discription:
        "Gaetano John Matarazzo III is an American actor. He began his career on the Broadway stage as Benjamin in Priscilla, Queen of the Desert and as Gavroche in Les Misérables.",
  ),
  ActorsModel(
    images: "assets/actors/actor5.jpg",
    name: "Caleb McLaughlin",
    discription:
        "Caleb Reginald McLaughlin is an American actor.\n He is known for playing Lucas Sinclair in the\n Netflix series Stranger Things for which he has won the Screen Actors Guild Award for Outstanding Performance \nby an Ensemble in a Drama Series.",
  ),
];
