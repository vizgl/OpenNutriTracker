import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:opennutritracker/core/domain/entity/tdee_formula_type.dart';
import 'package:opennutritracker/features/diary/presentation/bloc/calendar_day_bloc.dart';
import 'package:opennutritracker/features/diary/presentation/bloc/diary_bloc.dart';
import 'package:opennutritracker/features/home/presentation/bloc/home_bloc.dart';
import 'package:opennutritracker/features/profile/presentation/bloc/profile_bloc.dart';
import 'package:opennutritracker/features/settings/presentation/bloc/settings_bloc.dart';
import 'package:opennutritracker/generated/l10n.dart';

class CalculationsDialog extends StatefulWidget {
  final SettingsBloc settingsBloc;
  final ProfileBloc profileBloc;
  final HomeBloc homeBloc;
  final DiaryBloc diaryBloc;
  final CalendarDayBloc calendarDayBloc;

  const CalculationsDialog({
    super.key,
    required this.settingsBloc,
    required this.profileBloc,
    required this.homeBloc,
    required this.diaryBloc,
    required this.calendarDayBloc,
  });

  @override
  State<CalculationsDialog> createState() => _CalculationsDialogState();
}

class _CalculationsDialogState extends State<CalculationsDialog> {
  static const double _maxKcalAdjustment = 1000;
  static const double _minKcalAdjustment = -1000;
  static const int _kcalDivisions = 200;
  double _kcalAdjustmentSelection = 0;

  static const double _defaultCarbsPctSelection = 0.6;
  static const double _defaultFatPctSelection = 0.25;
  static const double _defaultProteinPctSelection = 0.15;

  // Macros percentages
  double _carbsPctSelection = _defaultCarbsPctSelection * 100;
  double _proteinPctSelection = _defaultProteinPctSelection * 100;
  double _fatPctSelection = _defaultFatPctSelection * 100;

  TdeeFormulaType _selectedFormula = TdeeFormulaType.iom2005;
  final _manualCalorieController = TextEditingController();
  final _manualCarbsController = TextEditingController();
  final _manualProteinController = TextEditingController();
  final _manualFatController = TextEditingController();
  String? _manualValidationError;

