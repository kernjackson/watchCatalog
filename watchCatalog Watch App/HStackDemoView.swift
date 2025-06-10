import SwiftUI
import WatchKit

struct HStackDemoView: View {
    var body: some View {
        VStack(spacing: 20) {
            HStack {
                Text("Left")
                Spacer()
                Text("Right")
            }
            
            HStack(spacing: 5) {
                Image(systemName: "heart.fill")
                    .foregroundColor(.red)
                Text("120")
                Text("BPM")
                    .foregroundColor(.secondary)
            }
            
            HStack {
                Button("Cancel") { }
                    .foregroundColor(.red)
                Button("OK") { }
                    .foregroundColor(.green)
            }
        }
        .navigationTitle("HStack")
    }
}
