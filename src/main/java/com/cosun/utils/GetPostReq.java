package com.cosun.utils;

import java.io.IOException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.http.Header;
import org.apache.http.HttpEntity;
import org.apache.http.HttpStatus;
import org.apache.http.client.config.RequestConfig;
import org.apache.http.client.methods.CloseableHttpResponse;
import org.apache.http.client.methods.HttpGet;
import org.apache.http.client.methods.HttpPost;
import org.apache.http.impl.client.CloseableHttpClient;
import org.apache.http.impl.client.HttpClients;

public class GetPostReq {

	@SuppressWarnings("deprecation")
	public static void httpGet(String url,HttpServletRequest request,HttpServletResponse response){
		//设置请求超时
		RequestConfig defaultRequestConfig = RequestConfig.custom()
			    .setSocketTimeout(5000)
			    .setConnectTimeout(5000)
			    .setConnectionRequestTimeout(5000)
			    .setStaleConnectionCheckEnabled(true)
			    .build();
		//超时可以设置为客户端级别，作为所有请求的默认值
		CloseableHttpClient closeableHttpClient = HttpClients.custom()
			    .setDefaultRequestConfig(defaultRequestConfig)
			    .build();
		//Request不会继承客户端级别的请求配置，所以在自定义Request的时候，需要将客户端的默认配置拷贝过去
        HttpGet httpGet = new HttpGet(url);
        RequestConfig requestConfig = RequestConfig.copy(defaultRequestConfig)
        	    .build();
        httpGet.setConfig(requestConfig);
        CloseableHttpResponse httpResponse=null;
        try {  
            //执行get请求  
            httpResponse = closeableHttpClient.execute(httpGet);  
            //响应状态  
            //System.out.println("status:" + httpResponse.getStatusLine());
            if (httpResponse.getStatusLine().getStatusCode() != HttpStatus.SC_OK) {
				System.out.println(httpGet.toString());
			}
            //所以设置响应头的代码要在设置响应的输出流之前调用，否则无效：
            if (httpResponse.getStatusLine().getStatusCode() == HttpStatus.SC_OK) {  
                String headerName;  
                for (Header header : httpResponse.getAllHeaders()) {  
                    headerName = header.getName();  
                    switch (headerName){  
                        //这里根据需要自己添加需要输出的响应头  
                        case "Content-Disposition":  
                        case "Content-Type":  
                            response.setHeader(headerName, header.getValue());  
                            break;  
                    }  
                }  
                //获取响应消息实体 
                HttpEntity httpEntity = httpResponse.getEntity();  
                httpEntity.writeTo(response.getOutputStream());  
            }
        } catch (IOException e) {  
            e.printStackTrace();  
        } finally {  
            try {  
            	if (httpResponse!=null) {
					httpResponse.close();
				}
            	 //关闭流并释放资源  
                closeableHttpClient.close();
            } catch (IOException e) {  
                e.printStackTrace();  
            }  
            }
	   return ;  
	}
	@SuppressWarnings("deprecation")
	public static void httpPost(String url, HttpServletRequest request,
			HttpServletResponse response) {
		//设置请求超时
				RequestConfig defaultRequestConfig = RequestConfig.custom()
					    .setSocketTimeout(5000)
					    .setConnectTimeout(5000)
					    .setConnectionRequestTimeout(5000)
					    .setStaleConnectionCheckEnabled(true)
					    .build();
				//超时可以设置为客户端级别，作为所有请求的默认值
				CloseableHttpClient closeableHttpClient = HttpClients.custom()
					    .setDefaultRequestConfig(defaultRequestConfig)
					    .build();
				//Request不会继承客户端级别的请求配置，所以在自定义Request的时候，需要将客户端的默认配置拷贝过去
				HttpPost httpPost = new HttpPost(url);
		        RequestConfig requestConfig = RequestConfig.copy(defaultRequestConfig)
		        	    .build();
		        httpPost.setConfig(requestConfig);
		        CloseableHttpResponse httpResponse=null;
		        try {  
		            //执行post请求  
		            httpResponse = closeableHttpClient.execute(httpPost);  
		            //响应状态  
		            //System.out.println("status:" + httpResponse.getStatusLine());  
		            if (httpResponse.getStatusLine().getStatusCode() != HttpStatus.SC_OK) {
						System.out.println(httpPost.toString());
					}
		            
		            //所以设置响应头的代码要在设置响应的输出流之前调用，否则无效：
		            if (httpResponse.getStatusLine().getStatusCode() == HttpStatus.SC_OK) {  
		                String headerName;  
		                for (Header header : httpResponse.getAllHeaders()) {  
		                    headerName = header.getName();  
		                    switch (headerName){  
		                        //这里根据需要自己添加需要输出的响应头  
		                        case "Content-Disposition":  
		                        case "Content-Type":  
		                            response.setHeader(headerName, header.getValue());  
		                            break;  
		                    }  
		                }  
		                //获取响应消息实体 
		                HttpEntity httpEntity = httpResponse.getEntity();  
		                httpEntity.writeTo(response.getOutputStream());  
		            }
		        } catch (IOException e) {  
		            e.printStackTrace();  
		        } finally {  
		            try {  
		            	if (httpResponse!=null) {
							httpResponse.close();
						}
		            	 //关闭流并释放资源  
		                closeableHttpClient.close();
		            } catch (IOException e) {  
		                e.printStackTrace();  
		            }  
		            }
			   return ;  
		
	}
}
