package bg.demo;

import java.net.URL;

public class MainDemo {

	public static void main(String[] args) {
		System.out.println("start bg");
		String fileName = "/orm-mapping.xml";
		URL url = MainDemo.class.getResource(fileName);
		System.out.println("url mapping.xml "+fileName+"   "+url);
		
	}

}
