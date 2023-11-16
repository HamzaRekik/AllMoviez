import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movies_api/cubits/get_image_cubit/get_image_states.dart';
import 'package:movies_api/models/movie.dart';

class GetImagesCubit extends Cubit<ImageStates> {
  GetImagesCubit() : super(InitialImage());
  late String image;
  getMovieImage(Movie movie) {
    try {
      image = movie.getImage();
      emit(SelectedImage());
    } catch (e) {
      emit(ErrorOccured());
    }
  }
}
