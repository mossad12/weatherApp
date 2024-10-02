import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:weatherapp/Api/ApiManager.dart';
import 'package:weatherapp/Model/Weatherresponse.dart';

part 'weathr_data_state.dart';

class WeathrDataCubit extends Cubit<WeathrDataState> {
  WeathrDataCubit() : super(WeathrDataLoading());

  getWeatherDataCubit(String country) async {
    try {
      emit(WeathrDataLoading());
      var response = await ApiManager.getWeatherData(country);
      if (response.cod == 200) {
        emit(WeathrDataSuccess(response));
        return;
      }
      if (response.cod == 400) {
        emit(WeathrDataError(response.message!));
        return;
      }
    } catch (e) {
      emit(WeathrDataError(e.toString()));
    }
  }
}
