//
//  ModelData.swift
//  Lanmarks_example
//
//  Created by 손명진 on 1/2/25.
//

import Foundation

@Observable
class ModelData {
    var landmarks: [Landmark] = load("landmarkData.json")
    
    var features: [Landmark] {
            landmarks.filter { $0.isFeatured }
        }
    
    var categories: [String: [Landmark]] {
            Dictionary(
                grouping: landmarks,
                by: { $0.category.rawValue }
            )
        }
}



func load<T: Decodable>(_ filename: String) -> T {
    let data: Data

    print("로드 실행했다")

    guard let file = Bundle.main.url(forResource: filename, withExtension: nil)
    else {
        print("Error: File not found: \(filename)")
        fatalError("Couldn't find \(filename) in main bundle.")
    }
    print("File found at path: \(file)")


    do {
        data = try Data(contentsOf: file)
    } catch {
        fatalError("Couldn't load \(filename) from main bundle:\n\(error)")
    }


    do {
        let decoder = JSONDecoder()
        return try decoder.decode(T.self, from: data)
    } catch {
        fatalError("Couldn't parse \(filename) as \(T.self):\n\(error)")
    }
}
