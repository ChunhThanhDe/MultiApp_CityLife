// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of '../../../../domain/models/response/get_store_reviews_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$GetStoreReviewsResponse {

 List<Review> get reviews;
/// Create a copy of GetStoreReviewsResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GetStoreReviewsResponseCopyWith<GetStoreReviewsResponse> get copyWith => _$GetStoreReviewsResponseCopyWithImpl<GetStoreReviewsResponse>(this as GetStoreReviewsResponse, _$identity);

  /// Serializes this GetStoreReviewsResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GetStoreReviewsResponse&&const DeepCollectionEquality().equals(other.reviews, reviews));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(reviews));

@override
String toString() {
  return 'GetStoreReviewsResponse(reviews: $reviews)';
}


}

/// @nodoc
abstract mixin class $GetStoreReviewsResponseCopyWith<$Res>  {
  factory $GetStoreReviewsResponseCopyWith(GetStoreReviewsResponse value, $Res Function(GetStoreReviewsResponse) _then) = _$GetStoreReviewsResponseCopyWithImpl;
@useResult
$Res call({
 List<Review> reviews
});




}
/// @nodoc
class _$GetStoreReviewsResponseCopyWithImpl<$Res>
    implements $GetStoreReviewsResponseCopyWith<$Res> {
  _$GetStoreReviewsResponseCopyWithImpl(this._self, this._then);

  final GetStoreReviewsResponse _self;
  final $Res Function(GetStoreReviewsResponse) _then;

/// Create a copy of GetStoreReviewsResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? reviews = null,}) {
  return _then(_self.copyWith(
reviews: null == reviews ? _self.reviews : reviews // ignore: cast_nullable_to_non_nullable
as List<Review>,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _GetStoreReviewsResponse implements GetStoreReviewsResponse {
  const _GetStoreReviewsResponse({required final  List<Review> reviews}): _reviews = reviews;
  factory _GetStoreReviewsResponse.fromJson(Map<String, dynamic> json) => _$GetStoreReviewsResponseFromJson(json);

 final  List<Review> _reviews;
@override List<Review> get reviews {
  if (_reviews is EqualUnmodifiableListView) return _reviews;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_reviews);
}


/// Create a copy of GetStoreReviewsResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GetStoreReviewsResponseCopyWith<_GetStoreReviewsResponse> get copyWith => __$GetStoreReviewsResponseCopyWithImpl<_GetStoreReviewsResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$GetStoreReviewsResponseToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GetStoreReviewsResponse&&const DeepCollectionEquality().equals(other._reviews, _reviews));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_reviews));

@override
String toString() {
  return 'GetStoreReviewsResponse(reviews: $reviews)';
}


}

/// @nodoc
abstract mixin class _$GetStoreReviewsResponseCopyWith<$Res> implements $GetStoreReviewsResponseCopyWith<$Res> {
  factory _$GetStoreReviewsResponseCopyWith(_GetStoreReviewsResponse value, $Res Function(_GetStoreReviewsResponse) _then) = __$GetStoreReviewsResponseCopyWithImpl;
@override @useResult
$Res call({
 List<Review> reviews
});




}
/// @nodoc
class __$GetStoreReviewsResponseCopyWithImpl<$Res>
    implements _$GetStoreReviewsResponseCopyWith<$Res> {
  __$GetStoreReviewsResponseCopyWithImpl(this._self, this._then);

  final _GetStoreReviewsResponse _self;
  final $Res Function(_GetStoreReviewsResponse) _then;

/// Create a copy of GetStoreReviewsResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? reviews = null,}) {
  return _then(_GetStoreReviewsResponse(
reviews: null == reviews ? _self._reviews : reviews // ignore: cast_nullable_to_non_nullable
as List<Review>,
  ));
}


}


/// @nodoc
mixin _$Review {

 double get rating; String get module; UserReview? get user;
/// Create a copy of Review
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ReviewCopyWith<Review> get copyWith => _$ReviewCopyWithImpl<Review>(this as Review, _$identity);

  /// Serializes this Review to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Review&&(identical(other.rating, rating) || other.rating == rating)&&(identical(other.module, module) || other.module == module)&&(identical(other.user, user) || other.user == user));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,rating,module,user);

@override
String toString() {
  return 'Review(rating: $rating, module: $module, user: $user)';
}


}

/// @nodoc
abstract mixin class $ReviewCopyWith<$Res>  {
  factory $ReviewCopyWith(Review value, $Res Function(Review) _then) = _$ReviewCopyWithImpl;
@useResult
$Res call({
 double rating, String module, UserReview? user
});


$UserReviewCopyWith<$Res>? get user;

}
/// @nodoc
class _$ReviewCopyWithImpl<$Res>
    implements $ReviewCopyWith<$Res> {
  _$ReviewCopyWithImpl(this._self, this._then);

  final Review _self;
  final $Res Function(Review) _then;

/// Create a copy of Review
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? rating = null,Object? module = null,Object? user = freezed,}) {
  return _then(_self.copyWith(
rating: null == rating ? _self.rating : rating // ignore: cast_nullable_to_non_nullable
as double,module: null == module ? _self.module : module // ignore: cast_nullable_to_non_nullable
as String,user: freezed == user ? _self.user : user // ignore: cast_nullable_to_non_nullable
as UserReview?,
  ));
}
/// Create a copy of Review
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UserReviewCopyWith<$Res>? get user {
    if (_self.user == null) {
    return null;
  }

  return $UserReviewCopyWith<$Res>(_self.user!, (value) {
    return _then(_self.copyWith(user: value));
  });
}
}


