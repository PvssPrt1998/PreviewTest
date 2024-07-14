
import SwiftUI

struct SheetView<Content: View>: View {

    @ObservedObject var paddingValuesStorage: SheetPaddingValuesStorage
    
    @ViewBuilder let content: Content
    
    var body: some View {
            VStack(spacing: 12) {
                GrabberView().padding(.top, 12)
                ZStack {
                    VStack {
                        Spacer()
                        HStack {
                            Spacer()
                        }
                    }
                    content
                        .gesture(DragGesture())
                }
            }
            .padding(.horizontal, 16)
            .background(Color.bgSecond)
            .cornerRadius(20, corners: [.topLeft, .topRight])
            .padding(.top, paddingValuesStorage.topPadding)
            .gesture(
                paddingValuesStorage.dragGesture
                    .onChanged({value in
                        paddingValuesStorage.dragGestureOnChanged(value)
                    })
                    .onEnded({ value in
                        paddingValuesStorage.dragGestureOnEnded(value)
                    })
            )
            .ignoresSafeArea(.container, edges: .top)
    }
}

#Preview {
    SheetView(paddingValuesStorage: SheetPaddingValuesStorage(sizeState: .defalt)) {
       KartsView()
    }
}
