package edu.fau.group3.util;


import org.springframework.context.annotation.AnnotationConfigApplicationContext;


import edu.fau.group3.configuration.SpringJdbcConfig;
import edu.fau.group3.model.*;
import edu.fau.group3.services.*;

import java.util.List;


public class DBUtil {

	private final static AnnotationConfigApplicationContext CONTEXT = new AnnotationConfigApplicationContext(SpringJdbcConfig.class);
	private final static CaseService CASE_SERVICE =  CONTEXT.getBean(CaseService.class);
	private final static MemoryService MEMORY_SERVICE = CONTEXT.getBean(MemoryService.class);
	private final static CpuService CPU_SERVICE =  CONTEXT.getBean(CpuService.class);
	private final static GpuService GPU_SERVICE =  CONTEXT.getBean(GpuService.class);
	private final static LoginService LOGIN_SERVICE =  CONTEXT.getBean(LoginService.class);
	private final static StorageService Storage_SERVICE =  CONTEXT.getBean(StorageService.class);
	private final static CoolerService COOLER_SERVICE =  CONTEXT.getBean(CoolerService.class);
	private final static MotherboardService MOTHERBOARD_SERVICE =  CONTEXT.getBean(MotherboardService.class);
	private final static PsuService PSU_SERVICE =  CONTEXT.getBean(PsuService.class);
	private final static MonitorService MONITOR_SERVICE =  CONTEXT.getBean(MonitorService.class);

	public static List<Case_Table> getAllCases() {
	return CASE_SERVICE.getAll();
	}

	public static Case_Table getCaseByID(int ID) {
		return CASE_SERVICE.getByID(ID);
	}
	
	public static List<Memory_Table> getAllMemory() {
		return MEMORY_SERVICE.getAll();
	}
	
	public static Memory_Table getMemoryByID(int ID) {
		return MEMORY_SERVICE.getByID(ID);
	}
	
	public static boolean createCase(Case_Table t) {
		return CASE_SERVICE.create(t);
	}
	
	public static boolean updateCase(Case_Table t){
		return CASE_SERVICE.update(t);
	}
	
	public static boolean deleteCase(int id){
		return CASE_SERVICE.delete(id);
	}
	
	public static boolean createGPU(Memory_Table t){
		return MEMORY_SERVICE.create(t);
	}
	
	public static boolean updateMemory(Memory_Table t){
		return MEMORY_SERVICE.update(t);
	}
	
	public static boolean deleteMemory(int id){
			return MEMORY_SERVICE.delete(id);
	}
	
	public static List<CPU_Table> getAllCPUS(){
			return CPU_SERVICE.getAll();
	}

	public static CPU_Table getCPUbyID(int ID){
			return CPU_SERVICE.getByID(ID);
	}
	
	public static List<GPU_Table> getAllGPUS(){
			return GPU_SERVICE.getAll();
	}

	public static GPU_Table getGPUbyID(int ID){
			return GPU_SERVICE.getByID(ID);
	}
		
	public static boolean createCPU(CPU_Table t){
			return CPU_SERVICE.create(t);
	}

	public static boolean updateCPU(CPU_Table t){
			return CPU_SERVICE.update(t);
	}

	public static boolean deleteCPU(int id){
			return CPU_SERVICE.delete(id);
	}
	
	public static boolean createGPU(GPU_Table t){
			return GPU_SERVICE.create(t);
	}

	public static boolean updateGPU(GPU_Table t){
			return GPU_SERVICE.update(t);
	}

	public static boolean deleteGPU(int id){
			return GPU_SERVICE.delete(id);
	}
	
	public static List<Login_Table> getAllLogin(){
			return LOGIN_SERVICE.getAll();
	}

	public static Login_Table getLoginById(int id){
			return LOGIN_SERVICE.getByID(id);
	}

	public static boolean createUser(Login_Table e){
			return LOGIN_SERVICE.create(e);
	}

	public static boolean updateUser(Login_Table e){
			return LOGIN_SERVICE.update(e);
	}

	public static boolean deleteUser(int id){
			return LOGIN_SERVICE.delete(id);
	}
		
	public static List<Storage_Table> getAllStorage(){
			return Storage_SERVICE.getAll();
	}

	public static Storage_Table getStoragebyID(int ID){
			return Storage_SERVICE.getByID(ID);
	}
			

	public static boolean createStorage(Storage_Table t){
			return Storage_SERVICE.create(t);
	}

	public static boolean updateStorage(Storage_Table t){
			return Storage_SERVICE.update(t);
	}

	public static boolean deleteStorage(int id){
			return Storage_SERVICE.delete(id);
	}
	
	public static List<Motherboard_Table> getAllMotherboards() {
			return MOTHERBOARD_SERVICE.getAll();
	}

	public static Motherboard_Table getMotherboardByID(int ID) {
			return MOTHERBOARD_SERVICE.getByID(ID);
	}
	
	public static boolean createMotherboard(Motherboard_Table t){
			return MOTHERBOARD_SERVICE.create(t);
	}

	public static boolean updateMotherboard(Motherboard_Table t){
			return MOTHERBOARD_SERVICE.update(t);
	}

	public static boolean deleteMotherboard(int id){
			return MOTHERBOARD_SERVICE.delete(id);
	}
	
	public static List<Cooler_Table> getAllCoolers() {
			return COOLER_SERVICE.getAll();
	}

	public static PSU_Table getPsuByID(int ID) {
			return PSU_SERVICE.getByID(ID);
	}

	public static boolean createPsu(PSU_Table t){
			return PSU_SERVICE.create(t);
	}
	
	public static boolean updatePsu(PSU_Table t){
			return PSU_SERVICE.update(t);
	}
	
	public static boolean deletePsu(int id){
			return PSU_SERVICE.delete(id);
	}
	
	public static List<PSU_Table> getAllPsu() {
		return PSU_SERVICE.getAll();
	}
	
	public static Cooler_Table getCoolerByID(int ID) {
			return COOLER_SERVICE.getByID(ID);
	}
	
	public static boolean createCooler(Cooler_Table t){
			return COOLER_SERVICE.create(t);
	}
	
	public static boolean updatecooler(Cooler_Table t){
			return COOLER_SERVICE.update(t);
	}
	
	public static boolean deleteCooler(int id){
			return COOLER_SERVICE.delete(id);
	}
	
	public static List<Monitor_Table> getAllMonitors() {
			return MONITOR_SERVICE.getAll();
	}
	
	public static Monitor_Table getMonitorByID(int ID) {
		return MONITOR_SERVICE.getByID(ID);
	}
	
	public static boolean createMonitor(Monitor_Table t){
			return MONITOR_SERVICE.create(t);
	}
	
	public static boolean updateMonitor(Monitor_Table t){
			return MONITOR_SERVICE.update(t);
	}
	
	public static boolean deleteMonitor(int id){
			return MONITOR_SERVICE.delete(id);
	}
	
	// validates that username and password being entered is correct 
	public static int checkUsernameAndPassword(String email, String psw){
		List<Login_Table> userList = LOGIN_SERVICE.getAll();
		
		for	(int i = 0 ; i < userList.size() ; i++){
			if (userList.get(i).getUserName().equals(email)){
				if (userList.get(i).getPassWord().equals(psw)){
					return userList.get(i).getUserId();
				}
				break;
			}
		}return -1;	
	}

	
}
	