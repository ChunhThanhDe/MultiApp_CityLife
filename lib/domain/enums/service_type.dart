// Store service type enum for delivery methods (different from ServiceType)
enum StoreServiceType {
  inStore('In store'),
  delivery('Delivery'),
  driveThru('Drive thru');

  final String label;
  const StoreServiceType(this.label);
}
