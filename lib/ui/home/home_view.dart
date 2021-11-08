import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:ionicons/ionicons.dart';
import 'package:luna/global/styles.dart';
import 'package:luna/global/ui_helpers.dart';
import 'package:luna/ui/home/bloc/home_bloc.dart';
import 'package:luna/ui/home/widgets/posts_stream.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeBloc, HomeState>(builder: (context, state){
      return state.when(
        initial: (user, postsStream) => Scaffold(
          appBar: AppBar(
            elevation: 1,
            backgroundColor: Colors.white,
            title: Text(
              'Luna',
              style: GoogleFonts.yesteryear(color: lPrimaryColor, fontSize: 45),
            ),
            actions: [
              IconButton(
                  onPressed: () {}, // goto write post,
                  splashRadius: 20,
                  icon: Icon(
                    Ionicons.create_outline,
                    color: lPrimaryColor,
                    size: 30,
                  )),
              Padding(
                padding: EdgeInsets.only(right: horizontalMargin),
                child: GestureDetector(
                  onTap: () {}, // goto profile,
                  onLongPress: (){}, // signout,
                  child: CircleAvatar(
                    backgroundImage: NetworkImage(
                        '${user.profileImageURL}'),
                  ),
                ),
              )
            ],
          ),
          body: PostsStream(postsStream: postsStream,),
        ),
      );
    });
  }
}
