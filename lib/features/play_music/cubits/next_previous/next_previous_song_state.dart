part of 'next_previous_song_cubit.dart';

@immutable
sealed class NextPreviousSongState {}

final class NextPreviousSongInitial extends NextPreviousSongState {}
final class NowSongRecommandedState extends NextPreviousSongState {}
final class NowSongRecentlyState extends NextPreviousSongState {}
