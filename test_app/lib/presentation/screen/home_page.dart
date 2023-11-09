import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:test_app/blocs/home_bloc/home_bloc.dart';
import 'package:test_app/presentation/widget/card_info.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<HomeBloc, HomeState>(
      builder: (context, state) {

        // print(state);
        // if(!state.isLoaded) {
        //   context.read<HomeBloc>().add(GetDataEvent());

        //   return Center(
        //     child: Container(
        //       child: const CircularProgressIndicator(),
        //     ),
        //   );

        // }

        return homeWidget(state);
      },
    ));
  }

  Widget homeWidget(HomeState state) {
    return SingleChildScrollView(
        child: Container(
          width: double.infinity,
          margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 22),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Padding(
                padding: EdgeInsets.only(top: 15, bottom: 26),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      'NetForemost News',
                      style: TextStyle(
                        color: Color(0xFF180E19),
                        fontSize: 25,
                        fontFamily: 'SF Pro',
                        fontWeight: FontWeight.w700,
                        letterSpacing: -0.17,
                      ),
                    )
                  ],
                ),
              ),

              // state.listInfo.articles.map( (article ) => {
              //   return Padding(
              //     padding:  const EdgeInsets.only(top: 20, bottom: 30),
              //     child:  CardInfo(
              //       author: article.author,
              //       title: article.title,
              //       date: article.publishedAt.toString(),
              //       image: article.urlToImage,
              //     ),
              //   );
              // });

              
              SizedBox(
                width: 358,
                child: ListView.separated(
                  scrollDirection: Axis.vertical,
                  shrinkWrap: true,
                    itemBuilder: (context, index) {
                      return const Padding(
                        padding:  EdgeInsets.only(top: 20, bottom: 30),
                        child:  CardInfo(),
                      );
                    },
                    separatorBuilder: (context, index) => const Divider(),
                    itemCount: 8),
              ),
            ],
          ),
        ),
      );
  }
}
