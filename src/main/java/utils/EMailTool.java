package utils;

import java.util.Random;

import org.apache.commons.mail.SimpleEmail;

public class EMailTool {
	static public String emailHost="smtp.163.com";
	static public String emailUserEmail="iamjanself@163.com";
	static public String emailUserName="iamjanself";
	static public String emailPassword="jan123";
	static public String domain="http://localhost:8080/";//本网站域名
	
	static public SimpleEmail simpleEmail;
	
	static public boolean sendSimpleEmail(String to, String subject, String emailContent){
		boolean result = false;
		SimpleEmail simpleEmail=new SimpleEmail();
		//设置字符编码方式
		simpleEmail.setCharset("UTF-8");
		try {
			//设置邮件服务器
			simpleEmail.setHostName(emailHost);
			//设置帐号密码
			simpleEmail.setAuthentication(emailUserName,emailPassword);
			//设置发送源邮箱
			simpleEmail.setFrom(emailUserEmail);
			//设置目标邮箱
			simpleEmail.addTo(to);
			//设置主题
			simpleEmail.setSubject(subject);
			//设置邮件内容
			simpleEmail.setMsg(emailContent);
			//发送邮件
			simpleEmail.send();
			result = true;
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return result;
	}
	
	static public Integer sendReturnPassword(String to,Integer rand){
		Integer result = -1;
		SimpleEmail simpleEmail=new SimpleEmail();
		//设置字符编码方式
		simpleEmail.setCharset("UTF-8");
		try {
			//设置SMTP邮件服务器，比如:smtp.163.com
			simpleEmail.setHostName(emailHost);
			//设置登入认证服务器的 用户名 和 授权密码 （发件人））
			simpleEmail.setAuthentication(emailUserName,emailPassword);
			//设置发送源邮箱
			simpleEmail.setFrom(emailUserEmail);
			//设置收件人可以是多个：simpleEmail.addTo("xxx@qq.com", "sky-xuyi");
			simpleEmail.addTo(to);				
			//设置主题
			simpleEmail.setSubject("在线音乐平台邮箱验证码");
			//设置邮件内容
			simpleEmail.setMsg("邮箱验证码为："+rand+",请不要告诉他人");
			//发送邮件
			simpleEmail.send();
			result = 1;
		} catch (Exception e) {
			e.printStackTrace();
		}
		return result;
	}	
}
