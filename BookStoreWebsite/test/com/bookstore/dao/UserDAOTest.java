package com.bookstore.dao;

import static org.junit.Assert.*;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.EntityNotFoundException;
import javax.persistence.Persistence;
import javax.persistence.PersistenceException;

import org.junit.AfterClass;
import org.junit.BeforeClass;
import org.junit.Test;

import com.bookstore.entity.Users;

public class UserDAOTest extends BaseDAOTest{
	private static UserDAO userDAO;
	
	@BeforeClass
	public static void setUpClass() throws Exception {
		BaseDAOTest.setUpBeforeClass();
		
		userDAO = new UserDAO(entityManager);
	}
	

	@Test
	public void testCreateUsers() {
		Users user1 = new Users();
		
		user1.setEmail("supriyamelkunde49@gmail.com");
		user1.setFullName("Supriya Dhanaji Melkunde");
		user1.setPassword("1234");
		
		EntityManagerFactory entityManagerFactory = Persistence.createEntityManagerFactory("BookStoreWebsite");
		EntityManager entityManager = entityManagerFactory.createEntityManager();
		
		UserDAO userDAO = new UserDAO(entityManager);
		user1 = userDAO.create(user1);
		
		assertTrue(user1.getUserId() > 0);
	}
	
	@Test(expected = PersistenceException.class)
	public void testCreateUsersFieldNotSet() {
		Users user1 = new Users();
		user1 = userDAO.create(user1);
	}
	
	@Test
	public void testUpdateUsers() {
		Users user = new Users();
		user.setUserId(3);
		user.setEmail("somanisuraj36@gmail.com");
		user.setFullName("Suraj Manoj Somani");
		user.setPassword("helloworld");
		
		user = userDAO.update(user);
		String expected = "helloworld";
		String actual = user.getPassword();
		
		assertEquals(expected, actual);
	}
	
	@Test
	public void testGetUserFound() {
		Integer userId = 1;
		Users user = userDAO.get(userId);
		
		if (user !=null) {
			System.out.println(user.getEmail());
		}
		assertNotNull(user);
	}
	
	@Test
	public void testGetUserNotFound() {
		Integer userId = 99;
		Users user = userDAO.get(userId);
		
		assertNull(user);
	}
	
	@Test
	public void testDeleteUsers() {
		Integer userId = 4;
		userDAO.delete(userId);
		
		Users user = userDAO.get(userId);
		
		assertNull(user);
	}
	
	@Test(expected = EntityNotFoundException.class)
	public void testDeleteNonExistUsers() {
		Integer userId = 45;
		userDAO.delete(userId);
	}
	
	@Test
	public void testListAll() {
		List<Users> listUsers = userDAO.listAll();
		
		for (Users user : listUsers) {
			System.out.println(user.getEmail());
		}
		
		assertTrue(listUsers.size() > 0);
		
	}
	
	@Test
	public void testCount() {
		long totalUsers = userDAO.count();
		assertEquals(3, totalUsers);
	} 
	
	@Test
	public void testCheckLoginSuccess() {
		String email = "surajsomani@gmail.com";
		String password = "helloworld";
		boolean loginResult = userDAO.checkLogin(email, password);
		
		assertTrue(loginResult);
	}
	
	@Test
	public void testCheckLoginFailed() {
		String email = "surajsomani";
		String password = "hellowld";
		boolean loginResult = userDAO.checkLogin(email, password);
		
		assertFalse(loginResult);
	}
	
	@Test 
	public void testFindByEmail() {
		String email="xyz@gmail.ccom";
		Users user = userDAO.findByEmail(email);
		
		assertNotNull(user);
	}
	
	@AfterClass
	public static void tearDownClass() throws Exception {
		BaseDAOTest.tearDownAfterClass();
	}
	

}
