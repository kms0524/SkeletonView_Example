//
//  APIRequestLoader.swift
//  ServiceModule
//
//  Created by 강민성 on 2023/03/22.
//  Copyright © 2023 kmskms.io. All rights reserved.
//

import Foundation
import Alamofire

public class APIRequestLoader<T: TargetType> {
    
    let configuration: URLSessionConfiguration
    let apiLogger = APIEventLogger()
    let sesseion: Session
    
    public init(
        configuration: URLSessionConfiguration = .default,
        isLogging: Bool = false
    ) {
        let apiLogger = isLogging ? [APIEventLogger()] : []
        
        self.configuration = configuration
        self.sesseion = Session(
            configuration: configuration,
            eventMonitors: apiLogger
        )
    }
    
    internal func fetchData<M: Decodable> (
        target: T,
        responseType: M.Type,
        completionHandler: @escaping (M?, Error?) -> Void
    ) {
        var allStatusCode = Set(200..<503)
        let session = self.sesseion
        
        session.request(target)
            .validate(statusCode: allStatusCode)
            .responseDecodable(of: M.self) { response in
                switch response.result {
                case .success(let data):
                    completionHandler(data, nil)
                    
                case .failure(let error):
                    completionHandler(nil, error)
                }
            }
    }
}
