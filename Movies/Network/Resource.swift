//
//  Resource.swift
//  Movies
//
//  Created by Srikanth on 16/12/20.
//

import Foundation

struct Resource<T: Decodable> {

    let scheme: String
    let host: String
    let versionPath: String
    let path: String
    let queryItems: [URLQueryItem]
    let cachePolicy: URLRequest.CachePolicy
    let timeoutInterval: TimeInterval

    init(scheme: String = "https", host: String = "api.themoviedb.org", versionPath: String = "/3", path: String, queryItems: [URLQueryItem] = [], cachePolicy: URLRequest.CachePolicy = .reloadIgnoringLocalAndRemoteCacheData, timeoutInterval: TimeInterval = TimeInterval(60)) {
        self.scheme = scheme
        self.host = host
        self.versionPath = versionPath
        self.path = path
        self.queryItems = queryItems
        self.cachePolicy = cachePolicy
        self.timeoutInterval = timeoutInterval
    }
    
}

extension Resource {

    var request: URLRequest {
        var components = URLComponents()
        components.scheme = scheme
        components.host = host
        components.path = versionPath + "/" + path
        components.queryItems = queryItems
        guard let url = components.url else {
            preconditionFailure(
                "Invalid URL components: \(components)"
            )
        }
        return URLRequest(url: url, cachePolicy: cachePolicy, timeoutInterval: timeoutInterval)
    }

}
