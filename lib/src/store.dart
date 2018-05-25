import 'package:angular/angular.dart';
import 'package:built_value/built_value.dart';

part 'store.g.dart';

abstract class State implements Built<State, StateBuilder> {
  @nullable
  String get message;
  @nullable
  String get token;

  State._();
  factory State([updates(StateBuilder b)]) = _$State;
}

@Injectable()
class Store {
  final List<State> _states;

  Store(State initialState) : _states = [initialState];

  State get state => _states.last;

  State mutate(State newState) {
    _states.add(newState);
    return state;
  }
}
