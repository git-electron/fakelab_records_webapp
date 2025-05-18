enum MyOrdersLimitPolicy {
  limited,
  unlimited;

  bool get hasLimit => this == MyOrdersLimitPolicy.limited;
}
