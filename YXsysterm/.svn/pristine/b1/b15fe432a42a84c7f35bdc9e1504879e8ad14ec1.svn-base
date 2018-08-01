package com.commons.util;
import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.FileReader;
import java.io.FileWriter;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.Scanner;
/**
 * 
 * @author Administrator
 *
 */
public class IOUtil {
	private String fileA="C:\\Users\\Administrator\\Desktop\\note.txt";//需要复制的源文件路径
	private String fileB="C:\\Users\\Administrator\\Desktop\\1.txt";//复制文件所在路径
	/**
	 * 字节流复制
	 * @param A 源文件地址
	 * @param B 目标地址
	 */
	public static void copy(String A,String B) {
		File a=new File(A);
		File b=new File(B);
		if(a.exists()) {
			try {
//				if(!b.exists()) {
//					
//					b.createNewFile();
//				}
				InputStream input=new FileInputStream(a);
				OutputStream output= new FileOutputStream(b);
				//a.length();
				
				byte[] byt=new byte[1024];
				if(input.read(byt)>0) {
					output.write(byt);
					
				}
				System.out.println("复制成功");
				output.flush();
				output.close();
				input.close();
			} catch (IOException e) {
				e.printStackTrace();
				System.err.println("复制失败");
			}
		}else {
			System.out.println("源文件或路径不存在");
		}
	}
	/**
	 * 缓冲流
	 */
	public void copy1() {
		File a=new File(fileA);
		File b=new File(fileB);
		if(a.exists()) {
			try {
				if(!b.exists()) {
					b.createNewFile();
				}
				BufferedReader br=new BufferedReader(new FileReader(a));
				BufferedWriter bw=new BufferedWriter(new FileWriter(b));
				String str=br.readLine();
				while(str!=null) {
					bw.write(str);
					bw.newLine();//写入换行符
					str=br.readLine();
				}
				System.out.println("复制成功");
				bw.close();
				br.close();
			} catch (IOException e) {
				e.printStackTrace();
				System.err.print("复制失败");
			}
			
		}else {
			System.err.println("源文件或路径不存在");
		}
		
	}
	public static void main(String[] args) {
//		Scanner in=new Scanner(System.in);
//		CopyUtil co=new CopyUtil();
//		co.copy1();
//		StringBuffer str=new StringBuffer("d ddddd");
//		str.append("lkj");
//		int len=str.capacity();
//		str.trimToSize();
//		str.replace(0, 2, "welcome");
//		String str1=str.toString();
//		String str2=str1.replace("d", "l");
//		System.out.println(len);
//		System.out.println(str2);
	}
}
