package com.pcwk.cmn;
public class StringUtil {
        /**
         * request null처리 함수
         * @param input : 입력
         * @param replace : 치환 할 param
         * @return String : 앞 뒤 빈공간 제거된 문자열
         */
        public static String nvl(String input, String replace) {
                if(null == input){
                        input = replace;
                }
                return input.trim();
        }
}
