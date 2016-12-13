package Io;

import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
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
import java.io.Reader;
import java.io.Writer;

import com.sun.org.apache.bcel.internal.generic.NEW;

import sun.security.util.Length;

public class BufferR {

	public static void main(String[] args) throws IOException {
		
		File file1 = new File("D:" + File.separator + "ceshi" + File.separator + "123.wmv");
		File file2 = new File("D:" + File.separator + "ceshi" + File.separator + "1233copy.wmv");

		// Reader i = new FileReader(file1);
		// BufferedReader br = new BufferedReader(i);
		// Writer o = new FileWriter(file2);
		// BufferedWriter bw = new BufferedWriter(o);

		FileInputStream i = new FileInputStream(file1);
		BufferedInputStream br = new BufferedInputStream(i);

		FileOutputStream o = new FileOutputStream(file2);
		BufferedOutputStream bw = new BufferedOutputStream(o);

		byte[] m = new byte[400];
		int n =0;
		int p ;
		

		/*while (br.read(m) != -1) {
			bw.write(m, n, p);
			//(byte) file1.length()

		}
*/
		br.close();

		bw.close();
		System.out.println("¸´ÖÆ³É¹¦");

		

	}
}
