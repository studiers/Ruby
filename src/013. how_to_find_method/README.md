# 메소드야 어딨니?

Ruby가 Method를 어떻게 찾는지에 대한 리드미(? 메모?) 입니다

순은 아래와 같습니다

객체의 싱글톤 클래스 -> 모듈들 -> 해당 클래스 -> 부모 클래스 -> BasicObject 까지 반복 -> method_missing (NoMethodError) 