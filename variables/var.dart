void main(List<String> Args) {
  // var veri tipi ile değişken tanımlanabilir.
  // var veri tipi değişkenin ilk değerine göre belirlenir.

  print("Hello World");

  var a = 5;

  var b = 3.14;

  var c = "Hello World";

  var d = true;

  var e = [1, 2, 3, 4, 5];

  var f = {"name": "ismail", "age": 25, 15:"fifteen"};

  print("$a, $b, $c, $d, $e, $f");

  print(
    "a: ${a.runtimeType}, b: ${b.runtimeType}, c: ${c.runtimeType}, d: ${d.runtimeType}, e: ${e.runtimeType}, f: ${f.runtimeType}",
  );

  print("a: ${a}, b: ${b}, c: ${c}, d: ${d}, e: ${e}, f: ${f}");
}
