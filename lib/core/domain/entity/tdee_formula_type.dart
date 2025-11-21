enum TdeeFormulaType { iom2005, who2001, manual }

class TdeeFormulaTypeHelper {
  static TdeeFormulaType fromIndex(int? index) {
    if (index == null || index < 0 || index >= TdeeFormulaType.values.length) {
      return TdeeFormulaType.iom2005;
    }
    return TdeeFormulaType.values[index];
  }

  static int toIndex(TdeeFormulaType type) => type.index;
}

