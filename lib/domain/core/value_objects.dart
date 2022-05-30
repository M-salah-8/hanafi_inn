abstract class ValueObject<T> {
  T get value;
  @override
  bool operator ==(Object o) {
    if (identical(this, o)) return true;

    return o is ValueObject<T> && o.value == value;
  }

  @override
  int get hashCode => value.hashCode;
  @override
  String toString() {
    return "Value('$value')";
  }

  bool isValid(T? valid) {
    return valid == null ? true : false;
  }
}
