package proxy.dynamic;

public interface TestManager {
	
    public void addUser(String userId, String userName) ;
  
    public void delUser(String userId) ;
  
    public String findUser(String userId);
  
    public void modifyUser(String userId, String userName) ;
}
