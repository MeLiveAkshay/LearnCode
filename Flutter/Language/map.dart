void main() {
  Map<String, String> countryCapital = {
    'India': 'New Delhi',
    'USA': 'Washington D.C.',
    'Japan': 'Tokyo'
  };

  countryCapital['Germany'] = 'Berlin';

  print(countryCapital['India']); // New Delhi
  print(countryCapital); 
}
