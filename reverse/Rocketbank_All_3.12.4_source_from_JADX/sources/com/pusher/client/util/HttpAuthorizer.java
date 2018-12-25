package com.pusher.client.util;

import com.pusher.client.AuthorizationFailureException;
import com.pusher.client.Authorizer;
import java.io.BufferedReader;
import java.io.DataOutputStream;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLEncoder;
import java.util.HashMap;
import java.util.Map;
import javax.net.ssl.HttpsURLConnection;

public class HttpAuthorizer implements Authorizer {
    private final String ENCODING_CHARACTER_SET = "UTF-8";
    private final URL endPoint;
    private Map<String, String> mHeaders = new HashMap();
    private Map<String, String> mQueryStringParameters = new HashMap();

    public HttpAuthorizer(String str) {
        try {
            this.endPoint = new URL(str);
        } catch (String str2) {
            throw new IllegalArgumentException("Could not parse authentication end point into a valid URL", str2);
        }
    }

    public void setHeaders(Map<String, String> map) {
        this.mHeaders = map;
    }

    public Boolean isSSL() {
        return Boolean.valueOf(this.endPoint.getProtocol().equals("https"));
    }

    public void setQueryStringParameters(HashMap<String, String> hashMap) {
        this.mQueryStringParameters = hashMap;
    }

    public String authorize(String str, String str2) throws AuthorizationFailureException {
        try {
            StringBuffer stringBuffer = new StringBuffer();
            stringBuffer.append("channel_name=");
            stringBuffer.append(URLEncoder.encode(str, "UTF-8"));
            stringBuffer.append("&socket_id=");
            stringBuffer.append(URLEncoder.encode(str2, "UTF-8"));
            for (String str22 : this.mQueryStringParameters.keySet()) {
                stringBuffer.append("&");
                stringBuffer.append(str22);
                stringBuffer.append("=");
                stringBuffer.append(URLEncoder.encode((String) this.mQueryStringParameters.get(str22), "UTF-8"));
            }
            if (isSSL().booleanValue() != null) {
                str = (HttpsURLConnection) this.endPoint.openConnection();
            } else {
                str = (HttpURLConnection) this.endPoint.openConnection();
            }
            str.setDoOutput(true);
            str.setDoInput(true);
            str.setInstanceFollowRedirects(false);
            str.setRequestMethod("POST");
            str.setRequestProperty("Content-Type", "application/x-www-form-urlencoded");
            str.setRequestProperty("charset", "utf-8");
            StringBuilder stringBuilder = new StringBuilder();
            stringBuilder.append(Integer.toString(stringBuffer.toString().getBytes().length));
            str.setRequestProperty("Content-Length", stringBuilder.toString());
            for (String str3 : this.mHeaders.keySet()) {
                str.setRequestProperty(str3, (String) this.mHeaders.get(str3));
            }
            str.setUseCaches(false);
            str22 = new DataOutputStream(str.getOutputStream());
            str22.writeBytes(stringBuffer.toString());
            str22.flush();
            str22.close();
            BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(str.getInputStream()));
            str22 = new StringBuffer();
            while (true) {
                String readLine = bufferedReader.readLine();
                if (readLine == null) {
                    break;
                }
                str22.append(readLine);
            }
            bufferedReader.close();
            if (str.getResponseCode() == 200) {
                return str22.toString();
            }
            throw new AuthorizationFailureException(str22.toString());
        } catch (Exception e) {
            throw new AuthorizationFailureException(e);
        }
    }
}
