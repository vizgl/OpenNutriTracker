import 'package:flutter/material.dart';
import 'package:opennutritracker/core/domain/entity/tracked_day_entity.dart';
import 'package:opennutritracker/generated/l10n.dart';

class MacroProgressChart extends StatelessWidget {
  final TrackedDayEntity trackedDay;

  const MacroProgressChart({super.key, required this.trackedDay});

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    final surfaceVariant = colorScheme.surfaceVariant;

    final rows = [
      _MacroRowData(
        label: S.of(context).kcalLabel,
        consumed: trackedDay.caloriesTracked,
        goal: trackedDay.calorieGoal,
        unitLabel: S.of(context).kcalLabel,
        barColor: colorScheme.primary,
      ),
      _MacroRowData(
        label: S.of(context).proteinLabel,
        consumed: trackedDay.proteinTracked,
        goal: trackedDay.proteinGoal,
        unitLabel: S.of(context).gramUnit,
        barColor: colorScheme.primary,
      ),
      _MacroRowData(
        label: S.of(context).fatLabel,
        consumed: trackedDay.fatTracked,
        goal: trackedDay.fatGoal,
        unitLabel: S.of(context).gramUnit,
        barColor: colorScheme.primary,
      ),
      _MacroRowData(
        label: S.of(context).carbsLabel,
        consumed: trackedDay.carbsTracked,
        goal: trackedDay.carbsGoal,
        unitLabel: S.of(context).gramUnit,
        barColor: colorScheme.primary,
      ),
    ];

    return Card(
      margin: EdgeInsets.zero,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              S.of(context).macroDistributionLabel,
              style: Theme.of(context).textTheme.titleMedium,
            ),
            const SizedBox(height: 12.0),
            ...rows.map(
              (row) => Padding(
                padding: const EdgeInsets.only(bottom: 12.0),
                child: _MacroProgressRow(
                  row: row,
                  surfaceVariant: surfaceVariant,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _MacroProgressRow extends StatelessWidget {
  final _MacroRowData row;
  final Color surfaceVariant;

  const _MacroProgressRow({required this.row, required this.surfaceVariant});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final textTheme = theme.textTheme;
    final goalLabel = S.of(context).goalLabel;
    final suppliedLabel = S.of(context).suppliedLabel;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Expanded(
              child: Text(
                row.label,
                style: textTheme.bodyLarge?.copyWith(
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            Text(
              '${suppliedLabel}: ${row.formattedConsumed} / '
              '$goalLabel: ${row.formattedGoal} ${row.unitLabel}',
              style: textTheme.bodySmall?.copyWith(
                color: theme.colorScheme.onSurface.withOpacity(0.6),
              ),
            ),
          ],
        ),
        const SizedBox(height: 8.0),
        LayoutBuilder(
          builder: (context, constraints) {
            final barHeight = 8.0;
            final ratio = row.progressRatio;
            final maxWidth = constraints.maxWidth;
            final normalRatio = ratio.clamp(0.0, 1.0);
            final overflowRatio = (ratio - 1.0).clamp(0.0, 1.0);
            final normalWidth = maxWidth * normalRatio;
            final overflowWidth = maxWidth * overflowRatio;
            final overflowLeft =
                overflowWidth > 0 ? maxWidth - overflowWidth : 0.0;

            return ClipRRect(
              borderRadius: BorderRadius.circular(4.0),
              child: SizedBox(
                height: barHeight,
                child: Stack(
                  children: [
                    Container(color: surfaceVariant.withOpacity(0.6)),
                    if (normalWidth > 0)
                      Positioned(
                        left: 0,
                        child: Container(
                          width: normalWidth,
                          height: barHeight,
                          color: row.barColor,
                        ),
                      ),
                    if (overflowWidth > 0)
                      Positioned(
                        left: overflowLeft,
                        child: Container(
                          width: overflowWidth,
                          height: barHeight,
                          color: Theme.of(context).colorScheme.error,
                        ),
                      ),
                  ],
                ),
              ),
            );
          },
        )
      ],
    );
  }
}

class _MacroRowData {
  final String label;
  final double? consumed;
  final double? goal;
  final String unitLabel;
  final Color barColor;

  _MacroRowData({
    required this.label,
    required this.consumed,
    required this.goal,
    required this.unitLabel,
    required this.barColor,
  });

  static const _minGoalValue = 0.1;

  String get formattedConsumed =>
      consumed == null ? '—' : _formatNumber(consumed!);

  String get formattedGoal =>
      goal == null ? '—' : _formatNumber(goal!);

  double get progressRatio {
    if (goal == null ||
        goal!.isNaN ||
        goal!.isInfinite ||
        goal! < _minGoalValue ||
        consumed == null ||
        consumed!.isNaN ||
        consumed!.isInfinite) {
      return 0;
    }
    return (consumed! / goal!).clamp(0, 2);
  }

  static String _formatNumber(double value) {
    if (value.abs() >= 1000) {
      return value.toStringAsFixed(0);
    }
    return value.toStringAsFixed(0);
  }
}

