/// Primitive data types in the Swagger Specification are based on the types supported by the JSON-Schema Draft 4. Models are described using the Schema Object which is a subset of JSON Schema Draft 4.
/// An additional primitive data type "file" is used by the Parameter Object and the Response Object to set the parameter type or the response as being a file.
/// Primitives have an optional modifier property format. Swagger uses several known formats to more finely define the data type being used. However, the format property is an open string-valued property, and can have any value to support documentation needs. Formats such as "email", "uuid", etc., can be used even though they are not defined by this specification. Types that are not accompanied by a format property follow their definition from the JSON Schema (except for file type which is defined above).
public enum DataFormat: String, Codable {
    // type: integer - format: int32 - comment: signed 32 bits
    case int32
    case long
    case float
    case double
    case string
    // base64 encoded characters
    case byte
    // any sequence of octets
    case binary
    case boolean
    // As defined by full-date - RFC3339
    case date
    // As defined by date-time - RFC3339
    case dateTime
    // Used to hint UIs the input needs to be obscured.
    case password
    case email
}

extension DataFormat: Equatable { }