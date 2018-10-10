package com.shouhou.enums;

public enum BooleanEnum {

	T("T", 1), F("F", 2);

	private String name;
	private Integer index;

	private BooleanEnum(String name, Integer index) {
		this.name = name;
		this.index = index;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public Integer getIndex() {
		return index;
	}

	public void setIndex(Integer index) {
		this.index = index;
	}
	
	

}
