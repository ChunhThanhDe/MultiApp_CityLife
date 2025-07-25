# 6amMart User App - API Integration Documentation

## Base Configuration

| Property           | Value                      |
| ------------------ | -------------------------- |
| **Base URL**       | `https://trungnghia.space` |
| **API Version**    | v1                         |
| **HTTP Client**    | Dio with Alice Inspector   |
| **Authentication** | Bearer Token               |

## External APIs

| Service         | API Key                                   | Platform    | Usage                   |
| --------------- | ----------------------------------------- | ----------- | ----------------------- |
| **Google Maps** | `AIzaSyDvGPjJ_iHryvC99rtSD2ucHTVh639qwO4` | Android/iOS | Maps, Location Services |

## Authentication APIs

| Method | Endpoint               | Description       | Request Body    | Headers |
| ------ | ---------------------- | ----------------- | --------------- | ------- |
| POST   | `/api/v1/auth/login`   | User login        | `SignInRequest` | -       |
| POST   | `/api/v1/auth/sign-up` | User registration | `SignUpRequest` | -       |

## User Management APIs

| Method | Endpoint                           | Description          | Request Body                            | Headers       |
| ------ | ---------------------------------- | -------------------- | --------------------------------------- | ------------- |
| GET    | `/api/v1/customer/info`            | Get user information | -                                       | Authorization |
| POST   | `/api/v1/customer/update-profile`  | Update user profile  | `UpdateProfileRequest` + optional image | Authorization |
| POST   | `/api/v1/customer/change-password` | Change user password | `ChangePasswordRequest`                 | Authorization |

## Cart Management APIs

| Method | Endpoint                               | Description                    | Request Body            | Headers                    |
| ------ | -------------------------------------- | ------------------------------ | ----------------------- | -------------------------- |
| GET    | `/api/v1/customer/cart/list-by-stores` | Get cart items by stores       | -                       | Authorization              |
| POST   | `/api/v1/customer/cart/add`            | Add item to cart               | `AddToCartRequest`      | Authorization, moduleId: 1 |
| POST   | `/api/v1/customer/cart/update`         | Update cart item               | `UpdateCartRequest`     | Authorization              |
| DELETE | `/api/v1/customer/cart/remove-item`    | Remove specific item from cart | `RemoveFromCartRequest` | Authorization              |
| DELETE | `/api/v1/customer/cart/remove`         | Clear entire cart              | -                       | Authorization              |

## Order Management APIs

| Method | Endpoint                                | Description          | Query Parameters             | Headers       |
| ------ | --------------------------------------- | -------------------- | ---------------------------- | ------------- |
| GET    | `/api/v1/customer/order/running-orders` | Get running orders   | `limit`, `offset`            | Authorization |
| GET    | `/api/v1/customer/order/track`          | Track specific order | `order_id`, `contact_number` | Authorization |

## Store APIs

| Method | Endpoint                                        | Description                | Path/Query Parameters                                                                          | Headers |
| ------ | ----------------------------------------------- | -------------------------- | ---------------------------------------------------------------------------------------------- | ------- |
| GET    | `/api/v1/stores/storeInformationFood/{storeId}` | Get food store details     | `storeId` (path), `popular_limit`, `category_item_limit`, `category_item_offset`               | -       |
| GET    | `/api/v1/stores/StoreProductGrocery`            | Get grocery store products | `store_id`, `category_limit`, `category_offset`, `category_item_limit`, `category_item_offset` | -       |
| GET    | `/api/v1/stores/StoreProductGeneral`            | Get general store products | `store_id`, `menu_limit`, `menu_offset`, `menu_category_id` (optional)                         | -       |
| GET    | `/api/v1/stores/StoreReview`                    | Get store reviews          | `store_id`, `reviews_limit`, `reviews_offset`                                                  | -       |

## Product APIs

| Method | Endpoint                                        | Description         | Path Parameters | Headers |
| ------ | ----------------------------------------------- | ------------------- | --------------- | ------- |
| GET    | `/api/v1/stores/StoreProductDetail/{productId}` | Get product details | `productId`     | -       |

## Service APIs

| Method | Endpoint                     | Description           | Headers                 |
| ------ | ---------------------------- | --------------------- | ----------------------- |
| GET    | `/api/v1/stores/fast_food`   | Get fast food stores  | zoneId, moduleId: 3, id |
| GET    | `/api/v1/stores/grocery`     | Get grocery stores    | zoneId, moduleId: 4, id |
| GET    | `/api/v1/services/fast_food` | Get delivery services | zoneId, moduleId: 3, id |

## Search APIs

| Method | Endpoint                   | Description                | Query Parameters                        | Headers |
| ------ | -------------------------- | -------------------------- | --------------------------------------- | ------- |
| GET    | `/api/v1/stores/searching` | Search stores and products | `id`: 3, `module_id`: 3, `q` (optional) | -       |

## Wishlist APIs

| Method | Endpoint                            | Description               | Request Body            | Headers                    |
| ------ | ----------------------------------- | ------------------------- | ----------------------- | -------------------------- |
| GET    | `/api/v1/customer/wish-list`        | Get user wishlist         | -                       | Authorization, zoneId: [1] |
| POST   | `/api/v1/customer/wish-list/add`    | Add item to wishlist      | `AddWishlistRequest`    | Authorization, zoneId: [1] |
| DELETE | `/api/v1/customer/wish-list/remove` | Remove item from wishlist | `RemoveWishlistRequest` | Authorization, zoneId: [1] |

## Settings APIs

| Method | Endpoint                             | Description                    | Request Body              | Headers                           |
| ------ | ------------------------------------ | ------------------------------ | ------------------------- | --------------------------------- |
| POST   | `/api/v1/customer/update-appearance` | Update app appearance settings | `UpdateAppearanceRequest` | Authorization, X-localization: zn |

## Service Type Configurations

| Service Type | Module ID | Default Zone ID | Default ID | API Path                   |
| ------------ | --------- | --------------- | ---------- | -------------------------- |
| Food         | 3         | 1               | 1          | `/api/v1/stores/fast_food` |
| Grocery      | 4         | 1               | 1          | `/api/v1/stores/grocery`   |
