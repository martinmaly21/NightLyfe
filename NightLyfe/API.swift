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
  ///   - lat
  ///   - long
  public init(name: String, type: LocationTypes, mustScreen: Bool, lat: Double, long: Double) {
    graphQLMap = ["name": name, "type": type, "mustScreen": mustScreen, "lat": lat, "long": long]
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

  public var lat: Double {
    get {
      return graphQLMap["lat"] as! Double
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "lat")
    }
  }

  public var long: Double {
    get {
      return graphQLMap["long"] as! Double
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "long")
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

public struct ParsePassport: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  /// - Parameters:
  ///   - data
  ///   - issuer
  public init(data: String, issuer: PassportIssuers) {
    graphQLMap = ["data": data, "issuer": issuer]
  }

  public var data: String {
    get {
      return graphQLMap["data"] as! String
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "data")
    }
  }

  public var issuer: PassportIssuers {
    get {
      return graphQLMap["issuer"] as! PassportIssuers
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "issuer")
    }
  }
}

public enum PassportIssuers: RawRepresentable, Equatable, Hashable, CaseIterable, Apollo.JSONDecodable, Apollo.JSONEncodable {
  public typealias RawValue = String
  case ontario
  case quebec
  /// Auto generated constant for unknown enum values
  case __unknown(RawValue)

  public init?(rawValue: RawValue) {
    switch rawValue {
      case "ONTARIO": self = .ontario
      case "QUEBEC": self = .quebec
      default: self = .__unknown(rawValue)
    }
  }

  public var rawValue: RawValue {
    switch self {
      case .ontario: return "ONTARIO"
      case .quebec: return "QUEBEC"
      case .__unknown(let value): return value
    }
  }

  public static func == (lhs: PassportIssuers, rhs: PassportIssuers) -> Bool {
    switch (lhs, rhs) {
      case (.ontario, .ontario): return true
      case (.quebec, .quebec): return true
      case (.__unknown(let lhsValue), .__unknown(let rhsValue)): return lhsValue == rhsValue
      default: return false
    }
  }

