import SwiftUI

struct ControlFamilyDetailView: View {
    let family: ControlFamily
  
    var body: some View {
        List(family.controls) { control in
            NavigationLink(destination: ControlDetailView(control: control)) {
                Text(control.name)
                    .font(.headline)
                    .padding(.vertical, 5)
            }
        }
        .navigationTitle("\(family.name) Controls")
    }
}

#Preview {
    ControlFamilyDetailView(family: .init(id: UUID(), name: "", description: "", controls: []))
}
