import SwiftUI
struct ControlDetailView: View {
    let control: Control
    @State private var webViewHeight: CGFloat = 1
    @State private var isLoading: Bool = true
    
    init(control: Control) {
        self.control = control
    }

    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 20) {
                                Text(control.name)
                                    .font(.title)
                                    .bold()
                                    .multilineTextAlignment(.leading)
                                if control.baseline.isEmpty{
                                    Text("Baseline(s): \("Not part of any baseline")")
                                        .font(.subheadline)
                                        .foregroundColor(.gray)
                                }else{
                                    Text("Baseline(s): \(control.baseline.joined(separator: ", "))")
                                        .font(.subheadline)
                                        .foregroundColor(.gray)
                                }

                Text("Control Statement")
                    .font(.system(size: 18, weight: .bold)) // Custom size and weight

                ZStack {
                    // Dynamically resizing WebView
                    HTMLWebView(
                        htmlContent: """
                        <html>
                        <head>
                            <style>
                                body {
                        font-family: -apple-system, BlinkMacSystemFont, "Segoe UI", Roboto, Helvetica, Arial, sans-serif;
                                    font-size: 47px;
                                    line-height: 1.5;
                                    margin: 0;
                                    padding-left: 10;
                                    padding-right: 10;

                                }
                                ul, ol {
                                    margin-left: 10px;
                                }
                                ul {
                                    list-style-type: disc;
                                }
                                ol {
                                    list-style-type: lower-alpha;
                                }
                            </style>
                        </head>
                        <body>
                            \(control.controlStatement)
                        </body>
                        </html>
                        """,
                        dynamicHeight: $webViewHeight,
                        isLoading: $isLoading
                    )
                    .frame(height: webViewHeight)
                    .overlay(
                            ProgressView() // Native loader overlay
                            .scaleEffect(1)
                            .padding()
                            .opacity(webViewHeight == 1 ? 1 : 0) // Show loader until content is loaded
                            )

                  
                }

                Text("Supplemental Guidance")
                    .font(.system(size: 18, weight: .bold)) // Custom size and weight
                Text(control.supplementalGuidance)
                    .font(.body) // Matches HTML font size
                    .lineSpacing(1.5) // Matches HTML line-height
                    
            }
            .padding()
        }
        .navigationTitle("Control Detail")
    }
}
