import 'package:collection/collection.dart';

class timeData {
  final double x;
  final double y;

  timeData({
    required this.x,
    required this.y,
  });
}

List<timeData> get timeDataList {
  final data = <double>[6, 7, 8, 9, 10, 11, 12, 1];

  return data
      .mapIndexed(
        ((index, element) => timeData(
              x: index.toDouble(),
              y: element,
            )),
      )
      .toList();
}
