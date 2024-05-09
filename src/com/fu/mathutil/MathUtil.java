/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.fu.mathutil;

/**
 *
 * @author ADMIN
 */
public class MathUtil {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {

        long result = MathUtil1.getFactorial(5); // hàm tính đi coi là mấy

        System.out.println("expected: 5! = 120; actual : " + result);

        System.out.println("expected: 6! = 720; actual : " + MathUtil1.getFactorial(6));

        System.out.println("expected: 0! = 1; actual : " + MathUtil1.getFactorial(0));

        // THÊM CODE SAU LẦN ĐẦU TIÊN LÀM CHUYỆN ẤY - CODE LÊN SERVER 5:26 PM 09/05/2024
        
        System.out.println("expected: 1! = 1; actual : " + MathUtil1.getFactorial(1));
        System.out.println("expected: 3! = 6; actual : " + MathUtil1.getFactorial(3));
        
        

        // MathUtil1.getFactorial(-5); ; nếm ngoại lệ thật rồi , ai biểu đòi cà chớn

       
          
        // kĩ thuật kiểm thử phần mềm : ước lượng xem giá trị trả về của hàm là gì
        // expected value : 5!=120
        // mày /hàm ai đó viết khi chạy thực tế là mấy - actual , giả sử 120
        // if expected == actual , hàm ngon trong tình huống này 
    }

}
