class Car {
  final String model;
  final String brand;
  final int id;
  final double priceForDay;
  bool isAvailable;

  Car(this.model, this.brand, this.id, this.priceForDay, this.isAvailable);

  void displayInfo() {
    print(
        "Car's Brand: $brand, Model: $model, ID: $id, Price per Day: \$${priceForDay.toStringAsFixed(2)}, Available: $isAvailable");
  }
}

class Customer {
  final String name;
  final String phone; 
  Customer(this.name, this.phone);

  void displayInfoCustomer() {
    print("Customer's Name: $name, Phone: $phone");
  }
}

class Booking {
  final int bookId;
  final Customer customer;
  final Car car;
  bool isPaid;
  final int days;
  double totalPrice;

  Booking(this.bookId, this.customer, this.car, this.isPaid, this.days)
      : totalPrice = days * car.priceForDay; 
  void completePayment() {
    if (!isPaid) {
      isPaid = true;
      print(
          "Payment completed for Booking ID: $bookId, Total: \$${totalPrice.toStringAsFixed(2)}");
    } else {
      print("Payment already completed.");
    }
  }
}

class Admin {
  List<Car> cars = [];

  void addCar(Car car) {
    cars.add(car);
    print("Car added: ${car.brand} ${car.model}");
  }

  void displayAvailableCars() {
    print("\nAvailable Cars:");
    for (var car in cars) {
      if (car.isAvailable) {
        car.displayInfo();
      }
    }
  }

  void displayAllCars() {
    print("\nAll Cars:");
    for (var car in cars) {
      car.displayInfo();
    }
  }
}

void main() {
  var car1 = Car("Model S", "Tesla", 101, 150.0, true);
  var car2 = Car("Corolla", "Toyota", 102, 80.0, false);

  var customer1 = Customer("John Doe", "0123456789");

  var admin = Admin();
  admin.addCar(car1);
  admin.addCar(car2);

  admin.displayAllCars();
  admin.displayAvailableCars();

  var booking1 = Booking(1, customer1, car1, false, 3);
  booking1.completePayment();
}
