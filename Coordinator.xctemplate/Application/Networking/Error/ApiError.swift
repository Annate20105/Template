//
//  ApiError.swift
//  test
//
//  Created by Anna Dudina on 26.06.2022.
//

import Foundation

enum APIError: Error {
    case unauthorized
    case other
    case decodeble
    case baseRequest
}

func ErrorValidator(error: Error?) -> APIError {
    return APIError.unauthorized
}
