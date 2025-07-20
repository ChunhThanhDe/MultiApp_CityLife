enum WishlistItemType {
  store('store'),
  item('item');

  const WishlistItemType(this.value);

  final String value;

  @override
  String toString() => value;
}
