// Store service type enum for delivery methods (different from ServiceType)
enum StoreServiceType {
  inStore('In store'),
  delivery('Delivery'),
  driveThru('Drive thru');

  const StoreServiceType(this.label);
  final String label;
}
