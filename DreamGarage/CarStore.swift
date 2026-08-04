//import SwiftUI
//
//class CarStore: ObservableObject {
//
//    @Published var carsList = cars
//
//    func toggleFavourite(car: Car) {
//
//        if let index = carsList.firstIndex(where: { $0.id == car.id }) {
//
//            carsList[index].isFavourite.toggle()
//        }
//    }
//
//    func toggleGarage(car: Car) {
//
//        if let index = carsList.firstIndex(where: { $0.id == car.id }) {
//
//            carsList[index].isGarage.toggle()
//        }
//    }
//
//    func addViewed(car: Car) {
//
//        if let index = carsList.firstIndex(where: { $0.id == car.id }) {
//
//            carsList[index].isViewed = true
//        }
//    }
//}
