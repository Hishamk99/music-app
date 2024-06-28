part of 'search_cubit.dart';

@immutable
sealed class SearchState {}

final class SearchInitial extends SearchState {}
final class SearchNotExisted extends SearchState {}
final class SearchExisted extends SearchState {}
