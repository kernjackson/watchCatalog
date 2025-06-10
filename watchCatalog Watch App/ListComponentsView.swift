import SwiftUI
import WatchKit

struct ListComponentsView: View {
    @State private var selectedItem = "Option 1"
    
    let items = ["Option 1", "Option 2", "Option 3", "Option 4"]
    
    var body: some View {
        List {
            Section("Basic List") {
                ForEach(1...5, id: \.self) { index in
                    HStack {
                        Text("Item \(index)")
                        Spacer()
                        Text("Detail")
                            .foregroundColor(.secondary)
                    }
                }
            }
            
            Section("List with Icons") {
                HStack {
                    Image(systemName: "heart.fill")
                        .foregroundColor(.red)
                    Text("Health")
                }
                
                HStack {
                    Image(systemName: "figure.walk")
                        .foregroundColor(.green)
                    Text("Activity")
                }
                
                HStack {
                    Image(systemName: "moon.fill")
                        .foregroundColor(.blue)
                    Text("Sleep")
                }
            }
            
            NavigationLink("Picker Demo", destination: PickerDemoView())
        }
        .navigationTitle("Lists")
    }
}
