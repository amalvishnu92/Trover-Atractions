package com.my.servlet.packs;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import java.io.BufferedReader;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.Reader;
import java.net.URL;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

import org.json.*;



/**
 * Servlet implementation class SampleServlet
 */

public class SampleServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SampleServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String cityCode= request.getParameter("sel1");
		String city = "default";
		String citySearch = "default1";
		Map<String, String> cityMap;
		   {
		        cityMap = new HashMap<>();
		        cityMap.put("2450022", "Miami,Florida");
		        cityMap.put("116545", "Mexico City, Mexico");
		        cityMap.put("2295399", "Agra, India");
		        cityMap.put("2459115", "New York City, New York");
		        cityMap.put("2490383", "Seattle, Washington");
		        cityMap.put("1118021", "Otaru, Japan");
		        cityMap.put("23417505", "Princeville, Hawaii");
		        cityMap.put("1939753", "Riyadh, Saudi Arabia");
		        cityMap.put("2295423", "Kochi, India");
		        cityMap.put("725746", "Venice, Italy");
		    }
		   if (cityMap.containsKey(cityCode)) {
               city = cityMap.get(cityCode);
           }
		   Map<String, String> cityTLA;
		   {
		        cityTLA = new HashMap<>();
		        cityTLA.put("Miami,Florida","MIA");
		        cityTLA.put("Mexico City, Mexico","MEX");
		        cityTLA.put("Agra, India","AGR");
		        cityTLA.put("New York City, New York","NYC");
		        cityTLA.put("Seattle, Washington","SEA");
		        cityTLA.put("Otaru, Japan","CTS");
		        cityTLA.put("Princeville, Hawaii","LIH");
		        cityTLA.put("Riyadh, Saudi Arabia","RUH");
		        cityTLA.put("Kochi, India","COK");
		        cityTLA.put("Venice, Italy","VCE");
		    }
		   if (cityTLA.containsKey(city)) {
               citySearch = cityTLA.get(city);
           }		  
		try{
		String url = "http://api.trover.com/v1.0/places/";
		url = url.concat(cityCode).concat("/photos");
		JSONObject trover = readJsonFromUrl(url);
		JSONObject results= trover.getJSONObject("results");
		JSONArray photos= results.getJSONArray("photos");
		JSONObject photoObj = new JSONObject();
		ArrayList<String> photoList = new ArrayList<>();
		for (int i = 0; i < 10; i++) {
			photoObj = photos.getJSONObject(i);
			photoList.add(photoObj.getString("photo_url"));
		}
		request.setAttribute("photoList", photoList);
		request.setAttribute("city", city);
		request.setAttribute("citySearch", citySearch);
		request.getRequestDispatcher("troverimg.jsp").forward(request, response);
		}
		catch(Exception e){
			e.printStackTrace();
		}
		
	}
	
	public  String readAll(Reader rd) throws IOException {
	    StringBuilder sb = new StringBuilder();
	    int cp;
	    while ((cp = rd.read()) != -1) {
	      sb.append((char) cp);
	    }
	    return sb.toString();
	  }

	  public  JSONObject readJsonFromUrl(String url) throws IOException, JSONException {
	    InputStream is = new URL(url).openStream();
	    try {
	      BufferedReader rd = new BufferedReader(new InputStreamReader(is, Charset.forName("UTF-8")));
	      String jsonText = readAll(rd);
	      JSONObject json = new JSONObject(jsonText);
	      return json;
	    } finally {
	      is.close();
	    }
	  }
	
	

}
