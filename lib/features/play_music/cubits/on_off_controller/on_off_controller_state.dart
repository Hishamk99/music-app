part of 'on_off_controller_cubit.dart';

@immutable
sealed class OnOffControllerState {}

final class OnOffControllerInitial extends OnOffControllerState {}
final class OnOffController extends OnOffControllerState {}
final class LengthOfSongState extends OnOffControllerState {}
