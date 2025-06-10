import SwiftUI
import WatchKit

struct VStackDemoView: View {
    var body: some View {
        VStack(spacing: 15) {
            Text("Title")
                .font(.headline)
            
            Text("Subtitle")
                .font(.subheadline)
                .foregroundColor(.secondary)
            
            Text("Body text goes here and can span multiple lines in a VStack layout.")
                .font(.body)
                .multilineTextAlignment(.center)
            
            Button("Action") { }
        }
        .navigationTitle("VStack")
    }
}
