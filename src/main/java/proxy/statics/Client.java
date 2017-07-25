package proxy.statics;

public class Client {  
	  
    public static void main(String[] args){  
       /* UserManager userManager=new UserManagerImplProxy(new UserManagerImpl());  
        userManager.addUser("1111", "张三");  */
    	UserManagerImplProxy p = new UserManagerImplProxy();
    	p.addUser("1111", "张三");
    }  
}