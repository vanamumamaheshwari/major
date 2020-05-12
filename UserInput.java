package org.javabrains.in;

import java.io.BufferedReader;
import java.io.InputStream;
import java.io.InputStreamReader;

public class UserInput {
public static void main(String[] args) throws Exception {
		// TODO Auto-generated method stub
		InputStreamReader is=new InputStreamReader(System.in);
		BufferedReader br=new BufferedReader(is);
		int n=Integer.parseInt(br.readLine());
		System.out.println(n);
		}
}
