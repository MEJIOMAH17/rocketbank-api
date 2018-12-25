package com.google.android.gms.internal;

import android.support.v7.widget.helper.ItemTouchHelper.Callback;
import java.io.DataOutputStream;
import java.io.IOException;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import javax.net.ssl.HttpsURLConnection;
import javax.net.ssl.SSLSocketFactory;
import org.apache.http.HttpResponse;
import org.apache.http.ProtocolVersion;
import org.apache.http.StatusLine;
import org.apache.http.message.BasicHeader;
import org.apache.http.message.BasicHttpResponse;
import org.apache.http.message.BasicStatusLine;

public class zzaa implements zzz {
    private final zza zzaE;
    private final SSLSocketFactory zzaF;

    public interface zza {
        String zzh(String str);
    }

    public zzaa() {
        this(null);
    }

    public zzaa(zza zza) {
        this(zza, null);
    }

    public zzaa(zza zza, SSLSocketFactory sSLSocketFactory) {
        this.zzaE = zza;
        this.zzaF = sSLSocketFactory;
    }

    private HttpURLConnection zza(URL url, zzl<?> zzl) throws IOException {
        HttpURLConnection zza = zza(url);
        int zzp = zzl.zzp();
        zza.setConnectTimeout(zzp);
        zza.setReadTimeout(zzp);
        zza.setUseCaches(false);
        zza.setDoInput(true);
        if ("https".equals(url.getProtocol()) && this.zzaF != null) {
            ((HttpsURLConnection) zza).setSSLSocketFactory(this.zzaF);
        }
        return zza;
    }

