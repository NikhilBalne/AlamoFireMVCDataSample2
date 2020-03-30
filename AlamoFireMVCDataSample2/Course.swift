//
//  Course.swift
//  AlamoFireMVCDataSample2
//
//  Created by iHub on 30/03/20.
//  Copyright © 2020 iHubTechnologiesPvtLtd. All rights reserved.
//

import Foundation

struct Course : Codable {
    let id : Int?
    let name : String?
    let link : String?
    let imageUrl : String?
    let number_of_lessons : Int?

    enum CodingKeys: String, CodingKey {

        case id = "id"
        case name = "name"
        case link = "link"
        case imageUrl = "imageUrl"
        case number_of_lessons = "number_of_lessons"
    }

    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        id = try values.decodeIfPresent(Int.self, forKey: .id)
        name = try values.decodeIfPresent(String.self, forKey: .name)
        link = try values.decodeIfPresent(String.self, forKey: .link)
        imageUrl = try values.decodeIfPresent(String.self, forKey: .imageUrl)
        number_of_lessons = try values.decodeIfPresent(Int.self, forKey: .number_of_lessons)
    }

}

