//
//  VersionOperator.swift
//  Version
//
//  Created by ZhgChgLi on 2020/12/14.
//

enum VersionOperator: String {
    case equal = "="
    case unSpecified = ""
    case greaterThan = ">"
    case lessThan = "<"
    case lessThanOrEqual = "<="
    case greaterThanOrEqual = ">="
    case optimistic = "~>"
    
    case unSupported = "<unSupported>"
    
    init(rawValue: String) {
        switch rawValue {
        case VersionOperator.greaterThan.rawValue:
            self = .greaterThan
        case VersionOperator.lessThan.rawValue:
            self = .lessThan
        case VersionOperator.lessThanOrEqual.rawValue:
            self = .lessThanOrEqual
        case VersionOperator.greaterThanOrEqual.rawValue:
            self = .greaterThanOrEqual
        case VersionOperator.optimistic.rawValue:
            self = .optimistic
        case VersionOperator.equal.rawValue:
            self = .equal
        default:
            if Int(rawValue) != nil {
                self = .unSpecified
            } else {
                self = .unSupported
            }
        }
    }
}

