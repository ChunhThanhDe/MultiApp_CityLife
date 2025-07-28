# Service Data Utils

This utility class contains reusable methods extracted from the ServiceController to process service data dynamically.

## Usage

### Import the utility

```dart
import 'package:sixam_mart_user/presentation/shared/utils/service_data_utils.dart';
```

### Available Methods

#### 1. Process Service Data
```dart
// Main entry point - processes any GetStoresResponse data
List<ServiceSection> sections = ServiceDataUtils.processServiceData(data);
```

#### 2. Get Auto-Detected Sections
```dart
// Auto-detect all sections from API response
List<SectionMetadata> sections = ServiceDataUtils.getAutoDetectedSections(data);
```

#### 3. Get Dynamic Sections
```dart
// Generate completely dynamic sections
List<ServiceSection> sections = ServiceDataUtils.getDynamicSections(data);
```

#### 4. Get Categories
```dart
// Get categories from API data
List<Category> categories = ServiceDataUtils.getCategories(data);
```

#### 5. Get Category Assets
```dart
// Get category image asset based on service type
String assetPath = ServiceDataUtils.getCategoryImageAsset(category, serviceType);
```

#### 6. Get Categories with Assets
```dart
// Get categories with dynamic assets
List<Category> categories = ServiceDataUtils.getCategoriesWithAssets(data, serviceType);
```

## Example Usage in Home Controller

```dart
class HomeController extends BaseController {
  // Example method to process service data
  List<ServiceSection> processServiceDataForHome(GetStoresResponse? data) {
    return ServiceDataUtils.processServiceData(data);
  }

  // Example method to get categories with assets
  List<Category> getCategoriesWithAssets(GetStoresResponse? data, ServiceType serviceType) {
    return ServiceDataUtils.getCategoriesWithAssets(data, serviceType);
  }
}
```

## Features

- **Auto-detection**: Automatically detects sections from API response
- **Dynamic banner types**: Intelligently determines the best banner type based on data structure
- **Smart mapping**: Converts API data to BannerItems with appropriate properties
- **Service type support**: Handles different service types (food, grocery, delivery, etc.)
- **Reusable**: Can be used across different controllers

## Data Classes

### ServiceSection
```dart
class ServiceSection {
  final String key;
  final String title;
  final List<BannerItem> items;
  final BannerType bannerType;
  final bool showArrowIcon;
}
```

### SectionMetadata
```dart
class SectionMetadata {
  final String fieldName;
  final String displayTitle;
  final List<dynamic> data;
  final Type dataType;
}
``` 