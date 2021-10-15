package com.toronto.controller;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.toronto.entity.Order;

@Controller
@RequestMapping(value = "/order") 
public class OrderController {

	@RequestMapping(value = "/submitOrder")
	public ModelAndView loadInventoryOcrId(HttpServletRequest request, HttpServletResponse response, @ModelAttribute("Order") Order orderObj) throws Exception {
		
		ArrayList<Order> alList = new ArrayList<Order>();
		if(null != orderObj)
		{
			int numOfPizza = orderObj.getNumber_of_pizza();
			int pizzaPrice = orderObj.getPizza_size();
			int discount = Integer.parseInt(orderObj.getDiscount_coupon());
			
			double Total = (numOfPizza*pizzaPrice*discount)/100;
			orderObj.setTotal(Total);
			alList.add(orderObj);
			request.setAttribute("orderList", alList);
		}
		return new ModelAndView("Show-Order");
	}
}
