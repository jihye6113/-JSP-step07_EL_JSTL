package ex0414.jstl;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class ForEachBean {
	private String [] names = {"ÁöÇı", "ÁöÈÆ", "¼Ö¹Ì", "¹Î¼­", "¿¹Àº", "Á¤¿¬"};
	
	private List<String> menus = Arrays.asList(new String [] {"Â¥Àå", "Â«»Í", "¸¶¶óÅÁ", "ÅÁ¼öÀ°", "Åä½ºÆ®"});
	
	private List<MemberDTO> memberList = new ArrayList<MemberDTO>();
	
	private Map<String, String> map = new HashMap<String, String>();
	
	public ForEachBean() {
		// member ÀúÀå
		memberList.add(new MemberDTO("bjhye", 20, "¼º³²", "1234-1111"));
		memberList.add(new MemberDTO("ming", 26, "¼­¿ï", "1111-1234"));
		memberList.add(new MemberDTO("solmi", 20, "¼­¿ï", "2345-1111"));
		memberList.add(new MemberDTO("yeeun", 21, "¼º³²", "3333-1111"));
		memberList.add(new MemberDTO("mingddo", 22, "±¤ÁÖ", "4545-1111"));
		
		map.put("kr", "´ëÇÑ¹Î±¹");
		map.put("us", "¹Ì±¹");
		map.put("jp", "ÀÏº»");
		map.put("cn", "Áß±¹");
		map.put("fr", "ÇÁ¶û½º");
	}

	public String[] getNames() {
		System.out.println("getNames() call");
		return names;
	}

	public List<String> getMenus() {
		System.out.println("getMenus() call");
		return menus;
	}

	public List<MemberDTO> getMemberList() {
		System.out.println("getMemberList() call");
		return memberList;
	}

	public Map<String, String> getMap() {
		System.out.println("getMap() call");
		return map;
	}
	
}
