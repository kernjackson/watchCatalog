import SwiftUI
import WatchKit

struct PickerDemoView: View {
    @State private var selectedItem = "Option 1"
    
    let items = ["Option 1", "Option 2", "Option 3", "Option 4"]
    
    var body: some View {
        VStack {
            Picker("Select Option", selection: $selectedItem) {
                ForEach(items, id: \.self) { item in
                    Text(item).tag(item)
                }
            }
            .pickerStyle(.wheel)
            
            Text("Selected: \(selectedItem)")
                .font(.caption)
        }
        .navigationTitle("Picker")
    }
}
