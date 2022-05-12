//
//  ContentView.swift
//  earthquake
//
//  Created by Zadoo, Shrawan on 10/05/2022.
//

import SwiftUI

// 1. Fetch data and display data for each earthquake as a row from URL given below
// 2. Earthquakes with magnitude greater than 8 are visually differentiated
// 3. Tapping an earthquake will open a map with the location of the earthquake
// http://api.geonames.org/earthquakesJSON?formatted=true&north=44.1&south=-9.9&east=-22.4&west=55.2&username=mkoppelman

struct Earthquake {
	let date: String
	let depth: String
	let magnitude: String
}

var earthquakeList = [
	Earthquake(date: "12 March 2012", depth: "Depth: 12 km", magnitude: "Mag: 5"),
	Earthquake(date: "14 March 2014", depth: "Depth: 22 km", magnitude: "Mag: 2"),
	Earthquake(date: "1 March 2016", depth: "Depth: 15 km", magnitude: "Mag: 7"),
	Earthquake(date: "22 March 2017", depth: "Depth: 9 km", magnitude: "Mag: 1"),
	Earthquake(date: "19 March 2018", depth: "Depth: 13 km", magnitude: "Mag: 8"),
	Earthquake(date: "3 March 2019", depth: "Depth: 20 km", magnitude: "Mag: 5"),
	Earthquake(date: "18 March 2020", depth: "Depth: 14 km", magnitude: "Mag: 2")
  ]

struct ContentView: View {
    var body: some View {
		NavigationView {
			List(earthquakeList, id: \.date) { earthquake in
				VStack(alignment: .leading) {
					Text("🗓 " + earthquake.date)
						.multilineTextAlignment(.leading)
						.padding(.vertical)
					HStack {
						Text("↓ " + earthquake.depth)
						Text("◎ " + earthquake.magnitude)
					}.padding(.bottom)
				}
				
			}
			.listStyle(GroupedListStyle())
			.navigationBarTitle(Text("Earthquakes"))
		}
		
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
