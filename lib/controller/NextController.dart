import 'package:flutter_get_demo/model/Book.dart';
import 'package:flutter_get_demo/network/RemoteService.dart';
import 'package:get/state_manager.dart';

class NextController extends GetxController {
  var booksList = <Book>[].obs;
  var isLoading = true.obs;

  @override
  void onInit() {
    super.onInit();
    fetchBookList();
  }

  fetchBookList() async {
    try {
      isLoading(true);
      var books = await RemoteService.fetchBooks();
      if (books != null) {
        booksList.value = books;
      }
    } finally {
      isLoading(false);
    }
  }
}
