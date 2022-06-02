// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

import 'package:auto_route/auto_route.dart' as _i3;
import 'package:flutter/material.dart' as _i4;

import '../holidays/holidays_page.dart' as _i2;
import '../search/search_page.dart' as _i1;

class AppRouter extends _i3.RootStackRouter {
  AppRouter([_i4.GlobalKey<_i4.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i3.PageFactory> pagesMap = {
    SearchRoute.name: (routeData) {
      return _i3.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i1.SearchPage());
    },
    HolidaysRoute.name: (routeData) {
      return _i3.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i2.HolidaysPage());
    }
  };

  @override
  List<_i3.RouteConfig> get routes => [
        _i3.RouteConfig(SearchRoute.name, path: '/'),
        _i3.RouteConfig(HolidaysRoute.name, path: '/holidays-page')
      ];
}

/// generated route for
/// [_i1.SearchPage]
class SearchRoute extends _i3.PageRouteInfo<void> {
  const SearchRoute() : super(SearchRoute.name, path: '/');

  static const String name = 'SearchRoute';
}

/// generated route for
/// [_i2.HolidaysPage]
class HolidaysRoute extends _i3.PageRouteInfo<void> {
  const HolidaysRoute() : super(HolidaysRoute.name, path: '/holidays-page');

  static const String name = 'HolidaysRoute';
}
