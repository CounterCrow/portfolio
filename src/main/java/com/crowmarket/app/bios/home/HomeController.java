package com.crowmarket.app.bios.home;

	import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.fasterxml.jackson.databind.ObjectMapper;

@Controller
public class HomeController {
	  
	  
	 	  
	   
	  
	  @RequestMapping(value="/") public String portfolioHome() {
	  
	  return "portfolio/index"; }
	  
	  @RequestMapping(value="/portfolioLoginAdmin") public String portfolioLoginAdmin() {
	  
	  return "cdm/login"; }
	  	
	  @RequestMapping(value="/admin") public String admin() {
	  
	  return "cdm/infra/index/index"; }
	  
	  @RequestMapping(value="/member") public String adminMember() {
	  
	  return "cdm/infra/index/member"; }
	  
	  @RequestMapping(value="/product") public String adminProduct() {
	  
	  return "cdm/infra/product/productList"; }
	  
	  @RequestMapping(value="/userLogin") public String userLogin() {
		  
		  return "projact01/login"; }
	  
	  @RequestMapping(value="/projact01") public String projact01() {
		  
		  return "projact01/infra/index/index"; }
	  
	  @RequestMapping(value="/signUp") public String signUp() {
		  
		  return "projact01/infra/member/signUp"; }
	  
	  @RequestMapping(value="/userLogout") public String logOut(HttpSession httpSession) {
		  httpSession.invalidate();
		  return "redirect:/projact01"; }
	  
	  @RequestMapping(value="/publicCorona1List")
		 public String publicCorona1List(Model model)throws Exception{
			  	System.out.println("test/publicCorona1List");
			  
			  	String apiUrl = "http://apis.data.go.kr/1471000/CovidDagnsRgntProdExprtStusService/getCovidDagnsRgntProdExprtStusInq?serviceKey=ZXC%2F7UsakCUJFoeRDuKkStvuc5GGSaU1sFdMupn4MqrCXpBBtGe8Ktv3V5uqxF7j9libofmzJkbsyOqmaE3QnQ%3D%3D&numOfRows=3&pageNo=1&type=json";
				
				URL url = new URL(apiUrl);
				HttpURLConnection httpURLConnection = (HttpURLConnection) url.openConnection();
				httpURLConnection.setRequestMethod("GET");
				
				BufferedReader bufferedReader;
				if (httpURLConnection.getResponseCode() >= 200 && httpURLConnection.getResponseCode() <= 300) {
					bufferedReader = new BufferedReader(new InputStreamReader(httpURLConnection.getInputStream()));
				} else {
					bufferedReader = new BufferedReader(new InputStreamReader(httpURLConnection.getErrorStream()));
				}
				
				StringBuilder stringBuilder = new StringBuilder();
				String line;
				while ((line = bufferedReader.readLine()) != null) {
					System.out.println("line: " + line);
					stringBuilder.append(line);
				}
				
				bufferedReader.close();
				httpURLConnection.disconnect();
				
				ObjectMapper objectMapper = new ObjectMapper();
			      
			      Map<String, Object> map = objectMapper.readValue(stringBuilder.toString(), Map.class);
			      
			      System.out.println("######## Map");
					for (String key : map.keySet()) {
						String value = String.valueOf(map.get(key));	// ok
						System.out.println("[key]:" + key + ", [value]:" + value);
					}
					
					
					Map<String, Object> header = new HashMap<String, Object>();
					header = (Map<String, Object>) map.get("header");
					
					System.out.println("######## Header");
					for (String key : header.keySet()) {
						String value = String.valueOf(header.get(key));	// ok
						System.out.println("[key]:" + key + ", [value]:" + value);
					}
					
					String aaa = (String) header.get("resultCode");
					String bbb = (String) header.get("resultMsg");
					System.out.println("header.get(\"resultCode\"): " + header.get("resultCode"));
					System.out.println("header.get(\"resultMsg\"): " + header.get("resultMsg"));
					System.out.println(aaa);
					System.out.println(bbb);
					
					Map<String, Object> body = new HashMap<String, Object>();
					body = (Map<String, Object>) map.get("body");
					
					List<Home> items = new ArrayList<Home>();
					items = (List<Home>) body.get("items");
					
					System.out.println("items.size(): " + items.size());
					
					/*
					 * for(Home item : items) { System.out.println(item.getMM()); }
					 */
					
					model.addAllAttributes(header);
					model.addAllAttributes(body);
					
			  return "test/publicCorona1List";
		 }
	 
	 
}
