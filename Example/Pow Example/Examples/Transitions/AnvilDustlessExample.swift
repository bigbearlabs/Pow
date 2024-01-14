import Pow
import SwiftUI

struct AnvilDustlessExample: View, Example {
    @State
    var isVisible: Bool = false

    var body: some View {
      VStack {
        VStack {
              if isVisible {
                  PlaceholderView()
                      .transition(.movingParts.anvilDustless)
                PlaceholderView()
                    .transition(.movingParts.anvilDustless)
                PlaceholderView()
                    .transition(.movingParts.anvilDustless)
              }
          }
          .border(.red)
          .defaultBackground()
          .onTapGesture {
              withAnimation {
                  isVisible.toggle()
              }
          }
        .autotoggle($isVisible)
      }
    }

    static let localPath = LocalPath()

    static var icon: Image? {
        Image(systemName: "scalemass")
    }
}


#Preview {
  AnvilDustlessExample()
}
