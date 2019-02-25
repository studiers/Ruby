# 다른 사람을 부르다

js의 call 같은 것이 있더라, `send`라는 친구인데 `<obj_var>.send :<function> *args` 같이 넘겨주면 작동한다~!

찾아보다 보면 send와 __send__가 있는데 둘 다 같은 역할을 하지만 send는 오버라이드 할수 있고 __send__도 되긴하는데 warning 띄워준다

그냥 send는 건드려도 __send__는 건들지 말자

## Reference

https://stackoverflow.com/questions/4658269/ruby-send-vs-send