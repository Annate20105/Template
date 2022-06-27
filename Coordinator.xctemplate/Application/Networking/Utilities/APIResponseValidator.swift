//
//  APIResponseValidator.swift
//  test
//
//  Created by Anna Dudina on 26.06.2022.
//

import Foundation

func APIResponseValidator(request: URLRequest? = nil, response: HTTPURLResponse?, data: Data? = nil) -> Result<Bool, Error> {
    guard let response = response else {
        return .failure(APIError.other)
    }
    switch response.statusCode {
    case 200...300:
        return .success(true)
    default:
        return .failure(APIError.other)
    }
}

