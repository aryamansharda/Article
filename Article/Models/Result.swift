//
//  Result.swift
//  Article
//
//  Created by Aryaman Sharda on 2/9/22.
//

import Foundation

struct Result: Decodable {
    let response: [Response]

    enum Response: Decodable {
        case heading(Heading)
        case paragraph(Paragraph)
        case image(Image)
        case quote(Quote)

        enum DecodingError: Error {
            case wrongJSON
        }

        enum CodingKeys: String, CodingKey {
            case heading
            case paragraph
            case image
            case quote
        }

        init(from decoder: Decoder) throws {
            let container = try decoder.container(keyedBy: CodingKeys.self)
            switch container.allKeys.first {
            case .heading:
                let value = try container.decode(Heading.self,
                                forKey: .heading)
                self = .heading(value)
            case .paragraph:
                let value = try container.decode(Paragraph.self,
                                forKey: .paragraph)
                self = .paragraph(value)
            case .image:
                let value = try container.decode(Image.self,
                                forKey: .image)
                self = .image(value)
            case .quote:
                let value = try container.decode(Quote.self,
                                forKey: .quote)
                self = .quote(value)
            case .none:
                throw DecodingError.wrongJSON
            }
        }
    }
}
