import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            VStack(spacing: 20) {
                Text("Welcome to the Compliance App")
                    .font(.largeTitle)
                    .multilineTextAlignment(.center)
                
                Text("Choose your compliance framework to explore.")
                    .font(.subheadline)
                    .multilineTextAlignment(.center)
                    .padding(.bottom, 20)
                
                NavigationLink(destination: NIST53Page()) {
                    Text("NIST 800-53")
                        .frame(maxWidth: .infinity)
                        .padding()
                        .background(Color.blue)
                        .foregroundColor(.white)
                        .cornerRadius(10)
                        .padding(.horizontal, 20)
                }
                
                NavigationLink(destination: NIST171Page()) {
                    Text("CMMC")
                        .frame(maxWidth: .infinity)
                        .padding()
                        .background(Color.green)
                        .foregroundColor(.white)
                        .cornerRadius(10)
                        .padding(.horizontal, 20)
                }
                
                NavigationLink(destination: CIS18Page()) {
                    Text("CIS 18")
                        .frame(maxWidth: .infinity)
                        .padding()
                        .background(Color.orange)
                        .foregroundColor(.white)
                        .cornerRadius(10)
                        .padding(.horizontal, 20)
                }
            }
            .toolbar {
                // Disable the navigation bar
                ToolbarItem(placement: .principal) {
                    EmptyView()
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