  public static var allCases: [PassportIssuers] {
    return [
      .ontario,
      .quebec,
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

public final class ProcessPassportMutation: GraphQLMutation {
  /// The raw GraphQL definition of this operation.
  public let operationDefinition: String =
    """
    mutation ProcessPassport($input: ParsePassport!) {
      processPassport(input: $input) {
        __typename
        ...PassportFragment
      }
    }
    """

  public let operationName: String = "ProcessPassport"

  public var queryDocument: String {
    var document: String = operationDefinition
    document.append("\n" + PassportFragment.fragmentDefinition)
    return document
  }

  public var input: ParsePassport

  public init(input: ParsePassport) {
    self.input = input
  }

  public var variables: GraphQLMap? {
    return ["input": input]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes: [String] = ["Mutation"]

    public static var selections: [GraphQLSelection] {
      return [
        GraphQLField("processPassport", arguments: ["input": GraphQLVariable("input")], type: .nonNull(.object(ProcessPassport.selections))),
      ]
    }

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public init(processPassport: ProcessPassport) {
      self.init(unsafeResultMap: ["__typename": "Mutation", "processPassport": processPassport.resultMap])
    }

    public var processPassport: ProcessPassport {
      get {
        return ProcessPassport(unsafeResultMap: resultMap["processPassport"]! as! ResultMap)
      }
      set {
        resultMap.updateValue(newValue.resultMap, forKey: "processPassport")
      }
    }

    public struct ProcessPassport: GraphQLSelectionSet {
      public static let possibleTypes: [String] = ["Passport"]

      public static var selections: [GraphQLSelection] {
        return [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLFragmentSpread(PassportFragment.self),
        ]
      }

      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public init(firstname: String, lastname: String, dateofbirth: String, firstDate: String, firstBrand: String, secondDate: String, secondBrand: String, boosterDate: String, boosterBrand: String) {
        self.init(unsafeResultMap: ["__typename": "Passport", "firstname": firstname, "lastname": lastname, "dateofbirth": dateofbirth, "first_date": firstDate, "first_brand": firstBrand, "second_date": secondDate, "second_brand": secondBrand, "booster_date": boosterDate, "booster_brand": boosterBrand])
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

        public var passportFragment: PassportFragment {
          get {
            return PassportFragment(unsafeResultMap: resultMap)
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

public struct PassportFragment: GraphQLFragment {
  /// The raw GraphQL definition of this fragment.
  public static let fragmentDefinition: String =
    """
    fragment PassportFragment on Passport {
      __typename
      firstname
      lastname
      dateofbirth
      first_date
      first_brand
      second_date
      second_brand
      booster_date
      booster_brand
    }
    """

  public static let possibleTypes: [String] = ["Passport"]

  public static var selections: [GraphQLSelection] {
    return [
      GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
      GraphQLField("firstname", type: .nonNull(.scalar(String.self))),
      GraphQLField("lastname", type: .nonNull(.scalar(String.self))),
      GraphQLField("dateofbirth", type: .nonNull(.scalar(String.self))),
      GraphQLField("first_date", type: .nonNull(.scalar(String.self))),
      GraphQLField("first_brand", type: .nonNull(.scalar(String.self))),
      GraphQLField("second_date", type: .nonNull(.scalar(String.self))),
      GraphQLField("second_brand", type: .nonNull(.scalar(String.self))),
      GraphQLField("booster_date", type: .nonNull(.scalar(String.self))),
      GraphQLField("booster_brand", type: .nonNull(.scalar(String.self))),
    ]
  }

  public private(set) var resultMap: ResultMap

  public init(unsafeResultMap: ResultMap) {
    self.resultMap = unsafeResultMap
  }

  public init(firstname: String, lastname: String, dateofbirth: String, firstDate: String, firstBrand: String, secondDate: String, secondBrand: String, boosterDate: String, boosterBrand: String) {
    self.init(unsafeResultMap: ["__typename": "Passport", "firstname": firstname, "lastname": lastname, "dateofbirth": dateofbirth, "first_date": firstDate, "first_brand": firstBrand, "second_date": secondDate, "second_brand": secondBrand, "booster_date": boosterDate, "booster_brand": boosterBrand])
  }

  public var __typename: String {
    get {
      return resultMap["__typename"]! as! String
    }
    set {
      resultMap.updateValue(newValue, forKey: "__typename")
    }
  }

  public var firstname: String {
    get {
      return resultMap["firstname"]! as! String
    }
    set {
      resultMap.updateValue(newValue, forKey: "firstname")
    }
  }

  public var lastname: String {
    get {
      return resultMap["lastname"]! as! String
    }
    set {
      resultMap.updateValue(newValue, forKey: "lastname")
    }
  }

  public var dateofbirth: String {
    get {
      return resultMap["dateofbirth"]! as! String
    }
    set {
      resultMap.updateValue(newValue, forKey: "dateofbirth")
    }
  }

  public var firstDate: String {
    get {
      return resultMap["first_date"]! as! String
    }
    set {
      resultMap.updateValue(newValue, forKey: "first_date")
    }
  }

  public var firstBrand: String {
    get {
      return resultMap["first_brand"]! as! String
    }
    set {
      resultMap.updateValue(newValue, forKey: "first_brand")
    }
  }

  public var secondDate: String {
    get {
      return resultMap["second_date"]! as! String
    }
    set {
      resultMap.updateValue(newValue, forKey: "second_date")
    }
  }

  public var secondBrand: String {
    get {
      return resultMap["second_brand"]! as! String
    }
    set {
      resultMap.updateValue(newValue, forKey: "second_brand")
    }
  }

  public var boosterDate: String {
    get {
      return resultMap["booster_date"]! as! String
    }
    set {
      resultMap.updateValue(newValue, forKey: "booster_date")
    }
  }

  public var boosterBrand: String {
    get {
      return resultMap["booster_brand"]! as! String
    }
    set {
      resultMap.updateValue(newValue, forKey: "booster_brand")
    }
  }
}
