class TodoEntity {
  final String title;
  final String? description;
  final bool isFavorite;
  final bool isDone;

  TodoEntity({
    required this.title, 
    required this.description, 
    required this.isFavorite, 
    required this.isDone,
    });

}