//
//  Movies.swift
//  Movies
//
//  Created by Srikanth on 16/12/20.
//

import Foundation

struct Movies {

    let items: [Movie]
    
}

extension Movies: Decodable {

    enum CodingKeys: String, CodingKey {
        case items = "results"
    }
    
}
