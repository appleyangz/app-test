package proxy.dynamic;

public class TestManagerImpl implements TestManager {
	@Override  
    public void addUser(String userId, String userName) {  
        System.out.println("TestManagerImpl.addUser");  
    }  
  
    @Override  
    public void delUser(String userId) {  
        System.out.println("TestManagerImpl.delUser");  
    }  
  
    @Override  
    public String findUser(String userId) {  
        System.out.println("TestManagerImpl.findUser");  
        return "张三";  
    }  
  
    @Override  
    public void modifyUser(String userId, String userName) {  
        System.out.println("TestManagerImpl.modifyUser");  
  
    }  
}
