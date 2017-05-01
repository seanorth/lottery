package com.cosun.utils;

import org.springframework.beans.factory.annotation.Autowired;

import com.cosun.entities.Lottery;
import com.cosun.entities.Shop;
import com.cosun.entities.Ticket;
import com.cosun.entities.Trade;
import com.cosun.service.LotteryService;
import com.cosun.service.ShopService;

public class TicketUtils {
	@Autowired
	private LotteryService lotteryService;
	@Autowired
	private ShopService shopService;
	private Shop currentShop;
	public  Ticket engine(Trade trade){
		 Ticket ticket=new Ticket();
		 ticket.setAmount(trade.getAmount());
		 ticket.setMultiple(trade.getMultiple());
		 String term = trade.getTerm();
		 ticket.setSalePeriod(term.substring(term.length()-7));
		 currentShop = shopService.currentShop();
		 ticket.setPrinterNum(currentShop.getPrinterNum());
		 ticket.setExtracode(currentShop.getExtracode());
		 ticket.setAddress(currentShop.getAddress());
		 Lottery lottery = lotteryService.findById(trade.getLotType());
		 ticket.setPlayMethod(lottery.getLabel());
		 switch (lottery.getGameCode()) {
			case "SSQ":
				ticket.setSequenceNum(currentShop.getSequenceNum_ssq());
				break;
			case "3D":
				ticket.setSequenceNum(currentShop.getSequenceNum_3d());
				break;
			case "QYH":
				ticket.setSequenceNum(currentShop.getSequenceNum_qyh());
				break;
			default:
				break;
		}
		 //利用uuid引擎
		 UuidUtils.engine(ticket);
		 return ticket;
	}
}
