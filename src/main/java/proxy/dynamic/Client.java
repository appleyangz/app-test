package proxy.dynamic;

import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.lang.reflect.Proxy;

public class Client {  
	  
	public static void main(String[] args){  
        LogHandler logHandler=new LogHandler();  
        UserManager userManager=(UserManager)logHandler.newProxyInstance(new UserManagerImpl());  
//        userManager.addUser("1111", "李四");  
        
       /* TestManager test=(TestManager)logHandler.newProxyInstance(new TestManagerImpl());  
        test.addUser("222", "王五"); */
        
      //这里可以通过运行结果证明userManager是Proxy的一个实例，这个实例实现了Subject接口    
        System.err.println(userManager instanceof Proxy);    
            
        //这里可以看出userManager的Class类是$Proxy0,这个$Proxy0类继承了Proxy，实现了Subject接口    
        System.err.println("userManager的Class类是："+userManager.getClass().toString());    
            
        System.err.print("userManager中的属性有：");    
            
        Field[] field=userManager.getClass().getDeclaredFields();    
        for(Field f:field){    
            System.err.print(f.getName()+", ");    
        }    
            
        System.err.print("\n"+"userManager中的方法有：");    
            
        Method[] method=userManager.getClass().getDeclaredMethods();    
            
        for(Method m:method){    
            System.err.print(m.getName()+", ");    
        }    
            
        System.err.println("\n"+"userManager的父类是："+userManager.getClass().getSuperclass());    
            
        System.err.print("\n"+"userManager实现的接口是：");    
            
        Class<?>[] interfaces=userManager.getClass().getInterfaces();    
            
        for(Class<?> i:interfaces){    
            System.err.print(i.getName()+", ");    
        }    
    
        System.err.println("\n\n"+"运行结果为：");    
        userManager.addUser("000", "000");
    }   
}