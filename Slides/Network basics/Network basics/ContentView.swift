//
//  ContentView.swift
//  Network basics
//
//  Created by Ludovic Ollagnier on 06/06/2021.
//

import SwiftUI

struct ContentView: View {

    @State private var results = [Song]()

    var body: some View {
        List(results, id: \.trackId) { item in
            HStack {
                VStack(alignment: .leading) {
                    Text(item.trackName)
                        .font(.headline)
                    Text(item.artistName)
                }
            }
        }.onAppear {
            loadData()
        }
    }

    func loadData() {
        guard let url = URL(string: "https://itunes.apple.com/search?term=pink+floyd&entity=song") else { return }
        let request = URLRequest(url: url)
        URLSession.shared.dataTask(with: request) { data, response, error in
            guard let data = data else { return }
            if let decodedResponse = try? JSONDecoder().decode(ITMSResponse.self, from: data) {
                DispatchQueue.main.async {
                    self.results = decodedResponse.results
                }
            }
        }.resume()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


struct Song: Codable {
    var trackId: Int
    var trackName: String
    var artistName: String
    var previewUrl: URL
}

struct ITMSResponse: Codable {
    var results: [Song]
}
