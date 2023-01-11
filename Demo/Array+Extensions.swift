//
//  Array+Extensions.swift
//  Demo
//
//  Created by Peter Pan on 2023/1/11.
//

import Foundation

extension Array where Element: Identifiable {
    func indexOfElement(with id: Element.ID) -> Self.Index {
        guard let index = firstIndex(where: { $0.id == id }) else {
            fatalError()
        }
        return index
    }
}
