part of 'weathr_data_cubit.dart';

@immutable
sealed class WeathrDataState {}

final class WeathrDataLoading extends WeathrDataState {}

final class WeathrDataSuccess extends WeathrDataState {
  final Weatherresponse data;

  WeathrDataSuccess(this.data);
}

final class WeathrDataError extends WeathrDataState {
  final String message;

  WeathrDataError(this.message);
}
