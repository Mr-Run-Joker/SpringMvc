package com.soft.tools;

import java.awt.Color;
import java.awt.Font;
import java.awt.Graphics;
import java.awt.image.BufferedImage;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.Random;

import com.sun.image.codec.jpeg.ImageFormatException;
import com.sun.image.codec.jpeg.JPEGCodec;
import com.sun.image.codec.jpeg.JPEGImageEncoder;

public class ImageUtil {
	private static final char[] chars = { '0', '1', '2', '3', '4', '5', '6',
			'7', '8', '9', 'A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I' };
	private static final int SIZE = 4;      // 验证码图片中文字的个数
	private static final int LINES = 3;     // 验证码图片中的干扰线的数量
	private static final int WIDTH = 70;    // 验证码图片的宽度
	private static final int HEIGHT = 20;   // 验证码图片的高度
	private static final int FONT_SIZE = 15;// 验证码图片中文字的大小
	private static String code=null;//验证码
	private static BufferedImage  codeImg=null;//验证码图片
	/**
	 * 生成验证码和验证码图片的方法，并封装在Map中。 
	 * 
	 * 其中Map的key是验证码，Map的value是验证码图片。
	 */
	public static void createImage() {
		
		StringBuffer sb = new StringBuffer();
		
		codeImg = new BufferedImage(WIDTH, HEIGHT, BufferedImage.TYPE_INT_RGB);
		
		Graphics graphic = codeImg.getGraphics();
		graphic.setColor(Color.WHITE);  
		graphic.fillRect(0, 0, WIDTH, HEIGHT);
		Random ran = new Random();
		// 画随机字符
		for (int i = 1; i <= SIZE; i++) {
			int r = ran.nextInt(chars.length);
			graphic.setColor(getRandomColor());
			graphic.setFont(new Font(null, Font.BOLD + Font.ITALIC, FONT_SIZE));
			graphic.drawString(chars[r] + "", (i - 1) * WIDTH / SIZE,
					HEIGHT / 2);
			sb.append(chars[r]);// 将字符保存，存入Session
		}
		// 画干扰线
		for (int i = 1; i <= LINES; i++) {
			graphic.setColor(getRandomColor());
			graphic.drawLine(ran.nextInt(WIDTH), ran.nextInt(HEIGHT), ran
					.nextInt(WIDTH), ran.nextInt(HEIGHT));
		}
		code=sb.toString();
	}
	// 产生随机颜色的方法
		private static Color getRandomColor() {
			
			Random ran = new Random();   // 随机函数
			// 产生随机的RGB颜色
			Color color = new Color(ran.nextInt(256), ran.nextInt(256), ran
					.nextInt(256));
			return color;
		}
		/*
		 * 將圖片轉化為輸出流
		*/
		public static InputStream getInputSream() {
			try {
				ByteArrayOutputStream bos=new ByteArrayOutputStream();
				JPEGImageEncoder encoder=JPEGCodec.createJPEGEncoder(bos);
				encoder.encode(codeImg);
				byte[] imageBts=bos.toByteArray();
				InputStream in=new ByteArrayInputStream(imageBts);
				return in;
			} catch (ImageFormatException e) {
				e.printStackTrace();
			} catch (IOException e) {
				e.printStackTrace();
			}
			return null;
			
		}
		public static String getCode() {
			return code;
		}
		public static BufferedImage getCodeImg() {
			return codeImg;
		}
		
}
