import 'package:alpha/bloc/Auth_bloc/auth_bloc.dart';
import 'package:alpha/data.dart';
import 'package:alpha/widgets/custom_book_cover.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class NewArrivalsBooks extends StatelessWidget {
  const NewArrivalsBooks({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: books.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.only(right: 8.0),
            child: AspectRatio(
              aspectRatio: .7,
              child: CustomBookCover(
                isLocked: !BlocProvider.of<AuthBloc>(context).userStatus,
                image: books[index].image,
              ),
            ),
          );
        },
      ),
    );
  }
}
