void main(List<String> args) {
  // 1. String Değişkenler ve Temel İşlemler

  // String veri tipi ile değişken tanımlama
  String greeting = "Hello";
  String name = "World";

  // String birleştirme ve interpolation kullanımı
  String message = "$greeting, $name!";
  print(message);

  // String metodları: toUpperCase, toLowerCase, substring, split
  print("Uppercase: ${message.toUpperCase()}");
  print("Lowercase: ${message.toLowerCase()}");
  print("Substring (0,5): ${message.substring(0, 5)}");
  
  // Boşluk karakterine göre bölerek kelimelere ayırma
  List<String> words = message.split(" ");
  print("Splitted words: $words");
  
  // 2. Listeler ve Üzerinde String İşlemleri

  // Şehir isimlerini içeren bir liste oluşturma
  List<String> cities = ["Ankara", "Sivas", "İstanbul", "İzmir", "Antalya"];
  print("Şehirler: $cities");
  print("Toplam şehir sayısı: ${cities.length}");

  // For döngüsü ile her bir şehri indeks numarasıyla yazdırma
  for (int i = 0; i < cities.length; i++){
    print("Şehir [$i]: ${cities[i]}");
  }
  
  // Yeni şehir ekleme
  cities.add("Bursa");
  print("Bursa eklendikten sonra: $cities");

  // Belirli bir indeksteki şehri silme (örneğin index 2'deki İstanbul'u kaldırma)
  cities.removeAt(2);
  print("İstanbul silindikten sonra: $cities");

  // While döngüsü ile listedeki şehirleri sondan kaldırarak yazdırma
  while (cities.isNotEmpty) {
    String removedCity = cities.removeLast();
    print("Kaldırılan şehir: $removedCity");
    print("Kalan şehirler: $cities");
  }

  // 3. Ekstra String İşlemleri: Her kelimenin ilk harfini büyütme

  String sentence = "dart dilinde string işlemleri çok önemlidir";
  // Cümleyi kelimelere böl
  List<String> sentenceWords = sentence.split(" ");
  
  // Her kelimenin ilk harfini büyük yap ve geri kalanını ekleme
  List<String> capitalizedWords = sentenceWords.map((word) {
    if (word.isEmpty) return word;
    return word[0].toUpperCase() + word.substring(1);
  }).toList();
  
  // Kelimeleri tekrar birleştirerek yeni cümle oluşturma
  String capitalizedSentence = capitalizedWords.join(" ");
  print("Orijinal cümle: $sentence");
  print("Büyük harfli cümle: $capitalizedSentence");
}
