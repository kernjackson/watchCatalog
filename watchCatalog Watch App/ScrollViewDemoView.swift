import SwiftUI
import WatchKit

struct ScrollViewDemoView: View {
    var body: some View {
        ScrollView {
            VStack(spacing: 10) {
                ForEach(1...20, id: \.self) { index in
                    HStack {
                        Text("Item \(index)")
                        Spacer()
                        Image(systemName: "chevron.right")
                            .foregroundColor(.secondary)
                    }
                    .padding()
                    .background(Color.gray.opacity(0.1))
                    .cornerRadius(8)
                }
            }
            .padding()
        }
        .navigationTitle("ScrollView")
    }
}
