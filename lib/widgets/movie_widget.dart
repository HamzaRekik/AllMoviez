import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:movies_api/cubits/get_image_cubit/get_image_cubit.dart';
import 'package:movies_api/models/movie.dart';

class MovieWidget extends StatelessWidget {
  MovieWidget({required this.movie});
  final Movie movie;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        BlocProvider.of<GetImagesCubit>(context).getMovieImage(movie);
      },
      child: Container(
        margin: EdgeInsets.only(bottom: 10),
        height: 200,
        width: 340,
        child: Row(
          children: [
            Expanded(
                child: Image(
              image: NetworkImage(movie.image),
              height: 200,
              width: 200,
              fit: BoxFit.cover,
            )),
            Expanded(
                flex: 2,
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Expanded(
                          child: Row(
                        children: [
                          Expanded(
                              flex: 4,
                              child: Align(
                                alignment: Alignment.topLeft,
                                child: Text(
                                  movie.title,
                                  style: TextStyle(color: Colors.white),
                                  textAlign: TextAlign.left,
                                ),
                              )),
                          Expanded(
                              child: Text("${movie.rate.round()}",
                                  style: TextStyle(color: Colors.white)))
                        ],
                      )),
                      Expanded(
                          child: Align(
                        alignment: Alignment.topLeft,
                        child: Text(
                          movie.date,
                          style: TextStyle(color: Colors.white),
                          textAlign: TextAlign.left,
                        ),
                      )),
                      Expanded(
                          flex: 6,
                          child: Align(
                            alignment: Alignment.topLeft,
                            child: Text(
                              movie.description,
                              style: TextStyle(color: Colors.white),
                              textAlign: TextAlign.left,
                            ),
                          )),
                    ],
                  ),
                ))
          ],
        ),
      ),
    );
  }
}