    private static org.apache.http.HttpEntity zza(java.net.HttpURLConnection r3) {
        /* JADX: method processing error */
/*
Error: java.lang.NullPointerException
	at jadx.core.dex.visitors.regions.ProcessTryCatchRegions.searchTryCatchDominators(ProcessTryCatchRegions.java:75)
	at jadx.core.dex.visitors.regions.ProcessTryCatchRegions.process(ProcessTryCatchRegions.java:45)
	at jadx.core.dex.visitors.regions.RegionMakerVisitor.postProcessRegions(RegionMakerVisitor.java:63)
	at jadx.core.dex.visitors.regions.RegionMakerVisitor.visit(RegionMakerVisitor.java:58)
	at jadx.core.dex.visitors.DepthTraversal.visit(DepthTraversal.java:31)
	at jadx.core.dex.visitors.DepthTraversal.visit(DepthTraversal.java:17)
	at jadx.core.ProcessClass.process(ProcessClass.java:34)
	at jadx.api.JadxDecompiler.processClass(JadxDecompiler.java:282)
	at jadx.api.JavaClass.decompile(JavaClass.java:62)
	at jadx.api.JadxDecompiler.lambda$appendSourcesSave$0(JadxDecompiler.java:200)
	at jadx.api.JadxDecompiler$$Lambda$8/1556461159.run(Unknown Source)
*/
        /*
        r0 = new org.apache.http.entity.BasicHttpEntity;
        r0.<init>();
        r1 = r3.getInputStream();	 Catch:{ IOException -> 0x000a }
        goto L_0x000e;
    L_0x000a:
        r1 = r3.getErrorStream();
    L_0x000e:
        r0.setContent(r1);
        r1 = r3.getContentLength();
        r1 = (long) r1;
        r0.setContentLength(r1);
        r1 = r3.getContentEncoding();
        r0.setContentEncoding(r1);
        r3 = r3.getContentType();
        r0.setContentType(r3);
        return r0;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.zzaa.zza(java.net.HttpURLConnection):org.apache.http.HttpEntity");
    }

    static void zza(HttpURLConnection httpURLConnection, zzl<?> zzl) throws IOException, zza {
        switch (zzl.getMethod()) {
            case -1:
                byte[] zzj = zzl.zzj();
                if (zzj != null) {
                    httpURLConnection.setDoOutput(true);
                    httpURLConnection.setRequestMethod("POST");
                    httpURLConnection.addRequestProperty("Content-Type", zzl.zzi());
                    DataOutputStream dataOutputStream = new DataOutputStream(httpURLConnection.getOutputStream());
                    dataOutputStream.write(zzj);
                    dataOutputStream.close();
                }
                return;
            case 0:
                httpURLConnection.setRequestMethod("GET");
                return;
            case 1:
                httpURLConnection.setRequestMethod("POST");
                zzb(httpURLConnection, zzl);
                return;
            case 2:
                httpURLConnection.setRequestMethod("PUT");
                zzb(httpURLConnection, zzl);
                return;
            case 3:
                httpURLConnection.setRequestMethod("DELETE");
                return;
            case 4:
                httpURLConnection.setRequestMethod("HEAD");
                return;
            case 5:
                httpURLConnection.setRequestMethod("OPTIONS");
                return;
            case 6:
                httpURLConnection.setRequestMethod("TRACE");
                return;
            case 7:
                httpURLConnection.setRequestMethod("PATCH");
                zzb(httpURLConnection, zzl);
                return;
            default:
                throw new IllegalStateException("Unknown method type.");
        }
    }

    private static boolean zza(int i, int i2) {
        return (i == 4 || ((100 <= i2 && i2 < Callback.DEFAULT_DRAG_ANIMATION_DURATION) || i2 == 204 || i2 == 304)) ? false : true;
    }

    private static void zzb(HttpURLConnection httpURLConnection, zzl<?> zzl) throws IOException, zza {
        byte[] zzm = zzl.zzm();
        if (zzm != null) {
            httpURLConnection.setDoOutput(true);
            httpURLConnection.addRequestProperty("Content-Type", zzl.zzl());
            DataOutputStream dataOutputStream = new DataOutputStream(httpURLConnection.getOutputStream());
            dataOutputStream.write(zzm);
            dataOutputStream.close();
        }
    }

    protected HttpURLConnection zza(URL url) throws IOException {
        HttpURLConnection httpURLConnection = (HttpURLConnection) url.openConnection();
        httpURLConnection.setInstanceFollowRedirects(HttpURLConnection.getFollowRedirects());
        return httpURLConnection;
    }

    public HttpResponse zza(zzl<?> zzl, Map<String, String> map) throws IOException, zza {
        String zzh;
        String url = zzl.getUrl();
        HashMap hashMap = new HashMap();
        hashMap.putAll(zzl.getHeaders());
        hashMap.putAll(map);
        if (this.zzaE != null) {
            zzh = this.zzaE.zzh(url);
            if (zzh == null) {
                throw new IOException("URL blocked by rewriter: ".concat(String.valueOf(url)));
            }
        }
        zzh = url;
        HttpURLConnection zza = zza(new URL(zzh), (zzl) zzl);
        for (String str : hashMap.keySet()) {
            zza.addRequestProperty(str, (String) hashMap.get(str));
        }
        zza(zza, (zzl) zzl);
        ProtocolVersion protocolVersion = new ProtocolVersion("HTTP", 1, 1);
        if (zza.getResponseCode() == -1) {
            throw new IOException("Could not retrieve response code from HttpUrlConnection.");
        }
        StatusLine basicStatusLine = new BasicStatusLine(protocolVersion, zza.getResponseCode(), zza.getResponseMessage());
        HttpResponse basicHttpResponse = new BasicHttpResponse(basicStatusLine);
        if (zza(zzl.getMethod(), basicStatusLine.getStatusCode())) {
            basicHttpResponse.setEntity(zza(zza));
        }
        for (Entry entry : zza.getHeaderFields().entrySet()) {
            if (entry.getKey() != null) {
                basicHttpResponse.addHeader(new BasicHeader((String) entry.getKey(), (String) ((List) entry.getValue()).get(0)));
            }
        }
        return basicHttpResponse;
    }
}
