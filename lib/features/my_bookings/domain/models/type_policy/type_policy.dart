enum MyBookingsTypePolicy {
  list,
  single;

  bool get isList => this == MyBookingsTypePolicy.list;
  bool get isSingle => this == MyBookingsTypePolicy.single;
}
