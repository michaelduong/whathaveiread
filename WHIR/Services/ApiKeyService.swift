//
//  File.swift
//  WHIR
//
//  Created by Bruce Roettgers on 2018-10-31.
//  Copyright © 2018 Dirk Hulverscheidt. All rights reserved.
//

import Foundation

class ApiKeyService {
    let path = Bundle.main.path(forResource: "keys", ofType: "plist")
    var key: String? {
        if let path = path {
            if let dict = NSDictionary(contentsOfFile: path) {
                return dict["API_KEY"] as? String
            }
        }
        return nil
    }
    var googleKey: String? {
        if let path = path {
            if let dict = NSDictionary(contentsOfFile: path) {
                return dict["G_API_PROD"] as? String
            }
        }
        return nil
    }
}