/// @nodoc
@JsonSerializable()

class _Review implements Review {
  const _Review({required this.rating, required this.module, this.user});
  factory _Review.fromJson(Map<String, dynamic> json) => _$ReviewFromJson(json);

@override final  double rating;
@override final  String module;
@override final  UserReview? user;

/// Create a copy of Review
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ReviewCopyWith<_Review> get copyWith => __$ReviewCopyWithImpl<_Review>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ReviewToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Review&&(identical(other.rating, rating) || other.rating == rating)&&(identical(other.module, module) || other.module == module)&&(identical(other.user, user) || other.user == user));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,rating,module,user);

@override
String toString() {
  return 'Review(rating: $rating, module: $module, user: $user)';
}


}

/// @nodoc
abstract mixin class _$ReviewCopyWith<$Res> implements $ReviewCopyWith<$Res> {
  factory _$ReviewCopyWith(_Review value, $Res Function(_Review) _then) = __$ReviewCopyWithImpl;
@override @useResult
$Res call({
 double rating, String module, UserReview? user
});


@override $UserReviewCopyWith<$Res>? get user;

}
/// @nodoc
class __$ReviewCopyWithImpl<$Res>
    implements _$ReviewCopyWith<$Res> {
  __$ReviewCopyWithImpl(this._self, this._then);

  final _Review _self;
  final $Res Function(_Review) _then;

/// Create a copy of Review
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? rating = null,Object? module = null,Object? user = freezed,}) {
  return _then(_Review(
rating: null == rating ? _self.rating : rating // ignore: cast_nullable_to_non_nullable
as double,module: null == module ? _self.module : module // ignore: cast_nullable_to_non_nullable
as String,user: freezed == user ? _self.user : user // ignore: cast_nullable_to_non_nullable
as UserReview?,
  ));
}

/// Create a copy of Review
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$UserReviewCopyWith<$Res>? get user {
    if (_self.user == null) {
    return null;
  }

  return $UserReviewCopyWith<$Res>(_self.user!, (value) {
    return _then(_self.copyWith(user: value));
  });
}
}


