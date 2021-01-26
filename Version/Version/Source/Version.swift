//
//  Version.swift
//  Version
//
//  Created by ZhgChgLi on 2020/12/14.
//

@objcMembers
class Version {
    private let regex: String = "^(?:(>=|>|<=|=|~>){1}\\s*)?(0|[1-9]\\d*)\\.(0|[1-9]\\d*)\\.(0|[1-9]\\d*)(?:-((?:0|[1-9]\\d*|\\d*[a-zA-Z-][0-9a-zA-Z-]*)(?:\\.(?:0|[1-9]\\d*|\\d*[a-zA-Z-][0-9a-zA-Z-]*))*))?(?:\\+([0-9a-zA-Z-]+(?:\\.[0-9a-zA-Z-]+)*))?$"
    
    private(set) var `operator`: VersionOperator
    private(set) var major: Int
    private(set) var minor: Int
    private(set) var patch: Int
    private(set) var prerelease: String?
    private(set) var buildmetadata: String?
    
    init(_ string: String) throws {
        let result = string.regexGroup(self.regex)
        guard result.count > 0 else {
            throw VersionError.versionStringUnSupported
        }
        
        if let firstMatch = result[safe: 0] {
            
        }
        
        //print(Utils.regexGroup("",""))
    }
    
    
//    static func < (lhs: ReleaseVersion, rhs: ReleaseVersion) -> Bool {
//        for (index, lhsVersion) in lhs.versions.enumerated() {
//            let rhsVersion = (rhs.versions.count > index) ? (rhs.versions[index]) : (0)
//            if lhsVersion < rhsVersion {
//                return true
//            }
//        }
//        return false
//    }
//
//    static func == (lhs: ReleaseVersion, rhs: ReleaseVersion) -> Bool {
//        for (index, lhsVersion) in lhs.versions.enumerated() {
//            let rhsVersion = (rhs.versions.count > index) ? (rhs.versions[index]) : (0)
//            guard lhsVersion == rhsVersion else {
//                return false
//            }
//        }
//        return true
//    }
//
//    func compare(version: ReleaseVersion) -> Bool {
//        switch self.versionOperator {
//        case .equal, .unSpecified:
//            return self == version
//        case .greaterThan:
//            return self > version
//        case .greaterThanOrEqual:
//            return self >= version
//        case .lessThan:
//            return self < version
//        case .lessThanOrEqual:
//            return self <= version
//        case .optimistic:
//            let start = ReleaseVersion(versionOperator: .unSpecified, versions: self.versions)
//            var endVersions = self.versions
//            if self.versions.count > 1 {
//                endVersions.removeLast()
//            }
//            guard endVersions.count > 0 else {
//                return false
//            }
//            endVersions[endVersions.count - 1] = endVersions[endVersions.count - 1] + 1
//            let end = ReleaseVersion(versionOperator: .unSpecified, versions: endVersions)
//            return start <= version && version < end
//        default:
//            return false
//        }
//    }
//
//    func compare(version: String, configurator: ReleaseVersionConfigurator = ReleaseVersionUtils.defaultVersionConfigurator()) throws -> Bool {
//        return self.compare(version: try ReleaseVersion(version: version, configurator: versionConfigurator))
//    }
//
//    func toString(_ withOperator: Bool = true) -> String {
//        let versionString = self.versions.map { String($0) }.joined(separator: ".")
//        if withOperator {
//            let operatorString = (self.versionOperator != .unSpecified) ? ("\(self.versionOperator.rawValue) ") : ("")
//            return "\(operatorString)\(versionString)"
//        } else {
//            return versionString
//        }
//    }
}
