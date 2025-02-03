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
  void displayInfoCustomer(){
    print("Customer's Name : $name ,Customer's Phone : $phone ");
  }
}
