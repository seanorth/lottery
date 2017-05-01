package com.cosun.utils;

import java.util.UUID;

import com.cosun.entities.Ticket;

public class UuidUtils {
	public static String getUUID(){
		return UUID.randomUUID().toString().replaceAll("-", "");
	}
	public static Ticket engine(Ticket ticket) {
		String string = getUUID();
		String ranStr=string.substring(0, 4)+'-'+string.substring(4,8)+'-'+string.substring(8, 12)+'-'+string.substring(12, 16)+'-'+string.substring(16, 20);
		//下面生成24位的hex序列
		ticket.setUuid(ranStr.toUpperCase());
		//下面生成5位的hex序列
		ticket.setSubUuid(string.substring(20,25).toUpperCase());
		return ticket;
	}
}
