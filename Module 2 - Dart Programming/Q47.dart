// 47. Create a program using Set
void main() {
  
  var products = {'Tea', 'Coffee', 'Sake'};

  products.add('Muffin');
  products.add('Mocha');

  products.remove('Coffee');

  if (products.contains('Sake')) {
     print('Sake is in the set');
  }

  for (var product in products) {
    print(product);
  }
}
