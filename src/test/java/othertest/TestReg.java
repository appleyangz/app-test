package othertest;

public class TestReg {

	
	public static void main(String[] args) {
		String str = "";
		//System.err.println(str.matches("[\u4e00-\u9fa5]"));
		//System.err.println(str.matches("a?"));
		
		/*p("a".matches("."));
		p("aa".matches("aa"));
		p("aaaa".matches("a*"));
		p("aaaa".matches("a+"));
		p("".matches("a*"));*/
		p("aaaa".matches("a?"));
		p("aaaa".matches("a+"));
		/*p("".matches("a?"));
		p("a".matches("a?"));
		p("214523145234532".matches("\\d{3,100}"));
		p("192.168.0.aaa".matches("\\d{1,3}\\.\\d{1,3}\\.\\d{1,3}\\.\\d{1,3}"));
		p("192".matches("[0-2][0-9][0-9]"));*/
	}
	
	
	public static void p(Object o) {
		System.out.println(o);
	}
	
}
