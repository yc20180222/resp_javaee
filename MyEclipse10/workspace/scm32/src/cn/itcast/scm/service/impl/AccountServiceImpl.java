package cn.itcast.scm.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cn.itcast.scm.dao.AccountMapper;
import cn.itcast.scm.entity.Account;
import cn.itcast.scm.entity.Page;
import cn.itcast.scm.service.AccountService;

@Service("accountService")
public class AccountServiceImpl implements AccountService {

	@Autowired
	private AccountMapper accountMapper;

	@Override
	public int insert(Account account) throws Exception {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int update(Account entity) throws Exception {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public int delete(Account entity) throws Exception {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public Account select(Account entity) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Account login(Account account) {
		// TODO Auto-generated method stub
		return accountMapper.login(account);
	}

	@Override
	public Page<Account> selectPage(Page<Account> page) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Page<Account> selectPageUseDyc(Page<Account> page) {
		// TODO Auto-generated method stub
		return null;
	}
}
