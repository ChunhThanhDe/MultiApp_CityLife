import 'package:flutter/material.dart';
import 'package:sixam_mart_user/app/theme/theme.dart';
import 'package:sixam_mart_user/generated/assets/assets.gen.dart';

/// A reusable GridView widget that provides common functionality:
/// - Pull to refresh
/// - Load more (infinite scroll)
/// - Empty data state
/// - Error state
/// - Loading state
/// - Support for both GridView and CustomScrollView (slivers)
/// - Configurable grid layout (crossAxisCount, aspectRatio, spacing)
///
/// This widget is designed to be used across multiple screens in the app
/// to maintain consistency and reduce code duplication.
class AppGridView<T> extends StatelessWidget {
  /// List of items to display
  final List<T> items;

  /// Builder function for each item in the grid
  final Widget Function(BuildContext context, T item, int index) itemBuilder;

  /// Function called when user pulls to refresh
  final Future<void> Function()? onRefresh;

  /// Function called when user scrolls near the bottom to load more items
  final Future<void> Function()? onLoadMore;

  /// Whether the grid is currently loading initial data
  final bool isLoading;

  /// Whether the grid is currently loading more data
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

  /// Scroll controller for the grid
  final ScrollController? scrollController;

  /// Physics for the scroll view
  final ScrollPhysics? physics;

  /// Padding for the grid
  final EdgeInsetsGeometry? padding;

  /// Number of columns in the grid
  final int crossAxisCount;

  /// Aspect ratio for grid items (width/height)
  final double childAspectRatio;

  /// Spacing between columns
  final double crossAxisSpacing;

  /// Spacing between rows
  final double mainAxisSpacing;

  /// Threshold for triggering load more (distance from bottom)
  final double loadMoreThreshold;

  /// Empty state title
  final String emptyTitle;

  /// Empty state subtitle
  final String emptySubtitle;

  /// Empty state icon
  final Widget? emptyIcon;

  /// Whether to use CustomScrollView with slivers instead of GridView
  final bool useCustomScrollView;

  /// Additional slivers to add before the grid items (only used when useCustomScrollView is true)
  final List<Widget> headerSlivers;

  /// Additional slivers to add after the grid items (only used when useCustomScrollView is true)
  final List<Widget> footerSlivers;

  /// Whether to shrink wrap the grid view
  final bool shrinkWrap;

  /// Whether to disable scrolling (useful when used inside another scrollable widget)
  final bool disableScrolling;

  const AppGridView({
    super.key,
    required this.items,
    required this.itemBuilder,
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
    this.crossAxisCount = 2,
    this.childAspectRatio = 1.0,
    this.crossAxisSpacing = 16.0,
    this.mainAxisSpacing = 16.0,
    this.loadMoreThreshold = 200.0,
    this.emptyTitle = 'No Data',
    this.emptySubtitle = 'There are no items to display',
    this.emptyIcon,
    this.useCustomScrollView = false,
    this.headerSlivers = const [],
    this.footerSlivers = const [],
    this.shrinkWrap = false,
    this.disableScrolling = false,
  });

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

