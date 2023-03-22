//
//  TargetType.swift
//  ServiceModule
//
//  Created by 강민성 on 2023/03/22.
//  Copyright © 2023 kmskms.io. All rights reserved.
//

import Foundation
import Alamofire

public protocol TargetType: URLRequestConvertible {
    var baseURL: String { get }
    var path: String { get }
    var method: HTTPMethod { get }
    var parameter: RequestParams { get }
    var contentType: ContentType { get }
}

public enum RequestParams {
    case requestPlain
}

public enum ContentType: String {
    case json = "Application/json"
}

public enum API {
    static var baseAPIURL: String {
        return "https://34f06a62-7d9a-4d15-a619-953556ad83f5.mock.pstmn.io"
    }
}

enum HTTPHeaderField: String {
    case contentTpye = "Content-Type"
}

public extension TargetType {
    func asURLRequest() throws -> URLRequest {
        let url = try baseURL.asURL()
        
        var urlRequest = try URLRequest(url: url.appending(path: path), method: method)
        
        urlRequest.setValue(contentType.rawValue, forHTTPHeaderField: HTTPHeaderField.contentTpye.rawValue)
        
        switch parameter {

        case .requestPlain :
            break
            
        }
        
        return urlRequest
    }
}

public extension TargetType {
    var contentType: ContentType {
        return .json
    }
}
