import 'package:flutter/widgets.dart';
import '../../utils/api_helper.dart';
import '../model/home_model.dart';

class HomeProvider extends ChangeNotifier {
  Future<MovieModel> getMovieData() async {
    Apihelper apihelper = Apihelper();
    MovieModel movieModel = await apihelper.getMovieApi();
    return movieModel;
  }
}