//
//  CombineNetworkView.swift
//  Network basics
//
//  Created by Ludovic Ollagnier on 06/06/2021.
//

import SwiftUI
import Combine

struct CombineNetworkView: View {

    @State private var results = [Song]()
    @State private var cancellable: AnyCancellable?

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
            guard let url = URL(string: "https://itunes.apple.com/search?term=pink+floyd&entity=song") else { return }
            self.cancellable = URLSession.shared.dataTaskPublisher(for: url)
                .map { $0.data }
                .decode(type: ITMSResponse.self, decoder: JSONDecoder())
                .replaceError(with: ITMSResponse(results: []))
                .eraseToAnyPublisher()
                .receive(on: RunLoop.main)
                .sink(receiveValue: { response in
                    self.results = response.results
                })
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

struct CombineNetworkView_Previews: PreviewProvider {
    static var previews: some View {
        CombineNetworkView()
    }
}
