double valueInRange({
  required double from,
  required double to,
  required double value,
}) {
  if (from > to) {
    return valueInRange(
      from: to,
      to: from,
      value: value,
    );
  }
  if (value <= from) {
    return from;
  }
  if (value >= to) {
    return to;
  }

  return value;
}
