import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sixam_mart_user/app/localization/locale_keys.g.dart';
import 'package:sixam_mart_user/base/api_result.dart';
import 'package:sixam_mart_user/base/base_controller.dart';
import 'package:sixam_mart_user/base/network_exceptions.dart';
import 'package:sixam_mart_user/domain/models/response/search_response.dart';
import 'package:sixam_mart_user/domain/repositories/search_repository.dart';
import 'package:sixam_mart_user/presentation/shared/global/app_snackbar.dart';

class SearchController extends BaseController {
  final FocusNode focusNode = FocusNode();
  final TextEditingController textController = TextEditingController();
  final SearchRepository _searchRepository = SearchRepository();

  // State variables
  final Rx<SearchResponse?> searchData = Rx<SearchResponse?>(null);
  final RxBool isInitialState = true.obs;
  final RxString currentQuery = ''.obs;

  @override
  void onInit() {
    super.onInit();

    // Load initial data on screen load
    loadInitialData();

    // Set up debounce for search
    debounce(currentQuery, (query) {
      if (query.isEmpty) {
        loadInitialData();
      } else {
        performSearch(query);
      }
    }, time: const Duration(milliseconds: 300));

    // Listen to text changes
    textController.addListener(_onSearchTextChanged);
  }

  @override
  void onClose() {
    focusNode.dispose();
    textController.dispose();
    super.onClose();
  }

  void _onSearchTextChanged() {
    final query = textController.text.trim();
    currentQuery.value = query;
  }

  Future<void> loadInitialData() async {
    isLoading.value = true;
    try {
      final result = await _searchRepository.searchStores();

      switch (result) {
        case Success(response: final response):
          final searchResponse = SearchResponse.fromJson(response.data);
          searchData.value = searchResponse;
          isInitialState.value = true;
        case Failure(error: final error):
          final errorMessage = NetworkExceptions.getErrorMessage(error);
          showAppSnackBar(title: 'Search', message: errorMessage);
      }
    } catch (e) {
      showAppSnackBar(title: 'Search', message: 'Error loading search data: $e');
    } finally {
      isLoading.value = false;
    }
  }

  Future<void> performSearch(String query) async {
    if (query.isEmpty) return;

    isLoading.value = true;
    try {
      final result = await _searchRepository.searchStores(query: query);

      switch (result) {
        case Success(response: final response):
          final searchResponse = SearchResponse.fromJson(response.data);
          searchData.value = searchResponse;
          isInitialState.value = false;
        case Failure(error: final error):
          final errorMessage = NetworkExceptions.getErrorMessage(error);
          showAppSnackBar(title: 'Search', message: errorMessage);
      }
    } catch (e) {
      showAppSnackBar(title: tr(LocaleKeys.base_error_default), type: SnackBarType.error);
    } finally {
      isLoading.value = false;
    }
  }

  void onTapSearchItem(String query) {
    textController.text = query;
    currentQuery.value = query;
    performSearch(query);
  }

  void clearSearch() {
    textController.clear();
    currentQuery.value = '';
    isInitialState.value = true;
    loadInitialData();
  }
}
