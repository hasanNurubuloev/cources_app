/// Insert [element] between all elements inside the [iterable]
Iterable<T> insertItemBetweenElements<T>(
  T element,
  Iterable<T> iterable,
) sync* {
  final iterator = iterable.iterator;
  if (iterator.moveNext()) {
    yield iterator.current;
    while (iterator.moveNext()) {
      yield element;
      yield iterator.current;
    }
  }
}

/// Extension on Iterable to add inbetween insertion
extension InsertBetweenIterable<T> on Iterable<T> {
  /// Insert [separator] item between all elements
  Iterable<T> insertBetween(T separator) => insertItemBetweenElements<T>(
        separator,
        this,
      );
}
