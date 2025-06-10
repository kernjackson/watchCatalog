import SwiftUI
import WatchKit

struct SheetView: View {
    @Environment(\.dismiss) private var dismiss
    
    var body: some View {
        VStack {
            Text("Sheet View")
                .font(.title2)
            
            Text("This is a modal sheet presentation")
                .font(.body)
                .padding()
            
            Button("Dismiss") {
                dismiss()
            }
        }
    }
}
