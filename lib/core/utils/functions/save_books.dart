  import 'package:bokly_app/Features/home/domin/entitys/book_entity.dart';
import 'package:hive/hive.dart';

void saveBooksData(List<BookEntity> books,String boxname) {
    var box = Hive.box(boxname);
    box.addAll(books);
  }