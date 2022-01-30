// @generated
//  This file was automatically generated and should not be edited.

import Apollo
import Foundation

public struct NewLocation: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  /// - Parameters:
  ///   - minage
  ///   - name
  ///   - type
  ///   - mustScreen
  ///   - lat
  ///   - long
  ///   - description
  ///   - webpage
  ///   - currentcapacity
  ///   - maxcapacity
  ///   - photoUrl
  public init(minage: Swift.Optional<Int?> = nil, name: String, type: LocationTypes, mustScreen: Bool, lat: Double, long: Double, description: String, webpage: String, currentcapacity: Swift.Optional<Int?> = nil, maxcapacity: Int, photoUrl: String) {
    graphQLMap = ["minage": minage, "name": name, "type": type, "mustScreen": mustScreen, "lat": lat, "long": long, "description": description, "webpage": webpage, "currentcapacity": currentcapacity, "maxcapacity": maxcapacity, "photoURL": photoUrl]
  }

  public var minage: Swift.Optional<Int?> {
    get {
      return graphQLMap["minage"] as? Swift.Optional<Int?> ?? Swift.Optional<Int?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "minage")
    }
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

  public var description: String {
    get {
      return graphQLMap["description"] as! String
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "description")
    }
  }

  public var webpage: String {
    get {
      return graphQLMap["webpage"] as! String
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "webpage")
    }
  }

  public var currentcapacity: Swift.Optional<Int?> {
    get {
      return graphQLMap["currentcapacity"] as? Swift.Optional<Int?> ?? Swift.Optional<Int?>.none
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "currentcapacity")
    }
  }

  public var maxcapacity: Int {
    get {
      return graphQLMap["maxcapacity"] as! Int
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "maxcapacity")
    }
  }

  public var photoUrl: String {
    get {
      return graphQLMap["photoURL"] as! String
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "photoURL")
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

public struct NewUser: GraphQLMapConvertible {
  public var graphQLMap: GraphQLMap

  /// - Parameters:
  ///   - isadmin
  ///   - givenname
  ///   - lastname
  ///   - birthday
  ///   - idImageUrl
  ///   - idExpirationDate
  ///   - address
  public init(isadmin: Bool, givenname: String, lastname: String, birthday: Int, idImageUrl: String, idExpirationDate: Int, address: String) {
    graphQLMap = ["isadmin": isadmin, "givenname": givenname, "lastname": lastname, "birthday": birthday, "idImageURL": idImageUrl, "idExpirationDate": idExpirationDate, "address": address]
  }

  public var isadmin: Bool {
    get {
      return graphQLMap["isadmin"] as! Bool
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "isadmin")
    }
  }

  public var givenname: String {
    get {
      return graphQLMap["givenname"] as! String
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "givenname")
    }
  }

  public var lastname: String {
    get {
      return graphQLMap["lastname"] as! String
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "lastname")
    }
  }

  public var birthday: Int {
    get {
      return graphQLMap["birthday"] as! Int
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "birthday")
    }
  }

  public var idImageUrl: String {
    get {
      return graphQLMap["idImageURL"] as! String
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "idImageURL")
    }
  }

  public var idExpirationDate: Int {
    get {
      return graphQLMap["idExpirationDate"] as! Int
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "idExpirationDate")
    }
  }

  public var address: String {
    get {
      return graphQLMap["address"] as! String
    }
    set {
      graphQLMap.updateValue(newValue, forKey: "address")
    }
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

public final class AddUserMutation: GraphQLMutation {
  /// The raw GraphQL definition of this operation.
  public let operationDefinition: String =
    """
    mutation AddUser($input: NewUser!) {
      addUser(input: $input) {
        __typename
        ...UserFragment
      }
    }
    """

  public let operationName: String = "AddUser"

  public var queryDocument: String {
    var document: String = operationDefinition
    document.append("\n" + UserFragment.fragmentDefinition)
    document.append("\n" + LocationFragment.fragmentDefinition)
    return document
  }

  public var input: NewUser

  public init(input: NewUser) {
    self.input = input
  }

  public var variables: GraphQLMap? {
    return ["input": input]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes: [String] = ["Mutation"]

    public static var selections: [GraphQLSelection] {
      return [
        GraphQLField("addUser", arguments: ["input": GraphQLVariable("input")], type: .nonNull(.object(AddUser.selections))),
      ]
    }

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public init(addUser: AddUser) {
      self.init(unsafeResultMap: ["__typename": "Mutation", "addUser": addUser.resultMap])
    }

    public var addUser: AddUser {
      get {
        return AddUser(unsafeResultMap: resultMap["addUser"]! as! ResultMap)
      }
      set {
        resultMap.updateValue(newValue.resultMap, forKey: "addUser")
      }
    }

    public struct AddUser: GraphQLSelectionSet {
      public static let possibleTypes: [String] = ["User"]

      public static var selections: [GraphQLSelection] {
        return [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLFragmentSpread(UserFragment.self),
        ]
      }

      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
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

        public var userFragment: UserFragment {
          get {
            return UserFragment(unsafeResultMap: resultMap)
          }
          set {
            resultMap += newValue.resultMap
          }
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

      public init(givenname: String, lastname: String, dateofbirth: String, firstDate: String, firstBrand: String, secondDate: String, secondBrand: String, boosterDate: String, boosterBrand: String) {
        self.init(unsafeResultMap: ["__typename": "Passport", "givenname": givenname, "lastname": lastname, "dateofbirth": dateofbirth, "first_date": firstDate, "first_brand": firstBrand, "second_date": secondDate, "second_brand": secondBrand, "booster_date": boosterDate, "booster_brand": boosterBrand])
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

public final class UsersQuery: GraphQLQuery {
  /// The raw GraphQL definition of this operation.
  public let operationDefinition: String =
    """
    query Users($input: ID!) {
      users(id: $input) {
        __typename
        ...UserFragment
      }
    }
    """

  public let operationName: String = "Users"

  public var queryDocument: String {
    var document: String = operationDefinition
    document.append("\n" + UserFragment.fragmentDefinition)
    document.append("\n" + LocationFragment.fragmentDefinition)
    return document
  }

  public var input: GraphQLID

  public init(input: GraphQLID) {
    self.input = input
  }

  public var variables: GraphQLMap? {
    return ["input": input]
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes: [String] = ["Query"]

    public static var selections: [GraphQLSelection] {
      return [
        GraphQLField("users", arguments: ["id": GraphQLVariable("input")], type: .nonNull(.object(User.selections))),
      ]
    }

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public init(users: User) {
      self.init(unsafeResultMap: ["__typename": "Query", "users": users.resultMap])
    }

    public var users: User {
      get {
        return User(unsafeResultMap: resultMap["users"]! as! ResultMap)
      }
      set {
        resultMap.updateValue(newValue.resultMap, forKey: "users")
      }
    }

    public struct User: GraphQLSelectionSet {
      public static let possibleTypes: [String] = ["User"]

      public static var selections: [GraphQLSelection] {
        return [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLFragmentSpread(UserFragment.self),
        ]
      }

      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
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

        public var userFragment: UserFragment {
          get {
            return UserFragment(unsafeResultMap: resultMap)
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
      givenname
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
      GraphQLField("givenname", type: .nonNull(.scalar(String.self))),
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

  public init(givenname: String, lastname: String, dateofbirth: String, firstDate: String, firstBrand: String, secondDate: String, secondBrand: String, boosterDate: String, boosterBrand: String) {
    self.init(unsafeResultMap: ["__typename": "Passport", "givenname": givenname, "lastname": lastname, "dateofbirth": dateofbirth, "first_date": firstDate, "first_brand": firstBrand, "second_date": secondDate, "second_brand": secondBrand, "booster_date": boosterDate, "booster_brand": boosterBrand])
  }

  public var __typename: String {
    get {
      return resultMap["__typename"]! as! String
    }
    set {
      resultMap.updateValue(newValue, forKey: "__typename")
    }
  }

  public var givenname: String {
    get {
      return resultMap["givenname"]! as! String
    }
    set {
      resultMap.updateValue(newValue, forKey: "givenname")
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

public struct UserFragment: GraphQLFragment {
  /// The raw GraphQL definition of this fragment.
  public static let fragmentDefinition: String =
    """
    fragment UserFragment on User {
      __typename
      id
      isadmin
      givenname
      lastname
      birthday
      lastScan
      scanHistory {
        __typename
        ...LocationFragment
      }
      idImageURL
      idExpirationDate
      address
      lastassessment
    }
    """

  public static let possibleTypes: [String] = ["User"]

  public static var selections: [GraphQLSelection] {
    return [
      GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
      GraphQLField("id", type: .nonNull(.scalar(GraphQLID.self))),
      GraphQLField("isadmin", type: .scalar(Bool.self)),
      GraphQLField("givenname", type: .nonNull(.scalar(String.self))),
      GraphQLField("lastname", type: .nonNull(.scalar(String.self))),
      GraphQLField("birthday", type: .nonNull(.scalar(Int.self))),
      GraphQLField("lastScan", type: .nonNull(.scalar(Int.self))),
      GraphQLField("scanHistory", type: .nonNull(.list(.object(ScanHistory.selections)))),
      GraphQLField("idImageURL", type: .nonNull(.scalar(String.self))),
      GraphQLField("idExpirationDate", type: .nonNull(.scalar(Int.self))),
      GraphQLField("address", type: .nonNull(.scalar(String.self))),
      GraphQLField("lastassessment", type: .nonNull(.scalar(Int.self))),
    ]
  }

  public private(set) var resultMap: ResultMap

  public init(unsafeResultMap: ResultMap) {
    self.resultMap = unsafeResultMap
  }

  public init(id: GraphQLID, isadmin: Bool? = nil, givenname: String, lastname: String, birthday: Int, lastScan: Int, scanHistory: [ScanHistory?], idImageUrl: String, idExpirationDate: Int, address: String, lastassessment: Int) {
    self.init(unsafeResultMap: ["__typename": "User", "id": id, "isadmin": isadmin, "givenname": givenname, "lastname": lastname, "birthday": birthday, "lastScan": lastScan, "scanHistory": scanHistory.map { (value: ScanHistory?) -> ResultMap? in value.flatMap { (value: ScanHistory) -> ResultMap in value.resultMap } }, "idImageURL": idImageUrl, "idExpirationDate": idExpirationDate, "address": address, "lastassessment": lastassessment])
  }

  public var __typename: String {
    get {
      return resultMap["__typename"]! as! String
    }
    set {
      resultMap.updateValue(newValue, forKey: "__typename")
    }
  }

  public var id: GraphQLID {
    get {
      return resultMap["id"]! as! GraphQLID
    }
    set {
      resultMap.updateValue(newValue, forKey: "id")
    }
  }

  public var isadmin: Bool? {
    get {
      return resultMap["isadmin"] as? Bool
    }
    set {
      resultMap.updateValue(newValue, forKey: "isadmin")
    }
  }

  public var givenname: String {
    get {
      return resultMap["givenname"]! as! String
    }
    set {
      resultMap.updateValue(newValue, forKey: "givenname")
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

  public var birthday: Int {
    get {
      return resultMap["birthday"]! as! Int
    }
    set {
      resultMap.updateValue(newValue, forKey: "birthday")
    }
  }

  public var lastScan: Int {
    get {
      return resultMap["lastScan"]! as! Int
    }
    set {
      resultMap.updateValue(newValue, forKey: "lastScan")
    }
  }

  public var scanHistory: [ScanHistory?] {
    get {
      return (resultMap["scanHistory"] as! [ResultMap?]).map { (value: ResultMap?) -> ScanHistory? in value.flatMap { (value: ResultMap) -> ScanHistory in ScanHistory(unsafeResultMap: value) } }
    }
    set {
      resultMap.updateValue(newValue.map { (value: ScanHistory?) -> ResultMap? in value.flatMap { (value: ScanHistory) -> ResultMap in value.resultMap } }, forKey: "scanHistory")
    }
  }

  public var idImageUrl: String {
    get {
      return resultMap["idImageURL"]! as! String
    }
    set {
      resultMap.updateValue(newValue, forKey: "idImageURL")
    }
  }

  public var idExpirationDate: Int {
    get {
      return resultMap["idExpirationDate"]! as! Int
    }
    set {
      resultMap.updateValue(newValue, forKey: "idExpirationDate")
    }
  }

  public var address: String {
    get {
      return resultMap["address"]! as! String
    }
    set {
      resultMap.updateValue(newValue, forKey: "address")
    }
  }

  public var lastassessment: Int {
    get {
      return resultMap["lastassessment"]! as! Int
    }
    set {
      resultMap.updateValue(newValue, forKey: "lastassessment")
    }
  }

  public struct ScanHistory: GraphQLSelectionSet {
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
