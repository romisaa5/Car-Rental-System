class Car {
  final String model;
  final String brand;
  final int id;
  final double priceForDay;
  final isAvilibile;
  Car(this.model, this.brand, this.id, this.priceForDay, this.isAvilibile);
  void displayInfo() {
    print(
        "Car's brand : $brand ,Car's brand : $brand ,car's id : $id ,Price for Day : $priceForDay ,Is avilible? $isAvilibile");
  }
}

class Customer {
  final String name;
  final int phone;
  Customer(this.name, this.phone);
  void displayInfoCustomer() {
    print("Customer's Name : $name ,Customer's Phone : $phone ");
  }
}

class Booking {
  final int bookId;
  final Customer customer;
  final Car car;
  bool isPaid;
  final int Days;
  double totalPrice;
  Booking(this.bookId, this.customer, this.car, this.isPaid, this.Days,
      this.totalPrice);
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
