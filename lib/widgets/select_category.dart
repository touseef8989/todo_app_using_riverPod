import 'package:api_riverpoad/provider/provider.dart';
import 'package:api_riverpoad/utils/extensions.dart';
import 'package:api_riverpoad/utils/task_categories.dart';
import 'package:api_riverpoad/widgets/circle_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gap/gap.dart';

class SelectCategory extends ConsumerWidget {
  const SelectCategory({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final cateories = TaskCategory.values.toList();
    final selectedCategory = ref.watch(categoryProvider);
    return SizedBox(
      height: 60,
      child: Row(
        children: [
          Text(
            "Category",
            style: context.textTheme.titleLarge,
          ),
          Gap(10),
          Expanded(
              child: ListView.separated(
            physics: AlwaysScrollableScrollPhysics(),
            scrollDirection: Axis.horizontal,
            itemBuilder: (build, index) {
              final category = cateories[index];
              return InkWell(
                borderRadius: BorderRadius.circular(30),
                onTap: () {
                  ref.read(categoryProvider.notifier).state = category;
                },
                child: Container(
                  height: 50,
                  width: 50,
                  child: CircleContainer(
                    color: category.color.withOpacity(0.2),
                    child: Icon(
                      category.icon,
                      color: category == selectedCategory
                          ? context.colorScheme.primary
                          : category.color,
                    ),
                  ),
                ),
              );
            },
            separatorBuilder: (ctx, ind) => Gap(10),
            itemCount: cateories.length,
          ))
        ],
      ),
    );
  }
}
