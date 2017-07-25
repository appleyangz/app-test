package transaction;

import java.util.Arrays;

import org.junit.Before;
import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

public class SpringTransitionTest {

    private  ApplicationContext ctx = null;
    private  BookShopDao bookShopDao = null;
    private  BookShopService bookShopService = null;
    private  Cashier cashier = null;
    
    @Before
    public void main()
    {
        ctx = new ClassPathXmlApplicationContext("transaction.xml");
        bookShopDao = ctx.getBean(BookShopDao.class);
        bookShopService = ctx.getBean(BookShopService.class);
        cashier = ctx.getBean(Cashier.class);
    }

    @Test
    public void testBookShopDaoFindPriceByIsbn() {
        System.out.println(bookShopDao.findBookPriceByIsbn("1"));
    }

    @Test
    public void testBookShopDaoUpdateBookStock(){
        bookShopDao.updateBookStock("1");
    }

    
    @Test
    public void testBookShopDaoUpdateUserAccount(){
        bookShopDao.updateUserAccount("jack", 100);
    }
    
    
    @Test
    public void testBookShopService(){
        bookShopService.purchase("jerry", "1");
    }

    @Test
    public void testTransactionPropagation(){
        cashier.checkout("tom", Arrays.asList("5", "1"));
    }
}