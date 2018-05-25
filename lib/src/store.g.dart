// This is generated code; please do not modify by hand.

part of 'store.dart';

// **************************************************************************
// Generator: BuiltValueGenerator
// **************************************************************************

// ignore_for_file: always_put_control_body_on_new_line
// ignore_for_file: annotate_overrides
// ignore_for_file: avoid_annotating_with_dynamic
// ignore_for_file: avoid_returning_this
// ignore_for_file: omit_local_variable_types
// ignore_for_file: prefer_expression_function_bodies
// ignore_for_file: sort_constructors_first

class _$State extends State {
  @override
  final String message;

  factory _$State([void updates(StateBuilder b)]) =>
      (new StateBuilder()..update(updates)).build();

  _$State._({this.message}) : super._() {
    if (message == null) throw new BuiltValueNullFieldError('State', 'message');
  }

  @override
  State rebuild(void updates(StateBuilder b)) =>
      (toBuilder()..update(updates)).build();

  @override
  StateBuilder toBuilder() => new StateBuilder()..replace(this);

  @override
  bool operator ==(dynamic other) {
    if (identical(other, this)) return true;
    if (other is! State) return false;
    return message == other.message;
  }

  @override
  int get hashCode {
    return $jf($jc(0, message.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('State')..add('message', message))
        .toString();
  }
}

class StateBuilder implements Builder<State, StateBuilder> {
  _$State _$v;

  String _message;
  String get message => _$this._message;
  set message(String message) => _$this._message = message;

  StateBuilder();

  StateBuilder get _$this {
    if (_$v != null) {
      _message = _$v.message;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(State other) {
    if (other == null) throw new ArgumentError.notNull('other');
    _$v = other as _$State;
  }

  @override
  void update(void updates(StateBuilder b)) {
    if (updates != null) updates(this);
  }

  @override
  _$State build() {
    final _$result = _$v ?? new _$State._(message: message);
    replace(_$result);
    return _$result;
  }
}
