import SwiftUI
import WatchKit

struct NavigationComponentsView: View {
    @State private var showingSheet = false
    @State private var showingAlert = false
    
    var body: some View {
        List {
            Section("Navigation") {
                NavigationLink("Detail View", destination: DetailView())
                
                Button("Present Sheet") {
                    showingSheet = true
                }
                .sheet(isPresented: $showingSheet) {
                    SheetView()
                }
                
                Button("Show Alert") {
                    showingAlert = true
                }
                .alert("Alert Title", isPresented: $showingAlert) {
                    Button("OK") { }
                    Button("Cancel", role: .cancel) { }
                } message: {
                    Text("This is an alert message.")
                }
            }
            
            Section("Tab View") {
                NavigationLink("Tab Demo", destination: TabDemoView())
            }
        }
        .navigationTitle("Navigation")
    }
}
