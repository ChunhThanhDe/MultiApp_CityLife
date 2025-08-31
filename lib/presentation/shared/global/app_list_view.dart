import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:sixam_mart_user/app/localization/locale_keys.g.dart';
import 'package:sixam_mart_user/app/theme/theme.dart';
import 'package:sixam_mart_user/generated/assets/assets.gen.dart';

/// A reusable ListView widget that provides common functionality:
/// - Pull to refresh
/// - Load more (infinite scroll)
/// - Empty data state
/// - Error state
/// - Loading state
/// - Support for both ListView and CustomScrollView (slivers)
///
/// This widget is designed to be used across multiple screens in the app
/// to maintain consistency and reduce code duplication.
class AppListView<T> extends StatelessWidget {
  const AppListView({
    required this.items,
    required this.itemBuilder,
    super.key,
    this.onRefresh,
    this.onLoadMore,
    this.isLoading = false,
    this.isLoadingMore = false,
    this.hasMore = true,
    this.errorMessage,
    this.onRetry,
    this.emptyWidget,
    this.errorWidget,
    this.loadingWidget,
    this.loadMoreWidget,
    this.scrollController,
    this.physics,
    this.padding,
    this.separatorBuilder,
    this.showSeparator = false,
    this.loadMoreThreshold = 200.0,
    this.emptyTitle = 'No Data',
    this.emptySubtitle = 'There are no items to display',
    this.emptyIcon,
    this.useCustomScrollView = false,
    this.headerSlivers = const [],
    this.footerSlivers = const [],
  });

  /// List of items to display
  final List<T> items;

  /// Builder function for each item in the list
  final Widget Function(BuildContext context, T item, int index) itemBuilder;

  /// Function called when user pulls to refresh
  final Future<void> Function()? onRefresh;

  /// Function called when user scrolls near the bottom to load more items
  final Future<void> Function()? onLoadMore;

  /// Whether the list is currently loading initial data
  final bool isLoading;

  /// Whether the list is currently loading more data
  final bool isLoadingMore;

  /// Whether there are more items to load
  final bool hasMore;

  /// Error message to display when there's an error
  final String? errorMessage;

  /// Function called when user taps retry on error state
  final VoidCallback? onRetry;

  /// Custom empty state widget
  final Widget? emptyWidget;

  /// Custom error state widget
  final Widget? errorWidget;

  /// Custom loading widget
  final Widget? loadingWidget;

  /// Custom load more widget
  final Widget? loadMoreWidget;

  /// Scroll controller for the list
  final ScrollController? scrollController;

  /// Physics for the scroll view
  final ScrollPhysics? physics;

  /// Padding for the list
  final EdgeInsetsGeometry? padding;

  /// Separator builder for items
  final Widget Function(BuildContext context, int index)? separatorBuilder;

  /// Whether to show separators between items
  final bool showSeparator;

  /// Threshold for triggering load more (distance from bottom)
  final double loadMoreThreshold;

  /// Empty state title
  final String emptyTitle;

  /// Empty state subtitle
  final String emptySubtitle;

  /// Empty state icon
  final Widget? emptyIcon;

  /// Whether to use CustomScrollView with slivers instead of ListView
  final bool useCustomScrollView;

  /// Additional slivers to add before the list items (only used when useCustomScrollView is true)
  final List<Widget> headerSlivers;

  /// Additional slivers to add after the list items (only used when useCustomScrollView is true)
  final List<Widget> footerSlivers;

  @override
  Widget build(BuildContext context) {
    // Show loading state for initial load
    if (isLoading && items.isEmpty) {
      return _buildLoadingState();
    }

    // Show error state
    if (errorMessage != null && errorMessage!.isNotEmpty && items.isEmpty) {
      return _buildErrorState(context);
    }

    // Show empty state
    if (items.isEmpty) {
      return _buildEmptyState(context);
    }

    // Show list with data
    if (useCustomScrollView) {
      return _buildCustomScrollView(context);
    } else {
      return _buildListView(context);
    }
  }

