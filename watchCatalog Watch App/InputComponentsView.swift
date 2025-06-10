import SwiftUI
import WatchKit

struct InputComponentsView: View {
    @State private var toggleValue = false
    @State private var sliderValue = 50.0
    @State private var stepperValue = 5
    
    var body: some View {
        List {
            Section("Toggle") {
                Toggle("Enable Feature", isOn: $toggleValue)
                
                Toggle(isOn: $toggleValue) {
                    Label("Notifications", systemImage: "bell")
                }
            }
            
            Section("Slider") {
                VStack {
                    Slider(value: $sliderValue, in: 0...100)
                    Text("Value: \(Int(sliderValue))")
                        .font(.caption)
                }
            }
            
            Section("Stepper") {
                Stepper("Count: \(stepperValue)", value: $stepperValue, in: 0...10)
            }
            
            Section("Digital Crown") {
                VStack {
                    Text("Crown Value")
                    Text("\(Int(sliderValue))")
                        .font(.title2)
                        .digitalCrownRotation($sliderValue, from: 0, through: 100, by: 1, sensitivity: .medium)
                }
            }
        }
        .navigationTitle("Input")
    }
}
