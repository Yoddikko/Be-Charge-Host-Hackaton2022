//
//  ScrollViewOffsetReader.swift
//  TestViews
//
//  Created by Carmine Porricelli on 12/06/22.
//

import SwiftUI

struct ScrollViewOffsetReader<Content: View>: View {
    
    @Binding var scrollOffset: CGFloat
    @ViewBuilder var content: Content

    var body: some View {
        ScrollView(showsIndicators: false) {
            content
                .background(
                    GeometryReader {
                        Color.clear
                            .preference(
                                key: ViewOffsetKey.self,
                                value: -$0.frame(
                                    in: .named("scroll")
                                ).origin.y
                            )
                    }
                )
        }
        .coordinateSpace(name: "scroll")
        .onPreferenceChange(ViewOffsetKey.self, perform: handleScrollChange)

    }
    
    private func handleScrollChange(value: ViewOffsetKey.Value) {
        scrollOffset = value
    }
}

fileprivate struct ViewOffsetKey: PreferenceKey {
    typealias Value = CGFloat
    static var defaultValue = CGFloat.zero
    static func reduce(value: inout Value, nextValue: () -> Value) {
        value += nextValue()
    }
}

struct ScrollViewOffsetReader_Previews: PreviewProvider {
    static var previews: some View {
        ScrollViewOffsetReader(scrollOffset: .constant(0)) {
            Text("Hello")
        }
    }
}

