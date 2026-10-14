class Book{
  final String id,title,category,author,month;
  final int rating,borrowCount;
    Book({required this.id,required this.title,required this.category,required this.author,
        required this.rating,required this.borrowCount,required this.month});

 factory Book.fromJson(Map<String,dynamic>j)=>Book(
        id:j['id']as String,
        title:j['title']as String,
        category:j['category']as String,
        author:j['author']as String,
        rating:j['rating']as int ,
        borrowCount:j['borrowCount']as int ,
        month:j['month']as String,
 );
}