// @generated
//  This file was automatically generated and should not be edited.

import Apollo
import Foundation

public struct NewLocation: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  /// - Parameters:
  ///   - name
  ///   - type
  ///   - mustScreen
  public init(name: String, type: LocationTypes, mustScreen: Bool) {
    graphQLMap = ["name": name, "type": type, "mustScreen": mustScreen]
  }

  public var name: String {
    get {
      return graphQLMap["name"] as! String
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "name")
    }
  }

  public var type: LocationTypes {
    get {
      return graphQLMap["type"] as! LocationTypes
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "type")
    }
  }

  public var mustScreen: Bool {
    get {
      return graphQLMap["mustScreen"] as! Bool
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "mustScreen")
    }
  }
}

public enum LocationTypes: RawRepresentable, Equatable, Hashable, CaseIterable, Apollo.JSONDecodable, Apollo.JSONEncodable {
  public typealias RawValue = String
  case bar
  case restaurant
  case club
  case store
  case other
  /// Auto generated constant for unknown enum values
  case __unknown(RawValue)

  public init?(rawValue: RawValue) {
    switch rawValue {
      case "BAR": self = .bar
      case "RESTAURANT": self = .restaurant
      case "CLUB": self = .club
      case "STORE": self = .store
      case "OTHER": self = .other
      default: self = .__unknown(rawValue)
    }
  }

  public var rawValue: RawValue {
    switch self {
      case .bar: return "BAR"
      case .restaurant: return "RESTAURANT"
      case .club: return "CLUB"
      case .store: return "STORE"
      case .other: return "OTHER"
      case .__unknown(let value): return value
    }
  }

  public static func == (lhs: LocationTypes, rhs: LocationTypes) -> Bool {
    switch (lhs, rhs) {
      case (.bar, .bar): return true
      case (.restaurant, .restaurant): return true
      case (.club, .club): return true
      case (.store, .store): return true
      case (.other, .other): return true
      case (.__unknown(let lhsValue), .__unknown(let rhsValue)): return lhsValue == rhsValue
      default: return false
    }
  }

  public static var allCases: [LocationTypes] {
    return [
      .bar,
      .restaurant,
      .club,
      .store,
      .other,
    ]
  }
}

public final class AddLocationMutation: GraphQLMutation {
  /// The raw GraphQL definition of this operation.
  public let operationDefinition: String =
    """
    mutation AddLocation($input: NewLocation!) {
      addLocation(input: $input) {
        __typename
        mustScreen
      }
    }
    """

  public let operationName: String = "AddLocation"

  public var input: NewLocation

  public init(input: NewLocation) {
    self.input = input
  }

  public var variables: GraphQLMap? {
    return ["input": input]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes: [String] = ["Mutation"]

    public static var selections: [GraphQLSelection] {
      return [
        GraphQLField("addLocation", arguments: ["input": GraphQLVariable("input")], type: .nonNull(.object(AddLocation.selections))),
      ]
    }

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public init(addLocation: AddLocation) {
      self.init(unsafeResultMap: ["__typename": "Mutation", "addLocation": addLocation.resultMap])
    }

    public var addLocation: AddLocation {
      get {
        return AddLocation(unsafeResultMap: resultMap["addLocation"]! as! ResultMap)
      }
      set {
        resultMap.updateValue(newValue.resultMap, forKey: "addLocation")
      }
    }

    public struct AddLocation: GraphQLSelectionSet {
      public static let possibleTypes: [String] = ["Location"]

      public static var selections: [GraphQLSelection] {
        return [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("mustScreen", type: .nonNull(.scalar(Bool.self))),
        ]
      }

      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public init(mustScreen: Bool) {
        self.init(unsafeResultMap: ["__typename": "Location", "mustScreen": mustScreen])
      }

      public var __typename: String {
        get {
          return resultMap["__typename"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "__typename")
        }
      }

      public var mustScreen: Bool {
        get {
          return resultMap["mustScreen"]! as! Bool
        }
        set {
          resultMap.updateValue(newValue, forKey: "mustScreen")
        }
      }
    }
  }
}

public final class LocationsQuery: GraphQLQuery {
  /// The raw GraphQL definition of this operation.
  public let operationDefinition: String =
    """
    query Locations {
      locations {
        __typename
        ...LocationFragment
      }
    }
    """

  public let operationName: String = "Locations"

  public var queryDocument: String {
    var document: String = operationDefinition
    document.append("\n" + LocationFragment.fragmentDefinition)
    return document
  }

  public init() {
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes: [String] = ["Query"]

    public static var selections: [GraphQLSelection] {
      return [
        GraphQLField("locations", type: .nonNull(.list(.object(Location.selections)))),
      ]
    }

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public init(locations: [Location?]) {
      self.init(unsafeResultMap: ["__typename": "Query", "locations": locations.map { (value: Location?) -> ResultMap? in value.flatMap { (value: Location) -> ResultMap in value.resultMap } }])
    }

    public var locations: [Location?] {
      get {
        return (resultMap["locations"] as! [ResultMap?]).map { (value: ResultMap?) -> Location? in value.flatMap { (value: ResultMap) -> Location in Location(unsafeResultMap: value) } }
      }
      set {
        resultMap.updateValue(newValue.map { (value: Location?) -> ResultMap? in value.flatMap { (value: Location) -> ResultMap in value.resultMap } }, forKey: "locations")
      }
    }

    public struct Location: GraphQLSelectionSet {
      public static let possibleTypes: [String] = ["Location"]

      public static var selections: [GraphQLSelection] {
        return [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLFragmentSpread(LocationFragment.self),
        ]
      }

      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public init(name: String) {
        self.init(unsafeResultMap: ["__typename": "Location", "name": name])
      }

      public var __typename: String {
        get {
          return resultMap["__typename"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "__typename")
        }
      }

      public var fragments: Fragments {
        get {
          return Fragments(unsafeResultMap: resultMap)
        }
        set {
          resultMap += newValue.resultMap
        }
      }

      public struct Fragments {
        public private(set) var resultMap: ResultMap

        public init(unsafeResultMap: ResultMap) {
          self.resultMap = unsafeResultMap
        }

        public var locationFragment: LocationFragment {
          get {
            return LocationFragment(unsafeResultMap: resultMap)
          }
          set {
            resultMap += newValue.resultMap
          }
        }
      }
    }
  }
}

public struct LocationFragment: GraphQLFragment {
  /// The raw GraphQL definition of this fragment.
  public static let fragmentDefinition: String =
    """
    fragment LocationFragment on Location {
      __typename
      name
    }
    """

  public static let possibleTypes: [String] = ["Location"]

  public static var selections: [GraphQLSelection] {
    return [
      GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
      GraphQLField("name", type: .nonNull(.scalar(String.self))),
    ]
  }

  public private(set) var resultMap: ResultMap

  public init(unsafeResultMap: ResultMap) {
    self.resultMap = unsafeResultMap
  }

  public init(name: String) {
    self.init(unsafeResultMap: ["__typename": "Location", "name": name])
  }

  public var __typename: String {
    get {
      return resultMap["__typename"]! as! String
    }
    set {
      resultMap.updateValue(newValue, forKey: "__typename")
    }
  }

  public var name: String {
    get {
      return resultMap["name"]! as! String
    }
    set {
      resultMap.updateValue(newValue, forKey: "name")
    }
  }
}
