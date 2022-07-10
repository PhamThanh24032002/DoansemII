package com.security;

import java.util.Scanner;

public class testHashPass {
	public static void main(String[] args) {
		Scanner scanner = new Scanner(System.in);
		System.out.println("Vui lòng nhập pass cần mã hóa");
		String inputPass = scanner.nextLine();
		HashPassMD5 hashPassMD5 = new HashPassMD5();
		System.out.println("Mã MD5 đã mã hóa là: " + hashPassMD5.toMD5(inputPass));
//		System.out.println("VUi lòng nhập mật khẩu: ");
//		String pass = scanner.nextLine();
//		System.out.println("Vui lòng nhập mã hóa: ");
//		String hashedPass = scanner.nextLine();
//		System.out.println(hashPassMD5.verifyMD5(hashedPass, pass));
//		if (hashPassMD5.verifyMD5(hashedPass, pass) == true)
//			System.out.println("Đúng");
//		else
//			System.out.println("Sai");
	}
}
