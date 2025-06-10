import SwiftUI
import WatchKit

struct GridDemoView: View {
    let columns = [
        GridItem(.flexible()),
        GridItem(.flexible())
    ]
    
    var body: some View {
        ScrollView {
            LazyVGrid(columns: columns, spacing: 10) {
                ForEach(1...8, id: \.self) { index in
                    RoundedRectangle(cornerRadius: 8)
                        .fill(Color.blue.opacity(0.3))
                        .frame(height: 40)
                        .overlay(Text("\(index)"))
                }
            }
            .padding()
        }
        .navigationTitle("Grid")
    }
}
