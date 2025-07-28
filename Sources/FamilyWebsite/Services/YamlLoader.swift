//
//  YamlLoader.swift
//  FamilyWebsite
//
//  Created by Łukasz Żmudziński on 28/07/2025.
//

import Foundation
import Yams

struct YamlLoader {
    static func load<T: Decodable>(for type: T.Type, resource: String) throws
        -> [T]
    {
        let file = PackageResources.url(resource)
        let yamlString = try String(contentsOf: file, encoding: .utf8)

        let decoder = YAMLDecoder()
        return try decoder.decode([T].self, from: yamlString)
    }
}