/// @nodoc
mixin _$UserReview {

 int get id; String get name; String get comment;@JsonKey(name: 'image_url') String get imageUrl;@JsonKey(name: 'created_at') String get createdAt; double get rating;
/// Create a copy of UserReview
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$UserReviewCopyWith<UserReview> get copyWith => _$UserReviewCopyWithImpl<UserReview>(this as UserReview, _$identity);

  /// Serializes this UserReview to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is UserReview&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.comment, comment) || other.comment == comment)&&(identical(other.imageUrl, imageUrl) || other.imageUrl == imageUrl)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.rating, rating) || other.rating == rating));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,comment,imageUrl,createdAt,rating);

@override
String toString() {
  return 'UserReview(id: $id, name: $name, comment: $comment, imageUrl: $imageUrl, createdAt: $createdAt, rating: $rating)';
}


}

/// @nodoc
abstract mixin class $UserReviewCopyWith<$Res>  {
  factory $UserReviewCopyWith(UserReview value, $Res Function(UserReview) _then) = _$UserReviewCopyWithImpl;
@useResult
$Res call({
 int id, String name, String comment,@JsonKey(name: 'image_url') String imageUrl,@JsonKey(name: 'created_at') String createdAt, double rating
});




}
/// @nodoc
class _$UserReviewCopyWithImpl<$Res>
    implements $UserReviewCopyWith<$Res> {
  _$UserReviewCopyWithImpl(this._self, this._then);

  final UserReview _self;
  final $Res Function(UserReview) _then;

/// Create a copy of UserReview
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? comment = null,Object? imageUrl = null,Object? createdAt = null,Object? rating = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,comment: null == comment ? _self.comment : comment // ignore: cast_nullable_to_non_nullable
as String,imageUrl: null == imageUrl ? _self.imageUrl : imageUrl // ignore: cast_nullable_to_non_nullable
as String,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String,rating: null == rating ? _self.rating : rating // ignore: cast_nullable_to_non_nullable
as double,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _UserReview implements UserReview {
  const _UserReview({required this.id, required this.name, required this.comment, @JsonKey(name: 'image_url') required this.imageUrl, @JsonKey(name: 'created_at') required this.createdAt, required this.rating});
  factory _UserReview.fromJson(Map<String, dynamic> json) => _$UserReviewFromJson(json);

@override final  int id;
@override final  String name;
@override final  String comment;
@override@JsonKey(name: 'image_url') final  String imageUrl;
@override@JsonKey(name: 'created_at') final  String createdAt;
@override final  double rating;

/// Create a copy of UserReview
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$UserReviewCopyWith<_UserReview> get copyWith => __$UserReviewCopyWithImpl<_UserReview>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$UserReviewToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _UserReview&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.comment, comment) || other.comment == comment)&&(identical(other.imageUrl, imageUrl) || other.imageUrl == imageUrl)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.rating, rating) || other.rating == rating));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,comment,imageUrl,createdAt,rating);

@override
String toString() {
  return 'UserReview(id: $id, name: $name, comment: $comment, imageUrl: $imageUrl, createdAt: $createdAt, rating: $rating)';
}


}

/// @nodoc
abstract mixin class _$UserReviewCopyWith<$Res> implements $UserReviewCopyWith<$Res> {
  factory _$UserReviewCopyWith(_UserReview value, $Res Function(_UserReview) _then) = __$UserReviewCopyWithImpl;
@override @useResult
$Res call({
 int id, String name, String comment,@JsonKey(name: 'image_url') String imageUrl,@JsonKey(name: 'created_at') String createdAt, double rating
});




}
/// @nodoc
class __$UserReviewCopyWithImpl<$Res>
    implements _$UserReviewCopyWith<$Res> {
  __$UserReviewCopyWithImpl(this._self, this._then);

  final _UserReview _self;
  final $Res Function(_UserReview) _then;

/// Create a copy of UserReview
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? comment = null,Object? imageUrl = null,Object? createdAt = null,Object? rating = null,}) {
  return _then(_UserReview(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,comment: null == comment ? _self.comment : comment // ignore: cast_nullable_to_non_nullable
as String,imageUrl: null == imageUrl ? _self.imageUrl : imageUrl // ignore: cast_nullable_to_non_nullable
as String,createdAt: null == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String,rating: null == rating ? _self.rating : rating // ignore: cast_nullable_to_non_nullable
as double,
  ));
}


}

// dart format on
