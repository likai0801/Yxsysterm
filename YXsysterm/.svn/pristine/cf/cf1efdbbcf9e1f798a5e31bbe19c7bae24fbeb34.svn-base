package com.commons.util;

import java.beans.Introspector;
import java.beans.PropertyDescriptor;
import java.util.List;

/**
 * json工具类，负责java数据与json格式字符串的转换
 * 
 * @author Dougang
 */
@SuppressWarnings(value = "all")
public class JSONUtil {

	/**
	 * 传入任意 object对象生成一个指定规格的字符串
	 * 
	 * @param object
	 *            任意对象
	 * @return String
	 */
	public static String objectToJson(Object object) {
		StringBuilder json = new StringBuilder();
		if (object == null) {
			json.append("\"\"");
		} else if (object instanceof String || object instanceof Integer || object instanceof Double
				|| object instanceof Long) {
			json.append("\"").append(object.toString()).append("\"");
		} else {
			json.append(beanToJson(object));
		}
		return json.toString();
	}

	/**
	 * 传入任意java对象转换为JSON格式的字符串
	 * 
	 * @param bean
	 *            任意java对象
	 * @return String "{key:value,key:value}"
	 */
	public static String beanToJson(Object bean) {
		StringBuilder json = new StringBuilder();
		json.append("{");
		PropertyDescriptor[] props = null;
		try {
			props = Introspector.getBeanInfo(bean.getClass(), Object.class).getPropertyDescriptors();
		} catch (Exception e) {
			e.printStackTrace();
		}
		if (props != null) {
			for (int i = 0; i < props.length; i++) {
				try {
					if (!(props[i].getPropertyType()).isInterface()) {
						String name = objectToJson(props[i].getName());
						String value = objectToJson(props[i].getReadMethod().invoke(bean));
						json.append(name);
						json.append(":");
						json.append(value);
						json.append(",");
					}
				} catch (Exception e) {
				}
			}
			json.setCharAt(json.length() - 1, '}');
		} else {
			json.append("}");
		}
		return json.toString();
	}

	/**
	 * 传入任意List对象转换为JSON字符串
	 * 
	 * @param list
	 *            List对象
	 * @return String "{"data":[{key:value,key:value},{key:value,key:value}]}"
	 */
	public static String listToJson(List<?> list) {
		StringBuilder json = new StringBuilder();
		json.append("{\"data\":[");
		if (list != null && list.size() > 0) {
			for (Object obj : list) {
				json.append(objectToJson(obj));
				json.append(",");
			}
			json.deleteCharAt(json.length() - 1);
		}
		json.append("]}");
		return json.toString();
	}

	/**
	 * 传入任意List对象转换为JSON字符串
	 * 
	 * @param list
	 *            List对象
	 * @return String "[{key:value,key:value},{key:value,key:value}]"
	 */
	public static String listToJsonArray(List<?> list) {
		StringBuilder json = new StringBuilder();
		json.append("[");
		if (list != null && list.size() > 0) {
			for (Object obj : list) {
				json.append(objectToJson(obj));
				json.append(",");
			}
			json.deleteCharAt(json.length() - 1);
		}
		json.append("]");
		return json.toString();
	}
}