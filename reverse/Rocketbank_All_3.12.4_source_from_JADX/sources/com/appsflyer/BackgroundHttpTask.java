package com.appsflyer;

import android.content.Context;
import android.os.AsyncTask;
import android.support.v7.widget.helper.ItemTouchHelper.Callback;
import io.fabric.sdk.android.services.common.AbstractSpiCall;
import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.io.OutputStreamWriter;
import java.net.URL;
import java.util.Map;
import javax.net.ssl.HttpsURLConnection;
import org.json.JSONObject;

public final class BackgroundHttpTask extends AsyncTask<String, Void, String> {
    private String bodyAsString;
    public Map<String, String> bodyParameters;
    private String content = null;
    private boolean error = false;
    private Context mContext;

    protected final void onCancelled() {
    }

    public BackgroundHttpTask(Context context) {
        this.mContext = context;
    }

    protected final void onPreExecute() {
        this.bodyAsString = new JSONObject(this.bodyParameters).toString();
    }

    private String doInBackground(String... strArr) {
        StringBuilder stringBuilder;
        try {
            URL url = new URL(strArr[0]);
            strArr = new StringBuilder("call = ");
            strArr.append(url);
            strArr.append(" parameters = ");
            strArr.append(this.bodyParameters.toString());
            AFLogger.afLog(strArr.toString());
            HttpsURLConnection httpsURLConnection = (HttpsURLConnection) url.openConnection();
            httpsURLConnection.setReadTimeout(30000);
            httpsURLConnection.setConnectTimeout(30000);
            httpsURLConnection.setRequestMethod("POST");
            httpsURLConnection.setDoInput(true);
            httpsURLConnection.setDoOutput(true);
            httpsURLConnection.setRequestProperty("Content-Type", AbstractSpiCall.ACCEPT_JSON_VALUE);
            OutputStream outputStream = httpsURLConnection.getOutputStream();
            BufferedWriter bufferedWriter = new BufferedWriter(new OutputStreamWriter(outputStream, "UTF-8"));
            bufferedWriter.write(this.bodyAsString);
            bufferedWriter.flush();
            bufferedWriter.close();
            outputStream.close();
            httpsURLConnection.connect();
            if (httpsURLConnection.getResponseCode() == Callback.DEFAULT_DRAG_ANIMATION_DURATION) {
                BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(httpsURLConnection.getInputStream()));
                while (true) {
                    strArr = bufferedReader.readLine();
                    if (strArr == null) {
                        break;
                    }
                    StringBuilder stringBuilder2 = new StringBuilder();
                    stringBuilder2.append(this.content);
                    stringBuilder2.append(strArr);
                    this.content = stringBuilder2.toString();
                }
                AFLogger.afLog("Status 200 ok");
            }
        } catch (String[] strArr2) {
            stringBuilder = new StringBuilder("MalformedURLException: ");
            stringBuilder.append(strArr2.toString());
            AFLogger.afLog(stringBuilder.toString());
        } catch (String[] strArr22) {
            stringBuilder = new StringBuilder("ProtocolException: ");
            stringBuilder.append(strArr22.toString());
            AFLogger.afLog(stringBuilder.toString());
        } catch (String[] strArr222) {
            stringBuilder = new StringBuilder("IOException: ");
            stringBuilder.append(strArr222.toString());
            AFLogger.afLog(stringBuilder.toString());
        } catch (String[] strArr2222) {
            stringBuilder = new StringBuilder("Exception: ");
            stringBuilder.append(strArr2222.toString());
            AFLogger.afLog(stringBuilder.toString());
        }
        return this.content;
    }

    protected final /* bridge */ /* synthetic */ void onPostExecute(Object obj) {
        AFLogger.afLog("Connection call succeeded");
    }
}
