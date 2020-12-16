//
//  Resource+Movie.swift
//  Movies
//
//  Created by Srikanth on 16/12/20.
//

import Foundation

extension Resource {

    static func movies(query: String) -> Resource<Movies> {
        let queryItems: [URLQueryItem] = [URLQueryItem(name: "api_key", value: ApiConstants.apiKey), URLQueryItem(name: "query", value: query), URLQueryItem(name: "language", value: Locale.preferredLanguages[0])]
        return Resource<Movies>(path: "/search/movie", queryItems: queryItems)
    }

    static func details(movieId: Int) -> Resource<Movie> {
        let queryItems: [URLQueryItem] = [URLQueryItem(name: "api_key", value: ApiConstants.apiKey), URLQueryItem(name: "language", value: Locale.preferredLanguages[0])]
        return Resource<Movie>(path: "/movie/\(movieId)", queryItems: queryItems)
    }

}

