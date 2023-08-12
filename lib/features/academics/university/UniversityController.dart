import 'News.dart';
import 'NewsService.dart';

class NewsController {
  static Future<List<News>> newsGet() async {
    return await NewsService.get();
  }

  static Future<News> newsGetOne(id) async {
    return await NewsService.getOne(id);
  }
}
