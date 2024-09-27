import 'package:alpha/models/book_model.dart';
import 'package:alpha/utils/assets.dart';

List<String> categories = [
  "Novel",
  "Self-love",
  "Science",
  "Romance",
  "Crime",
  "Education",
  "Psycology"
];
List<BookModel> books = [
  BookModel(
      title: "If Only I Had Told Her",
      category: "Novel",
      author: "Laura Nowlin",
      overview:
          "Finn has always loved Autumn, but he’s with Sylvie. Torn between love and loyalty, Finn never told Autumn how he truly feels.",
      image: Assets.images1,
      rating: "4.0",
      price: "9",
      aboutAuthor:
          "Laura Nowlin is an American author known for her young adult novels. Her stories often explore deep emotional struggles. She brings out the raw essence of human connections."),
  BookModel(
      title: "The Creative Act",
      category: "Psycology",
      author: "Rick Rubin",
      overview:
          "A deep reflection on creativity and the journey of being an artist, distilling wisdom on how to live as a creator.",
      image: Assets.images2,
      rating: "4.5",
      price: "32",
      aboutAuthor:
          "Rick Rubin is a renowned music producer and writer. His insights into creativity stem from his work with legendary artists. He believes that creativity is a way of life for everyone."),
  BookModel(
      title: "The Happiness Advantage",
      category: "Education",
      author: "Shawn Achor",
      overview:
          "A guide on how happiness can lead to success, emphasizing that a positive mindset helps improve both personal and professional life.",
      image: Assets.images3,
      rating: "4.9",
      price: "19",
      aboutAuthor:
          "Shawn Achor is a leading expert on happiness and human potential. He has delivered one of the most popular TED Talks and focuses on the science of positive psychology."),
  BookModel(
      title: "Becoming",
      category: "Novel",
      author: "Michelle Obama",
      overview:
          "A memoir by Michelle Obama reflecting on her journey from her Chicago upbringing to becoming the First Lady of the United States.",
      image: Assets.images4,
      rating: "4.8",
      price: "18",
      aboutAuthor:
          "Michelle Obama is a lawyer, author, and former First Lady of the United States. Her work focuses on health, education, and empowering young women globally."),
  BookModel(
      title: "American Gods",
      category: "Novel",
      author: "Neil Gaiman",
      overview:
          "Shadow, just out of prison, meets the mysterious Mr. Wednesday and embarks on a strange journey across America.",
      image: Assets.images5,
      rating: "4.7",
      price: "12",
      aboutAuthor:
          "Neil Gaiman is an award-winning author known for his dark fantasy novels. His works span across multiple genres, blending mythology, horror, and magical realism."),
  BookModel(
      title: "A Court of Thorns and Roses",
      category: "Novel",
      author: "Sarah J. Maas",
      overview:
          "Feyre, a huntress, is dragged into a magical realm after killing a faerie wolf. There, she discovers her captor, Tamlin, is hiding dangerous secrets.",
      image: Assets.images6, // Replace with the actual image path
      rating: "4.6",
      price: "14",
      aboutAuthor:
          "Sarah J. Maas is a bestselling author known for her fantasy series, including *Throne of Glass* and *A Court of Thorns and Roses*. Her works are known for their strong characters and immersive worlds.")
];
