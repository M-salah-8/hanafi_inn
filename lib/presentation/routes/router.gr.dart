// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

import 'package:auto_route/auto_route.dart' as _i4;
import 'package:flutter/material.dart' as _i5;

import '../holidays/holidays_page.dart' as _i3;
import '../misc/presentation_classes.dart' as _i6;
import '../search/search_page.dart' as _i2;
import '../splash/splash_page.dart' as _i1;

class AppRouter extends _i4.RootStackRouter {
  AppRouter([_i5.GlobalKey<_i5.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i4.PageFactory> pagesMap = {
    SplashRoute.name: (routeData) {
      return _i4.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i1.SplashPage());
    },
    SearchRoute.name: (routeData) {
      final args = routeData.argsAs<SearchRouteArgs>();
      return _i4.MaterialPageX<dynamic>(
          routeData: routeData,
          child: _i2.SearchPage(key: args.key, countryList: args.countryList));
    },
    HolidaysRoute.name: (routeData) {
      final args = routeData.argsAs<HolidaysRouteArgs>();
      return _i4.MaterialPageX<dynamic>(
          routeData: routeData,
          child: _i3.HolidaysPage(key: args.key, holidays: args.holidays));
    }
  };

  @override
  List<_i4.RouteConfig> get routes => [
        _i4.RouteConfig(SplashRoute.name, path: '/'),
        _i4.RouteConfig(SearchRoute.name, path: '/search-page'),
        _i4.RouteConfig(HolidaysRoute.name, path: '/holidays-page')
      ];
}

/// generated route for
/// [_i1.SplashPage]
class SplashRoute extends _i4.PageRouteInfo<void> {
  const SplashRoute() : super(SplashRoute.name, path: '/');

  static const String name = 'SplashRoute';
}

/// generated route for
/// [_i2.SearchPage]
class SearchRoute extends _i4.PageRouteInfo<SearchRouteArgs> {
  SearchRoute({_i5.Key? key, required List<_i6.CountryPrimitive> countryList})
      : super(SearchRoute.name,
            path: '/search-page',
            args: SearchRouteArgs(key: key, countryList: countryList));

  static const String name = 'SearchRoute';
}

class SearchRouteArgs {
  const SearchRouteArgs({this.key, required this.countryList});

  final _i5.Key? key;

  final List<_i6.CountryPrimitive> countryList;

  @override
  String toString() {
    return 'SearchRouteArgs{key: $key, countryList: $countryList}';
  }
}

/// generated route for
/// [_i3.HolidaysPage]
class HolidaysRoute extends _i4.PageRouteInfo<HolidaysRouteArgs> {
  HolidaysRoute({_i5.Key? key, required List<_i6.HolidayPrimitive> holidays})
      : super(HolidaysRoute.name,
            path: '/holidays-page',
            args: HolidaysRouteArgs(key: key, holidays: holidays));

  static const String name = 'HolidaysRoute';
}

class HolidaysRouteArgs {
  const HolidaysRouteArgs({this.key, required this.holidays});

  final _i5.Key? key;

  final List<_i6.HolidayPrimitive> holidays;

  @override
  String toString() {
    return 'HolidaysRouteArgs{key: $key, holidays: $holidays}';
  }
}
