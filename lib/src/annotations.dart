/// Annotation for classes and enums to generate Crimson JSON support.
class Json {
  /// Annotation for classes and enums to generate Crimson JSON support.
  const Json({this.enumField, this.genListDecode = false});

  /// The name of the field to use for enum classes.
  ///
  /// Defaults to `name`. You can also `index` to use the enum ordinal or a
  /// custom field.
  final String? enumField;
  
  /// Whether to generate a `readFooList` for parsing a list of `Foo` objects.
  final bool genListDecode;
}

/// Annotation for classes and enums to generate Crimson JSON support.
const json = Json();

/// @nodoc
class JsonKebabCase extends Json {
  /// @nodoc
  const JsonKebabCase();
}

/// Annotation for classes to generate Crimson JSON support and change the
/// field names to kebab-case.
const jsonKebabCase = JsonKebabCase();

/// @nodoc
class JsonSnakeCase extends Json {
  /// @nodoc
  const JsonSnakeCase();
}

/// Annotation for classes to generate Crimson JSON support and change the
/// field names to snake_case.
const jsonSnakeCase = JsonSnakeCase();

/// Annotation for fields to customize the JSON field name.
class JsonName {
  /// Annotation for fields to customize the JSON field name.
  const JsonName(this.name, {this.aliases});

  /// The name of the field in the JSON.
  final String name;

  /// Aliases for the field in the JSON.
  final Set<String>? aliases;
}

/// @nodoc
class JsonIgnore {
  /// @nodoc
  const JsonIgnore();
}

/// Annotation to ignore a field.
const jsonIgnore = JsonIgnore();

/// Specifies how to convert a JSON value to a Dart object and vice versa.
class JsonConvert<D, J> {
  /// Specifies how to convert a JSON value to a Dart object and vice versa.
  const JsonConvert({this.fromJson, this.toJson});

  /// Converts a JSON value to a Dart object.
  final D Function(J)? fromJson;

  /// Converts a Dart object to a JSON value.
  final J Function(D)? toJson;
}
