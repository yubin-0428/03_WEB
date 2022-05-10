/*
이벤트 : 마우스, 키이벤트, 로드, 기타이벤트

(0). 마우스 이벤트의 종류
 1. click 

 - 사용자해 해당 element를 클릭했을 때(버튼을 눌렀다가 떼었을 때) 발생 합니다.

 2. mousedown 

 - 사용자가 해당 element에서 마우스 버튼을 눌렀을 때 발생합니다.

 3. mouseup 

 - 사용자가 해당 element에서 눌렀던 마우스 버튼을 떼었을 때 발생합니다.

 4. dblclick 

 - 사용자가 해당 element에서 마우스 버튼을 더블 클릭했을 때 발생합니다.

 5. mousemove 

 - 사용자가 해당 element에서 마우스를 움직였을 때 발생합니다.

6. mouseover 

 - 사용자가 마우스를 해당 element 바깥에서 안으로 옮겼을 때 발생합니다.

 7. mouseout 

 - 사용자가 마우스를 해당 element 안에서 바깥으로 옮겼을 때 발생합니다.

 8. mouseenter 

 - 사용자가 마우스를 해당 element 바깥에서 안으로 옮겼을 때 발생합니다.

 - 버블링이 발생하지 않습니다.

 9. mouseleave 

 - 사용자가 마우스를 해당 element 안에서 바깥으로 옮겼을 때 발생합니다.

 - 버블링이 발생하지 않습니다.

 10. contextmenu 

 - 마우스 오른쪽 버튼을 눌렀을 때 발생합니다.
 
(1). 키보드 이벤트
- key down : 키가 눌렸을 때 발생
- keyup : 키 누름이 해제될 때
- keypress : 키가 눌린 상태일 때 -- 더이상 사용되지 않습니다. 사용이 권장되지 않습니다.
 
(2). 기타이벤트
- load : 로딩이 완료 되었을 때 발생되는 이벤트
- scroll : 스크롤바를 움직였을 때 발생되는 이벤트
- resize : 사이즈가 변경되었을 때 발생되는 이벤트

(3). 이벤트 연결 방식 
        : 인라인, 기본, 표준
- 인라인 이벤트 모델
   ▶ html 요소에 직접 이벤트를 연결하는 방식.
 */
 