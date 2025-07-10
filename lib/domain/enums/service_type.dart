// Service types enum for different service categories
enum ServiceType { food, grocery, delivery, laundry, ticket, cleaning, seeMore }

// Store service type enum for delivery methods (different from ServiceType)
enum StoreServiceType {
  inStore('In store'),
  delivery('Delivery'),
  driveThru('Drive thru');

  final String label;
  const StoreServiceType(this.label);
}
