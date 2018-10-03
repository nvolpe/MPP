//  This file was automatically generated and should not be edited.

import Apollo

public final class PostsForAuthorQuery: GraphQLQuery {
  public let operationDefinition =
    "query PostsForAuthor {\n  author(id: 1) {\n    __typename\n    firstName\n    posts {\n      __typename\n      title\n      votes\n    }\n  }\n}"

  public init() {
  }

  public struct Data: GraphQLSelectionSet {
    public static let possibleTypes = ["Query"]

    public static let selections: [GraphQLSelection] = [
      GraphQLField("author", arguments: ["id": 1], type: .object(Author.selections)),
    ]

    public private(set) var resultMap: ResultMap

    public init(unsafeResultMap: ResultMap) {
      self.resultMap = unsafeResultMap
    }

    public init(author: Author? = nil) {
      self.init(unsafeResultMap: ["__typename": "Query", "author": author.flatMap { (value: Author) -> ResultMap in value.resultMap }])
    }

    public var author: Author? {
      get {
        return (resultMap["author"] as? ResultMap).flatMap { Author(unsafeResultMap: $0) }
      }
      set {
        resultMap.updateValue(newValue?.resultMap, forKey: "author")
      }
    }

    public struct Author: GraphQLSelectionSet {
      public static let possibleTypes = ["Author"]

      public static let selections: [GraphQLSelection] = [
        GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
        GraphQLField("firstName", type: .scalar(String.self)),
        GraphQLField("posts", type: .list(.object(Post.selections))),
      ]

      public private(set) var resultMap: ResultMap

      public init(unsafeResultMap: ResultMap) {
        self.resultMap = unsafeResultMap
      }

      public init(firstName: String? = nil, posts: [Post?]? = nil) {
        self.init(unsafeResultMap: ["__typename": "Author", "firstName": firstName, "posts": posts.flatMap { (value: [Post?]) -> [ResultMap?] in value.map { (value: Post?) -> ResultMap? in value.flatMap { (value: Post) -> ResultMap in value.resultMap } } }])
      }

      public var __typename: String {
        get {
          return resultMap["__typename"]! as! String
        }
        set {
          resultMap.updateValue(newValue, forKey: "__typename")
        }
      }

      public var firstName: String? {
        get {
          return resultMap["firstName"] as? String
        }
        set {
          resultMap.updateValue(newValue, forKey: "firstName")
        }
      }

      public var posts: [Post?]? {
        get {
          return (resultMap["posts"] as? [ResultMap?]).flatMap { (value: [ResultMap?]) -> [Post?] in value.map { (value: ResultMap?) -> Post? in value.flatMap { (value: ResultMap) -> Post in Post(unsafeResultMap: value) } } }
        }
        set {
          resultMap.updateValue(newValue.flatMap { (value: [Post?]) -> [ResultMap?] in value.map { (value: Post?) -> ResultMap? in value.flatMap { (value: Post) -> ResultMap in value.resultMap } } }, forKey: "posts")
        }
      }

      public struct Post: GraphQLSelectionSet {
        public static let possibleTypes = ["Post"]

        public static let selections: [GraphQLSelection] = [
          GraphQLField("__typename", type: .nonNull(.scalar(String.self))),
          GraphQLField("title", type: .scalar(String.self)),
          GraphQLField("votes", type: .scalar(Int.self)),
        ]

        public private(set) var resultMap: ResultMap

        public init(unsafeResultMap: ResultMap) {
          self.resultMap = unsafeResultMap
        }

        public init(title: String? = nil, votes: Int? = nil) {
          self.init(unsafeResultMap: ["__typename": "Post", "title": title, "votes": votes])
        }

        public var __typename: String {
          get {
            return resultMap["__typename"]! as! String
          }
          set {
            resultMap.updateValue(newValue, forKey: "__typename")
          }
        }

        public var title: String? {
          get {
            return resultMap["title"] as? String
          }
          set {
            resultMap.updateValue(newValue, forKey: "title")
          }
        }

        public var votes: Int? {
          get {
            return resultMap["votes"] as? Int
          }
          set {
            resultMap.updateValue(newValue, forKey: "votes")
          }
        }
      }
    }
  }
}