//
//  AppButtonStyle.swift
//  Example
//
//  Created by abedalkareem omreyh on 10/04/2021.
//

import SwiftUI

struct AppButtonStyle: PrimitiveButtonStyle {

  func makeBody(configuration: PrimitiveButtonStyleConfiguration) -> some View {
    AppButton(configuration: configuration)
  }

  struct AppButton: View {

    // MARK: State properties

    @State var focused: Bool = false

    // MARK: - Properties

    let configuration: PrimitiveButtonStyle.Configuration

    // MARK: - Body

    var body: some View {
      return GeometryReader { geometry in
        Rectangle()
          .fill(Color.black)
          .overlay(
            configuration.label
              .foregroundColor(.white)
          )
          .cornerRadius(geometry.size.height / 2)
      }
      .scaleEffect(focused ? 1.1 : 1.0)
      .frame(maxWidth: .infinity, minHeight: 50, maxHeight: 50)
      .padding()
      .gesture(DragGesture(minimumDistance: 0, coordinateSpace: .local)
        .onChanged { _ in
          withAnimation {
            self.focused = true
          }
        }
        .onEnded { _ in
          withAnimation {
            self.focused = false
            configuration.trigger()
          }
        })
    }
  }
}
