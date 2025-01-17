import SwiftUI
import WebKit

struct HTMLWebView: UIViewRepresentable {
    let htmlContent: String
    @Binding var dynamicHeight: CGFloat
    @Binding var isLoading: Bool

    func makeUIView(context: Context) -> WKWebView {
        let webView = WKWebView()
        webView.scrollView.isScrollEnabled = false
        webView.navigationDelegate = context.coordinator
        return webView
    }

    func updateUIView(_ webView: WKWebView, context: Context) {
        print("Loading HTML content...") // Debugging
        webView.loadHTMLString(htmlContent, baseURL: nil)
    }

    func makeCoordinator() -> Coordinator {
        Coordinator(self)
    }

    class Coordinator: NSObject, WKNavigationDelegate {
        var parent: HTMLWebView
        var hasFinishedLoading = false // To track if didFinish was called

        init(_ parent: HTMLWebView) {
            self.parent = parent
        }

        func webView(_ webView: WKWebView, didFinish navigation: WKNavigation!) {
            hasFinishedLoading = true // Mark as finished
            print("WebView didFinish loading.") // Debugging
            DispatchQueue.main.asyncAfter(deadline: .now() + 0.1) {
                let contentHeight = webView.scrollView.contentSize.height
                print("WebView content height: \(contentHeight)") // Debugging
                DispatchQueue.main.async {
                    self.parent.dynamicHeight = contentHeight
                    self.parent.isLoading = false // Stop the loader
                    print("Set isLoading to false.") // Debugging
                }
            }
        }

        func webView(_ webView: WKWebView, didStartProvisionalNavigation navigation: WKNavigation!) {
            print("WebView didStart loading.") // Debugging
            DispatchQueue.main.async {
                self.parent.isLoading = true
            }

            // Add a fallback timeout to stop the loader
            DispatchQueue.main.asyncAfter(deadline: .now() + 5.0) { [weak self] in
                guard let self = self else { return }
                if !self.hasFinishedLoading {
                    print("Fallback: Stopping loader after timeout.") // Debugging
                    self.parent.isLoading = false
                }
            }
        }

        func webView(_ webView: WKWebView, didFail navigation: WKNavigation!, withError error: Error) {
            print("WebView loading failed with error: \(error.localizedDescription)") // Debugging
            DispatchQueue.main.async {
                self.parent.isLoading = false
            }
        }
    }
}