    // Show grid with data
    if (useCustomScrollView) {
      return _buildCustomScrollView(context);
    } else {
      return _buildGridView(context);
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

    Widget errorContent = SizedBox(
      height: MediaQuery.of(context).size.height * 0.6,
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Assets.icons.icError.svg(
              width: 64,
              height: 64,
              colorFilter: ColorFilter.mode(
                AppColors.stateGreyDefault500,
                BlendMode.srcIn,
              ),
            ),
            const SizedBox(height: 16),
            Text(
              'Something went wrong',
              style: AppTextStyles.typographyH7Medium,
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 8),
            Text(
              errorMessage ?? 'An error occurred',
              style: AppTextStyles.typographyH11Regular.copyWith(
                color: AppColors.stateGreyDefault500,
              ),
              textAlign: TextAlign.center,
            ),
            if (onRetry != null) ...[
              const SizedBox(height: 24),
              ElevatedButton(
                onPressed: onRetry,
                style: ElevatedButton.styleFrom(
                  backgroundColor: AppColors.stateBrandDefault500,
                  foregroundColor: Colors.white,
                  padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 12),
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
                ),
                child: const Text('Try Again'),
              ),
            ],
          ],
        ),
      ),
    );

    if (useCustomScrollView) {
      List<Widget> slivers = [];
      slivers.addAll(headerSlivers);
      slivers.add(SliverToBoxAdapter(child: errorContent));
      slivers.addAll(footerSlivers);

      Widget customScrollView = CustomScrollView(
        controller: scrollController,
        physics: const AlwaysScrollableScrollPhysics(),
        slivers: slivers,
      );

      if (onRefresh != null) {
        customScrollView = RefreshIndicator(
          onRefresh: onRefresh!,
          child: customScrollView,
        );
      }

      return customScrollView;
    } else {
      return RefreshIndicator(
        onRefresh: onRefresh ?? () async {},
        child: ListView(
          physics: const AlwaysScrollableScrollPhysics(),
          children: [errorContent],
        ),
      );
    }
  }

  Widget _buildEmptyState(BuildContext context) {
    if (emptyWidget != null) {
      return emptyWidget!;
    }

    Widget emptyContent = SizedBox(
      height: MediaQuery.of(context).size.height * 0.6,
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            emptyIcon ??
                Assets.icons.icInfo.svg(
                  width: 64,
                  height: 64,
                  colorFilter: ColorFilter.mode(
                    AppColors.stateGreyDefault500,
                    BlendMode.srcIn,
                  ),
                ),
            const SizedBox(height: 16),
            Text(
              emptyTitle,
              style: AppTextStyles.typographyH7Medium,
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 8),
            Text(
              emptySubtitle,
              style: AppTextStyles.typographyH11Regular.copyWith(
                color: AppColors.stateGreyDefault500,
              ),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );

    if (useCustomScrollView) {
      List<Widget> slivers = [];
      slivers.addAll(headerSlivers);
      slivers.add(SliverToBoxAdapter(child: emptyContent));
      slivers.addAll(footerSlivers);

      Widget customScrollView = CustomScrollView(
        controller: scrollController,
        physics: const AlwaysScrollableScrollPhysics(),
        slivers: slivers,
      );

      if (onRefresh != null) {
        customScrollView = RefreshIndicator(
          onRefresh: onRefresh!,
          child: customScrollView,
        );
      }

      return customScrollView;
    } else {
      return RefreshIndicator(
        onRefresh: onRefresh ?? () async {},
        child: ListView(
          physics: const AlwaysScrollableScrollPhysics(),
          children: [emptyContent],
        ),
      );
    }
  }

  Widget _buildGridView(BuildContext context) {
    Widget gridView = GridView.builder(
      controller: scrollController,
      physics: disableScrolling 
          ? const NeverScrollableScrollPhysics() 
          : (physics ?? const AlwaysScrollableScrollPhysics()),
      padding: padding,
      shrinkWrap: shrinkWrap,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: crossAxisCount,
        childAspectRatio: childAspectRatio,
        crossAxisSpacing: crossAxisSpacing,
        mainAxisSpacing: mainAxisSpacing,
      ),
      itemCount: _getItemCount(),
      itemBuilder: _buildItem,
    );

    // Wrap with NotificationListener for load more functionality
    if (onLoadMore != null && !disableScrolling) {
      gridView = NotificationListener<ScrollNotification>(
        onNotification: _handleScrollNotification,
        child: gridView,
      );
    }

    // Wrap with RefreshIndicator if onRefresh is provided and scrolling is enabled
    if (onRefresh != null && !disableScrolling) {
      gridView = RefreshIndicator(
        onRefresh: onRefresh!,
        child: gridView,
      );
    }

    return gridView;
  }

  Widget _buildCustomScrollView(BuildContext context) {
    List<Widget> slivers = [];

    // Add header slivers
    slivers.addAll(headerSlivers);

    // Add padding if specified
    if (padding != null) {
      slivers.add(
        SliverPadding(
          padding: padding!,
          sliver: _buildSliverGrid(),
        ),
      );
    } else {
      slivers.add(_buildSliverGrid());
    }

    // Add load more indicator if needed
    if (isLoadingMore || (hasMore && onLoadMore != null)) {
      slivers.add(SliverToBoxAdapter(child: _buildLoadMoreIndicator()));
    }

    // Add footer slivers
    slivers.addAll(footerSlivers);

    Widget customScrollView = CustomScrollView(
      controller: scrollController,
      physics: disableScrolling 
          ? const NeverScrollableScrollPhysics() 
          : (physics ?? const AlwaysScrollableScrollPhysics()),
      shrinkWrap: shrinkWrap,
      slivers: slivers,
    );

    // Wrap with NotificationListener for load more functionality
    if (onLoadMore != null && !disableScrolling) {
      customScrollView = NotificationListener<ScrollNotification>(
        onNotification: _handleScrollNotification,
        child: customScrollView,
      );
    }

    // Wrap with RefreshIndicator if onRefresh is provided and scrolling is enabled
    if (onRefresh != null && !disableScrolling) {
      customScrollView = RefreshIndicator(
        onRefresh: onRefresh!,
        child: customScrollView,
      );
    }

    return customScrollView;
  }

  Widget _buildSliverGrid() {
    return SliverGrid.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: crossAxisCount,
        childAspectRatio: childAspectRatio,
        crossAxisSpacing: crossAxisSpacing,
        mainAxisSpacing: mainAxisSpacing,
      ),
      itemCount: items.length,
      itemBuilder: (context, index) => itemBuilder(context, items[index], index),
    );
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
    if (scrollInfo.metrics.pixels >= 
        scrollInfo.metrics.maxScrollExtent - loadMoreThreshold) {
      onLoadMore!();
    }

    return false;
  }
}