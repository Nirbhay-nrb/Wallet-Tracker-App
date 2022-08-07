import '../providers/filter.dart';

class Filters {
  final String userId;
  final List<Filter> _filters;
  Filters(
    this.userId,
    this._filters,
  );

  List<Filter> get filters {
    return [..._filters];
  }
}
