


import SwiftUI

struct MockData {
    let name: String
    let city: String
    let location: String
    let rating: String
    let reviews: String
    let info: String
    let hotelName: String
    let description: String
    let imageName: [String]
    let price: String
}

class HotelListViewModel: ObservableObject {
    
    let buttonTitles = ["Already Booked", "Looking for Partner", "Rented Rooms"]
    let data: [MockData] = [MockData(name: "Alex Norman",
                                     city: "CA, United States.",
                                     location: "1200 E Huntington Dr,, Los Angeles County, California, Duarte, United States",
                                     rating: "4.9",
                                     reviews: "(6.8k reviews)",
                                     info: "A high quality renovation, with personal bathrooms, to welcome you in the heart of Lyon. On the mythical Croix Rousse hill, nice surprises to discover await you.",
                                     hotelName: "Brunel's SS Great Britain",
                                     description: "Great Western Dockyard, Gas Ferry Rd, Bristol BS1 6TY",
                                     imageName: ["scrollingImage0","scrollingImage1","scrollingImage2","scrollingImage3","scrollingImage4","scrollingImage5"],
                                     price: "$650/Night"),
                            MockData(name: "Alex Norman",
                                     city: "CA, United States.",
                                     location: "1200 E Huntington Dr,, Los Angeles County, California, Duarte, United States",
                                     rating: "4.9",
                                     reviews: "(6.8k reviews)",
                                     info: "A high quality renovation, with personal bathrooms, to welcome you in the heart of Lyon. On the mythical Croix Rousse hill, nice surprises to discover await you.",
                                     hotelName: "Brunel's SS Great Britain",
                                     description: "Great Western Dockyard, Gas Ferry Rd, Bristol BS1 6TY",
                                     imageName: ["scrollingImage0","scrollingImage1","scrollingImage2","scrollingImage3","scrollingImage4","scrollingImage5"],
                                     price: "$650/Night"),
                            MockData(name: "Alex Norman",
                                     city: "CA, United States.",
                                     location: "1200 E Huntington Dr,, Los Angeles County, California, Duarte, United States",
                                     rating: "4.9",
                                     reviews: "(6.8k reviews)",
                                     info: "A high quality renovation, with personal bathrooms, to welcome you in the heart of Lyon. On the mythical Croix Rousse hill, nice surprises to discover await you.",
                                     hotelName: "Brunel's SS Great Britain",
                                     description: "Great Western Dockyard, Gas Ferry Rd, Bristol BS1 6TY",
                                     imageName: ["scrollingImage0","scrollingImage1","scrollingImage2","scrollingImage3","scrollingImage4","scrollingImage5"],
                                     price: "$650/Night"),]
}
