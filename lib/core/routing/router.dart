import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';
import 'package:recipe_app_flutter/core/routing/routes.dart' show Routes;
import 'package:recipe_app_flutter/features/categories/presentation/pages/categories_view.dart';
import 'package:recipe_app_flutter/features/category_detail/presentation/manager/category_detail_view_model.dart';
import 'package:recipe_app_flutter/features/home/presentation/pages/home_view.dart';
import 'package:recipe_app_flutter/features/recipe_detail/presentation/manager/recipe_detail_view_model.dart';
import 'package:recipe_app_flutter/features/recipe_detail/presentation/pages/recipe_detail_view.dart' show RecipeDetailView;

import '../../features/categories/data/models/category_model.dart' show CategoryModel;
import '../../features/categories/presentation/managers/category_view_model.dart';
import '../../features/category_detail/presentation/pages/category_detail_view.dart';

final router = GoRouter(
  initialLocation:Routes.home,
  //initialLocation: '/recipe-detail/1',
  routes: [
    GoRoute(
      path: Routes.categories,
      builder: (context, state) =>
          CategoriesView(
            vm: CategoriesViewModel(catRepo: context.read()),
          ),
    ),
    GoRoute(
      path: Routes.categoryDetail,
      builder: (context, state) =>
          ChangeNotifierProvider(
            create: (context) =>
            CategoryDetailViewModel(
              catRepo: context.read(),
              recipeRepo: context.read(),
              selected: state.extra as CategoryModel,
            )
              ..load(),
            child: CategoryDetailView(),
          ),
    ),
    GoRoute(
      path: Routes.recipeDetail,
      builder: (context, state) =>
          ChangeNotifierProvider(
            create: (context) =>
                RecipeDetailViewModel(
                  recipeRepo: context.read(),
                  recipeId: int.parse(state.pathParameters['recipeId']!), // casting
                ),
            child: RecipeDetailView(),
          ),
    ),
    GoRoute(
      path: Routes.home,
      builder: (context, state) =>
          HomeView(),
    ),
  ],
);
