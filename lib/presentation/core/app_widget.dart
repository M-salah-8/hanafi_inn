import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hanafi_inn/application/country/country_list_bloc.dart';
import 'package:hanafi_inn/application/holiday/holiday_list_bloc.dart';
import 'package:hanafi_inn/injection.dart';
import 'package:hanafi_inn/presentation/core/constants.dart';
import 'package:hanafi_inn/presentation/routes/router.gr.dart';

class AppWidget extends StatelessWidget {
  AppWidget({Key? key}) : super(key: key);
  final _appRouter = AppRouter();

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => getIt<HolidayListBloc>()),
        BlocProvider(create: (context) => getIt<CountryListBloc>()),
      ],
      child: MaterialApp.router(
        // debugShowCheckedModeBanner: false,
        theme: ThemeData.light().copyWith(
            primaryColor: kPrimaryColor,
            scaffoldBackgroundColor: kPrimaryLightColor,
            inputDecorationTheme: InputDecorationTheme(
              hintStyle: const TextStyle(fontSize: 15, color: Colors.grey),
              labelStyle: const TextStyle(fontSize: 15, color: Colors.black),
              suffixStyle: const TextStyle(fontSize: 15, color: Colors.black),
              hoverColor: const Color.fromARGB(255, 9, 153, 17),
              fillColor: const Color.fromARGB(255, 9, 153, 17),
              focusedBorder: OutlineInputBorder(
                borderSide: const BorderSide(
                    width: 3, color: Color.fromARGB(255, 9, 153, 17)),
                borderRadius: BorderRadius.circular(30),
              ),
              enabledBorder: OutlineInputBorder(
                borderSide:
                    const BorderSide(color: Color.fromARGB(255, 9, 153, 17)),
                borderRadius: BorderRadius.circular(30),
              ),
              border: OutlineInputBorder(
                borderSide:
                    const BorderSide(color: Color.fromARGB(255, 9, 153, 17)),
                borderRadius: BorderRadius.circular(30),
              ),
            ),
            textTheme: const TextTheme(
                displaySmall: TextStyle(fontSize: 13, color: Colors.black),
                displayMedium:
                    TextStyle(fontSize: 15, color: kPrimaryLightColor),
                displayLarge: TextStyle(
                    fontSize: 17,
                    color: kPrimaryLightColor,
                    fontWeight: FontWeight.bold),
                titleSmall: TextStyle(
                    fontSize: 20, letterSpacing: 1.5, color: kPrimaryColor),
                titleMedium: TextStyle(
                    fontSize: 30,
                    letterSpacing: 1.5,
                    // fontWeight: FontWeight.,
                    color: Colors.green),
                titleLarge: TextStyle(
                  fontWeight: FontWeight.normal,
                  fontSize: 14,
                  color: Colors.black,
                ))),
        routeInformationParser: _appRouter.defaultRouteParser(),
        routerDelegate: _appRouter.delegate(),
        title: 'Hanafi Inn',
      ),
    );
  }
}

// appBarTheme: const AppBarTheme(
            //     centerTitle: true,
            //     backgroundColor: Colors.transparent,
            //     elevation: 0),
            // floatingActionButtonTheme: const FloatingActionButtonThemeData(
            //     elevation: 0,
            //     backgroundColor: Colors.transparent,
            //     extendedPadding: EdgeInsets.all(0)),
            // cardTheme: CardTheme(
            //   elevation: 0,
            //   // color: const Color.fromARGB(255, 100, 12, 116),
            //   shape: RoundedRectangleBorder(
            //     side: const BorderSide(
            //         color: Color.fromARGB(255, 9, 153, 17), width: 2),
            //     borderRadius: BorderRadius.circular(30),
            //   ),
            // ),
            // dialogTheme: DialogTheme(
            //     titleTextStyle: const TextStyle(
            //         fontSize: 20, color: Color.fromARGB(255, 9, 153, 17)),
            //     elevation: 0,
            //     shape: RoundedRectangleBorder(
            //       side: const BorderSide(
            //           color: Color.fromARGB(255, 9, 153, 17), width: 2),
            //       borderRadius: BorderRadius.circular(30),
            //     )),
// popupMenuTheme: PopupMenuThemeData(
            //     shape: RoundedRectangleBorder(
            //   side: const BorderSide(
            //       color: Color.fromARGB(255, 9, 153, 17), width: 2),
            //   borderRadius: BorderRadius.circular(30),
            // )),