# Lambda와 Proc 너흰 어떻게 다른 것인가

Proc와 Lambda는 `return`과 `break`에 대한 대응이 다르다

proc의 return는 call한 곳에 마치 인라인 한것같이 작동하고 (proc 내의 return 값이 호출한 메소드의 return 값이 되고, 메소드가 종료된다)  
break는 Error를 유발한다

이와 다르게 lambda에서는 return과 break모두 해당 블록의 실행을 끝내는 용도이다. 밖의 메소드로 다시 제어권, 흐름을 넘겨주는 역할인 것이다.