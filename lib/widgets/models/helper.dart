String double2str(double v) {
  if (v.toInt() == v) {
    return '${v.toInt()}';
  }
  return v.toString();
}