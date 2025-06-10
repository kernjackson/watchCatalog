import SwiftUI
import WatchKit

struct ZStackDemoView: View {
    var body: some View {
        VStack(spacing: 20) {
            ZStack {
                Circle()
                    .fill(Color.blue.opacity(0.3))
                    .frame(width: 80, height: 80)
                
                Text("42")
                    .font(.title2)
                    .bold()
            }
            
            ZStack {
                RoundedRectangle(cornerRadius: 10)
                    .fill(Color.green.opacity(0.2))
                    .frame(height: 60)
                
                HStack {
                    Image(systemName: "checkmark.circle.fill")
                        .foregroundColor(.green)
                    Text("Complete")
                }
            }
        }
        .navigationTitle("ZStack")
    }
}
