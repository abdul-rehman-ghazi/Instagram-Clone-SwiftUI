//
//  Searchbar.swift
//  Instagram-SwiftUI
//
//  Created by Pankaj Gaikar on 22/05/21.
//

import Foundation
import SwiftUI

struct SearchBar: View {
    @Binding var text: String
    var placeholder: String

    var body: some View {
        HStack {
            Image(systemName: "magnifyingglass")
                .foregroundColor(Color(.systemGray4))
                .padding(.horizontal, 5)
            TextField(placeholder, text: $text)
                .overlay(!text.isEmpty ?
                         Image(systemName: "xmark.circle.fill")
                    .foregroundColor(Color(.systemGray4))
                    .padding(.leading, 10)
                    .onTapGesture {
                        text = ""
                    }
                    : nil,
                     alignment: .trailing)
        }
        .padding(10)
        .overlay(
            RoundedRectangle(cornerRadius: 8)
                .stroke(lineWidth: 2)
                .foregroundColor(Color(.systemGray4))
        )
        .padding(.horizontal, 10)
    }
}
