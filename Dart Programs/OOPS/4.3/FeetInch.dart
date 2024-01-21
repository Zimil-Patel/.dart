class FeetInch {
  late int feet, inches;

  void setFeetInch({required feet, required inches}) {
    this.feet = feet + (inches ~/ inches);
    this.inches = inches ~/ feet;
  }

  void getFeetInches() {
    print("\nFeet : $feet");
    print("Inches : $inches\n");
  }
}