  bool get _isManualFormula => _selectedFormula == TdeeFormulaType.manual;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    _initializeKcalAdjustment();
  }

  void _initializeKcalAdjustment() async {
    final kcalAdjustment = await widget.settingsBloc.getKcalAdjustment() *
        1.0; // Convert to double
    final userCarbsPct = await widget.settingsBloc.getUserCarbGoalPct();
    final userProteinPct = await widget.settingsBloc.getUserProteinGoalPct();
    final userFatPct = await widget.settingsBloc.getUserFatGoalPct();
    final selectedFormula = await widget.settingsBloc.getTdeeFormulaType();
    final manualCalorieGoal = await widget.settingsBloc.getManualCalorieGoal();
    final manualCarbGoal = await widget.settingsBloc.getManualCarbGoal();
    final manualProteinGoal =
        await widget.settingsBloc.getManualProteinGoal();
    final manualFatGoal = await widget.settingsBloc.getManualFatGoal();

    setState(() {
      _kcalAdjustmentSelection = kcalAdjustment;
      _carbsPctSelection = (userCarbsPct ?? _defaultCarbsPctSelection) * 100;
      _proteinPctSelection =
          (userProteinPct ?? _defaultProteinPctSelection) * 100;
      _fatPctSelection = (userFatPct ?? _defaultFatPctSelection) * 100;
      _selectedFormula = selectedFormula;
      _manualCalorieController.text =
          manualCalorieGoal?.toStringAsFixed(0) ?? '';
      _manualCarbsController.text =
          manualCarbGoal?.toStringAsFixed(0) ?? '';
      _manualProteinController.text =
          manualProteinGoal?.toStringAsFixed(0) ?? '';
      _manualFatController.text = manualFatGoal?.toStringAsFixed(0) ?? '';
    });
  }

  @override
  void dispose() {
    _manualCalorieController.dispose();
    _manualCarbsController.dispose();
    _manualProteinController.dispose();
    _manualFatController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: Text(
              S.of(context).settingsCalculationsLabel,
              overflow: TextOverflow.ellipsis,
            ),
          ),
          const SizedBox(width: 8), // Add spacing between text and button
          TextButton(
            child: Text(S.of(context).buttonResetLabel),
            onPressed: () {
              setState(() {
                _kcalAdjustmentSelection = 0;
                // Reset macros to default values
                _carbsPctSelection = _defaultCarbsPctSelection * 100;
                _proteinPctSelection = _defaultProteinPctSelection * 100;
                _fatPctSelection = _defaultFatPctSelection * 100;
                _selectedFormula = TdeeFormulaType.iom2005;
                _manualValidationError = null;
                _manualCalorieController.clear();
                _manualCarbsController.clear();
                _manualProteinController.clear();
                _manualFatController.clear();
              });
            },
          ),
        ],
      ),
      content: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            DropdownButtonFormField<TdeeFormulaType>(
              value: _selectedFormula,
              isExpanded: true,
              decoration: InputDecoration(
                filled: false,
                labelText: S.of(context).calculationsTDEELabel,
              ),
              items: [
                DropdownMenuItem(
                  value: TdeeFormulaType.iom2005,
                  child: Text(
                    '${S.of(context).calculationsTDEEIOM2006Label} ${S.of(context).calculationsRecommendedLabel}',
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                DropdownMenuItem(
                  value: TdeeFormulaType.who2001,
                  child: Text(
                    S.of(context).calculationsTDEEWHO2001Label,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                DropdownMenuItem(
                  value: TdeeFormulaType.manual,
                  child: Text(
                    S.of(context).calculationsTDEEManualLabel,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
              ],
              onChanged: (value) {
                if (value == null) {
                  return;
                }
                setState(() {
                  _selectedFormula = value;
                  _manualValidationError = null;
                });
              },
            ),
            const SizedBox(height: 24),
            if (_isManualFormula)
              _buildManualTargetsSection(context)
            else ...[
              Container(
                alignment: Alignment.centerLeft,
                child: Text(
                  '${S.of(context).dailyKcalAdjustmentLabel} ${!_kcalAdjustmentSelection.isNegative ? "+" : ""}${_kcalAdjustmentSelection.round()} ${S.of(context).kcalLabel}',
                  style: Theme.of(context).textTheme.titleMedium,
                ),
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: SizedBox(
                  width: 280,
                  child: Slider(
                    min: _minKcalAdjustment,
                    max: _maxKcalAdjustment,
                    divisions: _kcalDivisions,
                    value: _kcalAdjustmentSelection,
                    label:
                        '${_kcalAdjustmentSelection.round()} ${S.of(context).kcalLabel}',
                    onChanged: (value) {
                      setState(() {
                        _kcalAdjustmentSelection = value;
                      });
                    },
                  ),
                ),
              ),
              const SizedBox(height: 32),
              Text(
                S.of(context).macroDistributionLabel,
                style: Theme.of(context).textTheme.titleMedium,
              ),
              const SizedBox(height: 32),
              _buildMacroSlider(
                S.of(context).carbsLabel,
                _carbsPctSelection,
                Colors.orange,
                (value) {
                  setState(() {
                    double delta = value - _carbsPctSelection;
                    _carbsPctSelection = value;

                    // Adjust other percentages proportionally
                    double proteinRatio = _proteinPctSelection /
                        (_proteinPctSelection + _fatPctSelection);
                    double fatRatio = _fatPctSelection /
                        (_proteinPctSelection + _fatPctSelection);

                    _proteinPctSelection -= delta * proteinRatio;
                    _fatPctSelection -= delta * fatRatio;

                    // Ensure no value goes below 5%
                    if (_proteinPctSelection < 5) {
                      double overflow = 5 - _proteinPctSelection;
                      _proteinPctSelection = 5;
                      _fatPctSelection -= overflow;
                    }
                    if (_fatPctSelection < 5) {
                      double overflow = 5 - _fatPctSelection;
                      _fatPctSelection = 5;
                      _proteinPctSelection -= overflow;
                    }
                  });
                },
              ),
              _buildMacroSlider(
                S.of(context).proteinLabel,
                _proteinPctSelection,
                Colors.blue,
                (value) {
                  setState(() {
                    double delta = value - _proteinPctSelection;
                    _proteinPctSelection = value;

                    double carbsRatio = _carbsPctSelection /
                        (_carbsPctSelection + _fatPctSelection);
                    double fatRatio = _fatPctSelection /
                        (_carbsPctSelection + _fatPctSelection);

                    _carbsPctSelection -= delta * carbsRatio;
                    _fatPctSelection -= delta * fatRatio;

                    if (_carbsPctSelection < 5) {
                      double overflow = 5 - _carbsPctSelection;
                      _carbsPctSelection = 5;
                      _fatPctSelection -= overflow;
                    }
                    if (_fatPctSelection < 5) {
                      double overflow = 5 - _fatPctSelection;
                      _fatPctSelection = 5;
                      _carbsPctSelection -= overflow;
                    }
                  });
                },
              ),
              _buildMacroSlider(
                S.of(context).fatLabel,
                _fatPctSelection,
                Colors.green,
                (value) {
                  setState(() {
                    double delta = value - _fatPctSelection;
                    _fatPctSelection = value;

                    double carbsRatio = _carbsPctSelection /
                        (_carbsPctSelection + _proteinPctSelection);
                    double proteinRatio = _proteinPctSelection /
                        (_carbsPctSelection + _proteinPctSelection);

                    _carbsPctSelection -= delta * carbsRatio;
                    _proteinPctSelection -= delta * proteinRatio;

                    if (_carbsPctSelection < 5) {
                      double overflow = 5 - _carbsPctSelection;
                      _carbsPctSelection = 5;
                      _proteinPctSelection -= overflow;
                    }
                    if (_proteinPctSelection < 5) {
                      double overflow = 5 - _proteinPctSelection;
                      _proteinPctSelection = 5;
                      _carbsPctSelection -= overflow;
                    }
                  });
                },
              ),
            ],
          ],
        ),
      ),
      actions: [
        TextButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            child: Text(S.of(context).dialogCancelLabel)),
        TextButton(
            onPressed: () {
              _saveCalculationSettings();
            },
            child: Text(S.of(context).dialogOKLabel))
      ],
    );
  }

  Widget _buildMacroSlider(
    String label,
    double value,
    Color color,
    ValueChanged<double> onChanged,
  ) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(label),
            Text('${value.round()}%'),
          ],
        ),
        SizedBox(
          width: 280,
          child: SliderTheme(
            data: SliderThemeData(
              activeTrackColor: color,
              thumbColor: color,
              inactiveTrackColor: color.withValues(alpha: 0.2),
            ),
            child: Slider(
              min: 5,
              max: 90,
              value: value,
              divisions: 85,
              onChanged: (value) {
                final newValue = value.round().toDouble();
                if (100 - newValue >= 10) {
                  onChanged(newValue);
                  _normalizeMacros();
                }
              },
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildManualTargetsSection(BuildContext context) {
    final theme = Theme.of(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          S.of(context).manualTargetsSectionLabel,
          style: theme.textTheme.titleMedium,
        ),
        const SizedBox(height: 8),
        Text(
          S.of(context).manualTargetsDescription,
          style: theme.textTheme.bodyMedium
              ?.copyWith(color: theme.colorScheme.onSurfaceVariant),
        ),
        const SizedBox(height: 16),
        _buildManualNumberField(
          controller: _manualCalorieController,
          label: S.of(context).manualCalorieGoalLabel,
          suffixText: S.of(context).kcalLabel,
        ),
        _buildManualNumberField(
          controller: _manualCarbsController,
          label: S.of(context).manualCarbsGoalLabel,
          suffixText: S.of(context).gramUnit,
        ),
        _buildManualNumberField(
          controller: _manualProteinController,
          label: S.of(context).manualProteinsGoalLabel,
          suffixText: S.of(context).gramUnit,
        ),
        _buildManualNumberField(
          controller: _manualFatController,
          label: S.of(context).manualFatsGoalLabel,
          suffixText: S.of(context).gramUnit,
        ),
        if (_manualValidationError != null)
          Padding(
            padding: const EdgeInsets.only(top: 8.0),
            child: Text(
              _manualValidationError!,
              style: theme.textTheme.bodySmall
                  ?.copyWith(color: theme.colorScheme.error),
            ),
          ),
      ],
    );
  }

  Widget _buildManualNumberField(
      {required TextEditingController controller,
      required String label,
      required String suffixText}) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 16.0),
      child: TextField(
        controller: controller,
        keyboardType:
            const TextInputType.numberWithOptions(decimal: true, signed: false),
        inputFormatters: [
          FilteringTextInputFormatter.allow(RegExp(r'[0-9,.\-]')),
        ],
        decoration: InputDecoration(
          labelText: label,
          suffixText: suffixText,
        ),
      ),
    );
  }

  double? _parseManualValue(TextEditingController controller) {
    final text = controller.text.replaceAll(',', '.').trim();
    if (text.isEmpty) {
      return null;
    }
    return double.tryParse(text);
  }

  void _normalizeMacros() {
    setState(() {
      // First, ensure all values are rounded
      _carbsPctSelection = _carbsPctSelection.roundToDouble();
      _proteinPctSelection = _proteinPctSelection.roundToDouble();
      _fatPctSelection = _fatPctSelection.roundToDouble();

      // Calculate total
      double total =
          _carbsPctSelection + _proteinPctSelection + _fatPctSelection;

      // If total isn't 100, adjust values proportionally
      if (total != 100) {
        // Calculate adjustment factor
        double factor = 100 / total;

        // Adjust the first two values
        _carbsPctSelection = (_carbsPctSelection * factor).roundToDouble();
        _proteinPctSelection = (_proteinPctSelection * factor).roundToDouble();

        // Set the last value to make total exactly 100
        _fatPctSelection = 100 - _carbsPctSelection - _proteinPctSelection;

        // Ensure minimum values (5%)
        if (_fatPctSelection < 5) {
          _fatPctSelection = 5;
          // Distribute remaining 95% proportionally between carbs and protein
          double remaining = 95;
          double ratio =
              _carbsPctSelection / (_carbsPctSelection + _proteinPctSelection);
          _carbsPctSelection = (remaining * ratio).roundToDouble();
          _proteinPctSelection = remaining - _carbsPctSelection;
        }
      }

      // Verify final values
      assert(
          _carbsPctSelection + _proteinPctSelection + _fatPctSelection == 100,
          'Macros must total 100%');
    });
  }

  _ManualTargets? _collectManualTargets(BuildContext context) {
    final calories = _parseManualValue(_manualCalorieController);
    final carbs = _parseManualValue(_manualCarbsController);
    final protein = _parseManualValue(_manualProteinController);
    final fat = _parseManualValue(_manualFatController);

    if (calories == null ||
        calories <= 0 ||
        carbs == null ||
        carbs <= 0 ||
        protein == null ||
        protein <= 0 ||
        fat == null ||
        fat <= 0) {
      setState(() {
        _manualValidationError = S.of(context).manualTargetsValidationError;
      });
      return null;
    }

    setState(() {
      _manualValidationError = null;
    });

    return _ManualTargets(
        calories: calories, carbs: carbs, protein: protein, fat: fat);
  }

  Future<void> _saveCalculationSettings() async {
    widget.settingsBloc.setTdeeFormulaType(_selectedFormula);

    if (_isManualFormula) {
      final manualTargets = _collectManualTargets(context);
      if (manualTargets == null) {
        return;
      }
      await widget.settingsBloc.setManualTargets(
          manualCalorieGoal: manualTargets.calories,
          manualCarbsGoal: manualTargets.carbs,
          manualProteinGoal: manualTargets.protein,
          manualFatGoal: manualTargets.fat);
    } else {
      await widget.settingsBloc.setManualTargets(
          manualCalorieGoal: null,
          manualCarbsGoal: null,
          manualProteinGoal: null,
          manualFatGoal: null);
      widget.settingsBloc
          .setKcalAdjustment(_kcalAdjustmentSelection.toInt().toDouble());
      widget.settingsBloc.setMacroGoals(
          _carbsPctSelection, _proteinPctSelection, _fatPctSelection);
    }

    widget.settingsBloc.add(LoadSettingsEvent());
    // Update other blocs that need the new calorie value
    widget.profileBloc.add(LoadProfileEvent());
    widget.homeBloc.add(LoadItemsEvent());

    // Update tracked day entity
    widget.settingsBloc.updateTrackedDay(DateTime.now());
    widget.diaryBloc.add(LoadDiaryYearEvent());
    widget.calendarDayBloc.add(RefreshCalendarDayEvent());

    if (context.mounted) {
      Navigator.of(context).pop();
    }
  }
}

class _ManualTargets {
  final double calories;
  final double carbs;
  final double protein;
  final double fat;

  const _ManualTargets(
      {required this.calories,
      required this.carbs,
      required this.protein,
      required this.fat});
}
