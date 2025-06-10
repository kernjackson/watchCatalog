import SwiftUI
import WatchKit

struct ButtonComponentsView: View {
    var body: some View {
        List {
            Section("Basic Buttons") {
                Button("Default Button") {
                    // Action
                }
                
                Button("Destructive Button") {
                    // Action
                }
                .foregroundColor(.red)
                
                Button("Disabled Button") {
                    // Action
                }
                .disabled(true)
            }
            
            Section("Button Styles") {
                Button("Bordered Button") {
                    // Action
                }
                .buttonStyle(.bordered)
                
                Button("Borderless Button") {
                    // Action
                }
                .buttonStyle(.borderless)
                
                Button("Plain Button") {
                    // Action
                }
                .buttonStyle(.plain)
            }
            
            Section("Icon Buttons") {
                Button(action: {}) {
                    Image(systemName: "heart.fill")
                }
                .foregroundColor(.red)
                
                Button(action: {}) {
                    Label("Play", systemImage: "play.fill")
                }
                .foregroundColor(.green)
            }
        }
        .navigationTitle("Buttons")
    }
}
