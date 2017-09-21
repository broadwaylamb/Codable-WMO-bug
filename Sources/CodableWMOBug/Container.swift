public struct SomeRawRepresentable: RawRepresentable, Decodable {
    
    public let rawValue: String
    
    public init(rawValue: String) { self.rawValue = rawValue }
}

public struct Container: Decodable {
    public let identifier: SomeRawRepresentable
}
