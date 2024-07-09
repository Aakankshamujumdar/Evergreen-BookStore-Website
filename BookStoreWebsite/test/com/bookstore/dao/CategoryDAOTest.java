package com.bookstore.dao;

import static org.junit.Assert.*;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;

import org.junit.AfterClass;
import org.junit.BeforeClass;
import org.junit.Test;

import com.bookstore.entity.Category;

public class CategoryDAOTest extends BaseDAOTest{
	private static CategoryDAO CategoryDao;

	@BeforeClass
	public static void setUpBeforeClass() throws Exception {
		BaseDAOTest.setUpBeforeClass();
		CategoryDao = new CategoryDAO(entityManager); 
	}

	@AfterClass
	public static void tearDownAfterClass() throws Exception {
		BaseDAOTest.tearDownAfterClass();
	}

	@Test
	public void testCreateCategory() {
		Category newCat = new Category("Health");
		Category category = CategoryDao.create(newCat);
		
		assertTrue(category != null && category.getCategoryId() > 0);
	}

	@Test
	public void testUpdateCategory() {
		Category cat = new Category("Java Core");
		cat.setCategoryId(1);
		
		Category category = CategoryDao.update(cat);
		
		assertEquals(cat.getName(),category.getName());
	}

	@Test
	public void testGet() {
		Integer catId = 2;
		Category cat = CategoryDao.get(catId);
		
		assertNotNull(cat);
	}

	@Test
	public void testDeleteCategory() {
		Integer catId = 3;
		CategoryDao.delete(catId);
		Category cat = CategoryDao.get(catId);
		
		assertNull(cat);
	}

	@Test
	public void testListAll() {
		List<Category> listCategory = CategoryDao.listAll();
		
		listCategory.forEach(c -> System.out.print(c.getName() + ", "));
		
		assertTrue(listCategory.size() > 0);
	}

	@Test
	public void testCount() {
		long totalCategories = CategoryDao.count();
		
		assertEquals(4, totalCategories);
	}
	
	@Test
	public void testFindByName() {
		String name = "Java core";
		Category category = CategoryDao.findByName(name);
		
		assertNotNull(category);
	}
	
	@Test
	public void testFindByNameNotFound() {
		String name = "Java core1";
		Category category = CategoryDao.findByName(name);
		
		assertNull(category);
	}

}
