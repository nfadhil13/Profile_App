extension StringExt on String {
  bool isPolindrome() {
    final currentString = this;
    var leftCursorIndex = 0;
    var rightCursorIndex = currentString.length - 1;
    for (var i = 0; i < currentString.length/2; i++) {
      final left = currentString[leftCursorIndex];
      final right = currentString[rightCursorIndex];
      if (left != right) return false;
    }
    return true;
  }
}
