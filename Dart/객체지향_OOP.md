#### 객체지향 프로그래밍 OOP (Object Oriented Programming)

* ``Class`` -> 설계서를 만드는 것. 
* ``Instance (인스턴스)`` -> ``Class`` 로 실제로 결과물을 만드는 것.

```Dart
void main(){
  Idol blackPink = Idol(
    '블랙핑크',
    ['지수', '제니', '리사', '로제'],
  ); // = new Idol();
  
  print(blackPink.name);
  print(blackPink.members);
  blackPink.sayHello();
  blackPink.introduce();
}

// Idol class
// name (이름) - 변수
// members (멤버들) - 변수
// sayHello (인사) - 함수
// introduce (멤버소개) - 함수
// constructor (생성자)

class Idol {
  String name = '블랙핑크';
  List<String> members = ['지수', '제니', '리사', '로제'];
  
  Idol(String name, List<String> members)
      : this.name = name,// 가장 기본적인 constructor
        this.members = members; // this -> 해당 클래스를 의미함.
  
  
  void sayHello() {
    print('안녕하세요 블랙핑크입니다.');
  }
  
  void introduce(){
    print('저희 멤버는 지수, 제니, 리사, 로제가 있습니다.');
  }
}
```

```Dart
void main(){
  Idol blackPink = Idol(
    '블랙핑크',
    ['지수', '제니', '리사', '로제'],
  ); // = new Idol();
  
  print(blackPink.name);
  print(blackPink.members);
  blackPink.sayHello();
  blackPink.introduce();
  
  Idol bts = Idol.fromList( // Named Constructor 응용
    [
      ['RM', '진', '슈가', '제이홉', '지민', '뷔','정국'],
      'BTS',
    ]
  );
  
  print(bts.name);
  print(bts.members);
  bts.sayHello();
  bts.introduce();
}

// Idol class
// name (이름) - 변수
// members (멤버들) - 변수
// sayHello (인사) - 함수
// introduce (멤버소개) - 함수
// constructor (생성자)

class Idol {
  String name = '블랙핑크';
  List<String> members = ['지수', '제니', '리사', '로제'];
  
  Idol(String name, List<String> members)
      : this.name = name,// 가장 기본적인 Constructor
        this.members = members; // this -> 해당 클래스를 의미함.

  // Idol(this.name, this.members); // 이것또한 가능하다.
  
  Idol.fromList(List values) // Named Constructor
      : this.members = values[0],
        this.name = values[1];
  
  void sayHello() {
    print('안녕하세요 ${this.name}입니다.');
  }
  
  void introduce(){
    print('저희 멤버는 ${this.members}가 있습니다.');
  }
}
```

