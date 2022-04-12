import 'package:flutter_application_1/model/movie.dart';
import 'package:flutter_application_1/repository/movie_repository.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  MovieRepository movieRepository = Get.find<MovieRepository>();
  int page = 1;
  RxList list_movie = <Movie>[].obs;
  RxBool isNoLoadMore = false.obs;
  RxBool isLoading = true.obs;

  void callAPI() {
    isLoading.value = true;
    movieRepository.getMovie(page).then((List<Movie> value) {
      isLoading.value = false;
      if (value.isEmpty) {
        isNoLoadMore.value = true;
      }
      list_movie.addAll(value);
    }).catchError((err, track) {
      print("Something wrong ${err} ${track}");
    });
  }

  @override
  void onReady() {
    callAPI();
    // TODO: implement onReady
    super.onReady();
  }
}
