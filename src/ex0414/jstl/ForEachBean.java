package ex0414.jstl;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class ForEachBean {
	private String [] names = {"����", "����", "�ֹ�", "�μ�", "����", "����"};
	
	private List<String> menus = Arrays.asList(new String [] {"¥��", "«��", "������", "������", "�佺Ʈ"});
	
	private List<MemberDTO> memberList = new ArrayList<MemberDTO>();
	
	private Map<String, String> map = new HashMap<String, String>();
	
	public ForEachBean() {
		// member ����
		memberList.add(new MemberDTO("bjhye", 20, "����", "1234-1111"));
		memberList.add(new MemberDTO("ming", 26, "����", "1111-1234"));
		memberList.add(new MemberDTO("solmi", 20, "����", "2345-1111"));
		memberList.add(new MemberDTO("yeeun", 21, "����", "3333-1111"));
		memberList.add(new MemberDTO("mingddo", 22, "����", "4545-1111"));
		
		map.put("kr", "���ѹα�");
		map.put("us", "�̱�");
		map.put("jp", "�Ϻ�");
		map.put("cn", "�߱�");
		map.put("fr", "������");
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
