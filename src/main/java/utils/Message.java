package utils;

import org.springframework.stereotype.Component;

import javax.persistence.Entity;

@Component
public class Message {  // 提示信息+跳转
    private int result;  // 操作是否成功
    private String message;  // 显示的提示信息
    private String redirectUrl;  // 跳转的网址
    private int redirectTime=5;  // 跳转的间隔时间，单位秒

    public int getResult() {
        return result;
    }

    public void setResult(int result) {
        this.result = result;
    }

    public String getMessage() {
        return message;
    }

    public void setMessage(String message) {
        this.message = message;
    }

    public String getRedirectUrl() {
        return redirectUrl;
    }

    public void setRedirectUrl(String redirectUrl) {
        this.redirectUrl = redirectUrl;
    }

    public int getRedirectTime() {
        return redirectTime;
    }

    public void setRedirectTime(int redirectTime) {
        this.redirectTime = redirectTime;
    }

}
