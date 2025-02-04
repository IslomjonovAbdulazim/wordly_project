class BookEntity {
  final int id;
  final String name;
  final String image;
  final int number;

  BookEntity({
    required this.name,
    required this.number,
    required this.image,
    required this.id,
  });
}

final List<BookEntity> essentialBooks = [
  BookEntity(
    id: 1,
    name: "Thinking, Fast and Slow",
    number: 1,
    image: "https://images-na.ssl-images-amazon.com/images/I/71H6Fz4opzL.jpg",
  ),
  BookEntity(
    id: 2,
    name: "Atomic Habits",
    number: 2,
    image: "https://images-na.ssl-images-amazon.com/images/I/91bYsX41DVL.jpg",
  ),
  BookEntity(
    id: 3,
    name: "The 7 Habits of Highly Effective People",
    number: 3,
    image: "https://images-na.ssl-images-amazon.com/images/I/71uAI28kJuL.jpg",
  ),
  BookEntity(
    id: 4,
    name: "The Power of Now",
    number: 4,
    image: "https://images-na.ssl-images-amazon.com/images/I/71mOaiB1M+L.jpg",
  ),
  BookEntity(
    id: 5,
    name: "Deep Work",
    number: 5,
    image: "https://images-na.ssl-images-amazon.com/images/I/71Aqjxxu4QL.jpg",
  ),
  BookEntity(
    id: 6,
    name: "The Subtle Art of Not Giving a F*ck",
    number: 6,
    image: "https://images-na.ssl-images-amazon.com/images/I/71QKQ9mwV7L.jpg",
  ),
];
