import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hanafi_inn/domain/country/country.dart';
import 'package:hanafi_inn/domain/country/i_country_repository.dart';
import 'package:injectable/injectable.dart';

part 'country_list_bloc.freezed.dart';
part 'country_list_event.dart';
part 'country_list_state.dart';

@injectable
class CountryListBloc extends Bloc<CountryListEvent, CountryListState> {
  final ICountryRepository _countryRepository;
  CountryListBloc(this._countryRepository)
      : super(const CountryListState.initial()) {
    on<CountryListEvent>((event, emit) async {
      emit(const CountryListState.loading());
      final holidaysListorFailure = await _countryRepository.getCountrysList();
      holidaysListorFailure.fold(
          (l) =>
              // TODO failures
              CountryListState.loadFailure(),
          (r) => CountryListState.loadSuccess(r));
    });
  }
}
