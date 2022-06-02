import 'package:auto_route/annotations.dart';
import 'package:hanafi_inn/presentation/holidays/holidays_page.dart';
import 'package:hanafi_inn/presentation/search/search_page.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  preferRelativeImports: true,
  routes: <AutoRoute>[
    AutoRoute(page: SearchPage, initial: true),
    AutoRoute(page: HolidaysPage),
  ],
)
class $AppRouter {}
