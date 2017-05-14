package com.cosun.utils;

/**
 * ff
 *
 * @author zhanfei
 * @create 2017/5/9
 */

public class MyTest {
    public static String main(String[] args) {
        System.out.println("■");
        StringBuffer sb = new StringBuffer();
        boolean[][] bool=new boolean[5][21];
        //随机布尔值
        for (int i=0;i<4;i++){
            for (int j=0;j<20;j++){
                bool[i][j]=Math.random()>0.5?true:false;
            }
        }
        //固定最右和最下 true
        for (int i=0;i<5;i++){
            bool[i][20]=true;
        }
        for (int j=0;j<21;j++){
            bool[4][j]=true;
        }
        for (int i=0;i<5;i++){
            for (int j=0;j<21;j++){
                System.out.print(bool[i][j]+"\t");
            }
            System.out.println("\n");
        }
        for (int i=0;i<5;i++){
            for (int j=0;j<21;j++){
                if (bool[i][j]){
                System.out.print("■"+" ");
                sb.append("■"+" ");
                }else{
                    System.out.print(" "+" ");
                    sb.append(" "+" ");
                }
            }
            System.out.println("\n");
            sb.append("\n");
        }
      return  sb.toString();
    }
}
