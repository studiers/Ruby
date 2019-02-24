# 실, 섬유 (?)

동시성 프로그래밍을 할 때 학교서는 process, thread 정도만 가르치지만 fiber라는 개념도 있다.  
fiber는 thread보다 더 가벼운, 스레드보다 실행단위라는 말에 더 맞는 용어라고 생각한다.  

wiki에서는 아래와 같이 정의한다

`a particularly lightweight thread of execution`

이러한 파이버는 코루틴과 같은 유형으로 말하기도 하지만 나도 정확히 모르고, wiki에서도 여러 비유만 하지 정의를 하진 않는다 ㅇㅅㅇ..

아무튼 루비에 있길래 써보았다!