  Widget _buildLoadingState() {
    if (loadingWidget != null) {
      return loadingWidget!;
    }

    return const Center(child: CircularProgressIndicator());
  }

  Widget _buildErrorState(BuildContext context) {
    if (errorWidget != null) {
      return errorWidget!;
    }

    final Widget errorContent = SizedBox(
      height: MediaQuery.of(context).size.height * 0.6,
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Assets.icons.icError.svg(width: 64, height: 64, colorFilter: ColorFilter.mode(AppColors.stateGreyDefault500, BlendMode.srcIn)),
            const SizedBox(height: 16),
            Text(tr(LocaleKeys.shared_somethingWentWrong), style: AppTextStyles.typographyH7Medium, textAlign: TextAlign.center),
            const SizedBox(height: 8),
            Text(
              errorMessage ?? 'An error occurred',
              style: AppTextStyles.typographyH11Regular.copyWith(color: AppColors.stateGreyDefault500),
              textAlign: TextAlign.center,
            ),
            if (onRetry != null) ...[
              const SizedBox(height: 24),
              ElevatedButton(
                onPressed: onRetry,
                style: ElevatedButton.styleFrom(
                  backgroundColor: AppColors.stateBrandDefault500,
                  foregroundColor: AppColors.backgroundSurfacePrimaryWhite,
                  padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
                ),
                child: Text(tr(LocaleKeys.shared_tryAgain)),
              ),
            ],
          ],
        ),
      ),
    );

    if (useCustomScrollView) {
      final List<Widget> slivers = [];
      slivers.addAll(headerSlivers);
      slivers.add(SliverToBoxAdapter(child: errorContent));
      slivers.addAll(footerSlivers);

      Widget customScrollView = CustomScrollView(controller: scrollController, physics: const AlwaysScrollableScrollPhysics(), slivers: slivers);

      if (onRefresh != null) {
        customScrollView = RefreshIndicator(onRefresh: onRefresh!, child: customScrollView);
      }

      return customScrollView;
    } else {
      Widget listView = ListView(physics: const AlwaysScrollableScrollPhysics(), children: [errorContent]);

      if (onRefresh != null) {
        listView = RefreshIndicator(onRefresh: onRefresh!, child: listView);
      }

      return listView;
    }
  }

  Widget _buildEmptyState(BuildContext context) {
    Widget emptyContent;

    if (emptyWidget != null) {
      emptyContent = emptyWidget!;
    } else {
      emptyContent = SizedBox(
        height: MediaQuery.of(context).size.height * 0.6,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              emptyIcon ?? Assets.icons.icInfo.svg(width: 64, height: 64, colorFilter: ColorFilter.mode(AppColors.stateGreyDefault500, BlendMode.srcIn)),
              const SizedBox(height: 16),
              Text(emptyTitle, style: AppTextStyles.typographyH7Medium, textAlign: TextAlign.center),
              const SizedBox(height: 8),
              Text(
                emptySubtitle,
                style: AppTextStyles.typographyH11Regular.copyWith(color: AppColors.stateGreyDefault500),
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      );
    }

    if (useCustomScrollView) {
      final List<Widget> slivers = [];
      slivers.addAll(headerSlivers);
      slivers.add(SliverToBoxAdapter(child: emptyContent));
      slivers.addAll(footerSlivers);

      Widget customScrollView = CustomScrollView(controller: scrollController, physics: const AlwaysScrollableScrollPhysics(), slivers: slivers);

      if (onRefresh != null) {
        customScrollView = RefreshIndicator(onRefresh: onRefresh!, child: customScrollView);
      }

      return customScrollView;
    } else {
      Widget listView = ListView(physics: const AlwaysScrollableScrollPhysics(), children: [emptyContent]);

      if (onRefresh != null) {
        listView = RefreshIndicator(onRefresh: onRefresh!, child: listView);
      }

      return listView;
    }
  }

  Widget _buildListView(BuildContext context) {
    Widget listView;

    if (showSeparator && separatorBuilder != null) {
      listView = ListView.separated(
        controller: scrollController,
        physics: physics ?? const AlwaysScrollableScrollPhysics(),
        padding: padding,
        itemCount: _getItemCount(),
        itemBuilder: _buildItem,
        separatorBuilder: separatorBuilder!,
      );
    } else {
      listView = ListView.builder(controller: scrollController, physics: physics ?? const AlwaysScrollableScrollPhysics(), padding: padding, itemCount: _getItemCount(), itemBuilder: _buildItem);
    }

    // Wrap with NotificationListener for load more functionality
    if (onLoadMore != null) {
      listView = NotificationListener<ScrollNotification>(onNotification: _handleScrollNotification, child: listView);
    }

    // Wrap with RefreshIndicator if onRefresh is provided
    if (onRefresh != null) {
      listView = RefreshIndicator(onRefresh: onRefresh!, child: listView);
    }

    return listView;
  }

  Widget _buildCustomScrollView(BuildContext context) {
    final List<Widget> slivers = [];

    // Add header slivers
    slivers.addAll(headerSlivers);

    // Add padding if specified
    if (padding != null) {
      slivers.add(SliverPadding(padding: padding!, sliver: _buildSliverList()));
    } else {
      slivers.add(_buildSliverList());
    }

    // Add load more indicator if needed
    if (isLoadingMore || (hasMore && onLoadMore != null)) {
      slivers.add(SliverToBoxAdapter(child: _buildLoadMoreIndicator()));
    }

    // Add footer slivers
    slivers.addAll(footerSlivers);

    Widget customScrollView = CustomScrollView(controller: scrollController, physics: physics ?? const AlwaysScrollableScrollPhysics(), slivers: slivers);

    // Wrap with NotificationListener for load more functionality
    if (onLoadMore != null) {
      customScrollView = NotificationListener<ScrollNotification>(onNotification: _handleScrollNotification, child: customScrollView);
    }

    // Wrap with RefreshIndicator if onRefresh is provided
    if (onRefresh != null) {
      customScrollView = RefreshIndicator(onRefresh: onRefresh!, child: customScrollView);
    }

    return customScrollView;
  }

  Widget _buildSliverList() {
    if (showSeparator && separatorBuilder != null) {
      return SliverList.separated(itemCount: items.length, itemBuilder: (context, index) => itemBuilder(context, items[index], index), separatorBuilder: separatorBuilder!);
    } else {
      return SliverList.builder(itemCount: items.length, itemBuilder: (context, index) => itemBuilder(context, items[index], index));
    }
  }

  int _getItemCount() {
    int count = items.length;

    // Add 1 for load more indicator if needed
    if (isLoadingMore || (hasMore && onLoadMore != null)) {
      count += 1;
    }

    return count;
  }

  Widget _buildItem(BuildContext context, int index) {
    // Check if this is the load more indicator
    if (index >= items.length) {
      return _buildLoadMoreIndicator();
    }

    // Build regular item
    return itemBuilder(context, items[index], index);
  }

  Widget _buildLoadMoreIndicator() {
    if (loadMoreWidget != null) {
      return loadMoreWidget!;
    }

    if (isLoadingMore) {
      return const Padding(
        padding: EdgeInsets.symmetric(vertical: 16),
        child: Center(child: CircularProgressIndicator()),
      );
    }

    // Show empty container if no more items to load
    if (!hasMore) {
      return const SizedBox.shrink();
    }

    // This will trigger load more when it becomes visible
    return const SizedBox(height: 1, child: SizedBox.shrink());
  }

  bool _handleScrollNotification(ScrollNotification scrollInfo) {
    if (onLoadMore == null || isLoadingMore || !hasMore) {
      return false;
    }

    // Check if user scrolled near the bottom
    if (scrollInfo.metrics.pixels >= scrollInfo.metrics.maxScrollExtent - loadMoreThreshold) {
      onLoadMore!();
    }

    return false;
  }
}
