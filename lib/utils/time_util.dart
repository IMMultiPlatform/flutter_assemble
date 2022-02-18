class TimeUtil {
  /// 距离当前时间的差值
  static String timeDiffToNow(String time) {
    DateTime dateTime = DateTime.parse(time);
    DateTime now = DateTime.now();
    Duration duration = now.difference(dateTime);
    if (duration.inDays > 0) {
      return "${duration.inDays} 天前";
    }

    if (duration.inHours > 0) {
      return "${duration.inHours} 小时前";
    }

    if (duration.inMinutes > 0) {
      return "${duration.inDays} 分钟前";
    }

    return "1 分钟前";
  }
}
