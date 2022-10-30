package edu.fau.group3.util;

import java.util.List;

import org.springframework.dao.EmptyResultDataAccessException;

import edu.fau.group3.model.CPU_Table;
import edu.fau.group3.model.Case_Table;
import edu.fau.group3.model.Login_Table;
import edu.fau.group3.model.Memory_Table;
import edu.fau.group3.model.Storage_Table;

public class TestApplicatin {

	public static void main(String[] args) {
		boolean didSave = false;
		
		/*
		List<Case_Table> list = DBUtil.getAllCases();
		System.out.println(list.size());
		
		for(int i = 0; i < list.size(); i++) {
			System.out.println(list.get(i).getCase());
		}
		*/
		
		/*
		List<Memory_Table> list1 = DBUtil.getAllMemory();
		System.out.println(list1.size());
		
		for(int i = 0; i < list1.size(); i++) {
			System.out.println(list1.get(i).getMemory());
		}
		
		
		List<Memory_Table> list1 = DBUtil.getAllMemory();
		System.out.println(list1.size());
		
		for(int i = 0; i < list1.size(); i++) {
			System.out.println(list1.get(i).getMemory());
		}
		*/
		
		/*
		List<Login_Table> list1 = DBUtil.getAllLogin();
		System.out.println(list1.size());
		
		for(int i = 0; i < list1.size(); i++) {
			System.out.println(list1.get(i).getUserName());
		}
		*/
		
		/*
		Memory_Table memory = DBUtil.getMemoryByID(302);
		System.out.println(memory.getPrice());
		*/
		
		Storage_Table memory = DBUtil.getStoragebyID(404);
		System.out.println(memory.getPrice());
		
		
		//get Case by id
		/*
		Login_Table login = DBUtil.getLoginById(1);
		System.out.println(login.getUserId());
		*/
		
		/*
		Storage_Table storage = DBUtil.getStoragebyID(403);
		System.out.println(storage.getStorageType());
		
		
	
		//create Case
		/*
		CPU_Table t = new CPU_Table(207,"Intel", "9700k", 350);
				didSave = DBUtil.createCPU(t);
				if (didSave){
				System.out.print("CPU has been created");
				}
		*/
		
		/*
		Login_Table e = new Login_Table(6, "LMaxwell", 12345);
			didSave = DBUtil.createUser(e);
			if (didSave){
			System.out.print("User has been created");
			}
		*/
				
		
		//delete Case
		/*
		didSave = DBUtil.deleteCPU(207);
		if (didSave){
		System.out.print("CPU has been deleted");
		}
		else {
		System.out.print("CPU does not exist");
		}

	
		//update Case
		/*
		Case_Table t = null;
		try {
		t = DBUtil.getCaseByID(205);
		t.setPrice(400);
		DBUtil.updateCase(t);
		}
		catch (EmptyResultDataAccessException ex){
		System.out.print("Not found");
		}
		*/
	}
	
	

}