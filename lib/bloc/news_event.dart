import 'package:equatable/equatable.dart';

abstract class NewsEvent extends Equatable{
   NewsEvent();
  @override 
  List<Object> get props => [];
}
class StartEvent extends NewsEvent{}