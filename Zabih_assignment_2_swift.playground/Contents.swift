
// Define Location struct
struct Location {
    var x: Double
    var y: Double
}
// I like different location not 2.5
let storeCoverage: Double = 4.4

let storeLocation_1 = Location(x: 9.8, y: 5.5)
let storeLocation_2 = Location(x: -5.0, y: 4.3)

// Customer Information within the Struct
struct Customer {
    var name: String
    var email: String
    var phoneNumber: String
    var acceptedNewsletter: Bool
    var location: Location
}
// I have add 11 Customer
let customers: [Customer] = [
    Customer(name: "Ahmad Shah", email: "ahmadshah@gmail.com", phoneNumber: "(437)-223-4444", acceptedNewsletter: true, location: Location(x: 2.0, y: 19.0)),
    Customer(name: "Wakil Nadim ", email: "wakad@gmail.com", phoneNumber: "(437)-111-3333", acceptedNewsletter: false, location: Location(x: -2.0, y: 14.0)),
    Customer(name: "Ahmad Nasir", email: "nasira@gmail.com", phoneNumber: "(437)-223-3344", acceptedNewsletter: true, location: Location(x: -6.9, y: 4.0)),
    Customer(name: "Khan Zada", email: "zadakhan@gmail.com", phoneNumber: "(437)-662-4444", acceptedNewsletter: true, location: Location(x: -5.0, y: 3.2)),
    Customer(name: "Lina  Romal", email: "linaor@gmail.com", phoneNumber: "(437)-223-7788", acceptedNewsletter: false, location: Location(x: -6.2, y: 0.5)),
    Customer(name: "Shakila  Ab", email: "abra@gmail.com", phoneNumber: "(437)-999-5555", acceptedNewsletter: true, location: Location(x: -6.0, y: 14.0)),
    Customer(name: "Modi Samo", email: "modi@gmail.com", phoneNumber: "(416)-978-3378", acceptedNewsletter: false, location: Location(x: -10.0, y: 0.5)),
    Customer(name: "Gomal Rago", email: "gomal@gmail.com", phoneNumber: "(416)-223-9988", acceptedNewsletter: true, location: Location(x: -3.0, y: 7.5)),
    Customer(name: "Kamo Rishab", email: "kamor@gmail.com", phoneNumber: "(223)-223-7788", acceptedNewsletter: false, location: Location(x: -6.0, y: 0.5)),
    Customer(name: "Shams Shora", email: "shamss@gmail.com", phoneNumber: "(444)-223-7788", acceptedNewsletter: true, location: Location(x: -4.3, y: 3.9)),
    Customer(name: "Noman Rayel", email: "noman@gmail.com", phoneNumber: "(555)-223-7788", acceptedNewsletter: false, location: Location(x: -7.0, y: 6.5))
   ]
// This Function calculate distance between two points
func distanceBetween(_ source: Location, _ target: Location) -> Double {
    let distanceX = source.x - target.x
    let distanceY = source.y - target.y
    return (distanceX * distanceX + distanceY * distanceY).squareRoot()
}


func customerInCoverageArea(storeLocation: Location, customers: [Customer]) {
    print("Customers within the store range at location (X Location: \(storeLocation.x), Y Location: \(storeLocation.y)):")
    for customer in customers {
        let distance = distanceBetween(customer.location, storeLocation)
        if distance <= storeCoverage {

            print("Customer Name: \(customer.name)Customer Email: \(customer.email)")
        }
    }
}

// calling func
customerInCoverageArea(storeLocation: storeLocation_1, customers: customers)
customerInCoverageArea(storeLocation: storeLocation_2, customers: customers)

