package com.anz.controller;


import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.anz.dao.AccountList;
import com.anz.model.TransactionHistory;

@RestController
@RequestMapping(path = "/anz")
public class AnzController {

	@Autowired
	private AccountList accList;

	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String showLoginPage() {
		return "login";
	}
	@RequestMapping(value="/login",method= RequestMethod.POST)
	public String loginPage(@RequestParam String username,String password) {
		if(username.equals("rahul") && password.equals("rahul")) {
			return "/acc";
		}
		return "/";
		
	}
	
	@GetMapping(path = "/acc", produces = "application/json")
	@ResponseBody
	public ModelAndView getDetails(ModelAndView model) {
		model.addObject("accList", accList.getAccountDetails());
		model.setViewName("accountList");
		return model;
	}

	@RequestMapping(value = "/transaction/{acc_No}", produces = "application/json")
	@ResponseBody
	public ModelAndView getTransactions(@PathVariable("acc_No") int accountNum, ModelAndView model) {
		List<TransactionHistory> list = accList.getTransaction(accountNum);
		model.addObject("trans", list);
		model.setViewName("transaction");
		return model;
	}

}
