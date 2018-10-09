package ui_test.util.d;

import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.Properties;

public class PropertyReader {
    public static Properties properties = new Properties();
    public static InputStream inputStreamConfig = null;
    public static String filePath = System.getProperty("user.dir") + "/src/test/resources/dataFiles/Environment.properties";

    public PropertyReader() {
        loadProperties();
    }

    public static void loadProperties() {
        try {

            inputStreamConfig = new FileInputStream(filePath);
            properties.load(inputStreamConfig);
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    public String readProperty(String key) {
        String value = properties.getProperty(key);
        if (value != null) return value;
        else throw new RuntimeException(key + " not specified in the Configuration.properties file.");

    }
    
    
    /*public static String getUsername() {
		String username = properties.getProperty("Username");
		System.out.println("User ID Logged in :" + username);
		if(username != null) return username;
		else throw new RuntimeException("Login Username not specified in the Configuration.properties file.");
	}
	
	public static String getPassword() {
		String pwd = properties.getProperty("Password");
		if(pwd != null) return pwd;
		else throw new RuntimeException("Login Password not specified in the Configuration.properties file.");
	}
	
	public static String getEnv() {
		String env = properties.getProperty("Env");
		System.out.println("env " + env);
		if(env != null) return env;
		else throw new RuntimeException("Environment not specified in the Configuration.properties file.");
	}
 
	public static String getEnvOption() {
		String env = properties.getProperty("EnvOption");
		System.out.println("env " + env);
		if(env != null) return env;
		else throw new RuntimeException("Environment not specified in the Configuration.properties file.");
	}
	
	public static String getModNumber() {
		String modNumber = properties.getProperty("ModNumber");
		System.out.println("Mod Number " + modNumber);
		if(modNumber != null) return modNumber;
		else throw new RuntimeException("ModNumber not specified in the Configuration.properties file.");
		}
	*/


}
