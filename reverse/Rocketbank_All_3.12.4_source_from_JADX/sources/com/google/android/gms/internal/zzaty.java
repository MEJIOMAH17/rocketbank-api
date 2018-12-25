package com.google.android.gms.internal;

import android.content.Context;
import com.google.android.gms.common.internal.zzac;
import com.google.android.gms.common.util.zze;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLConnection;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;

public class zzaty extends zzauh {

    interface zza {
        void zza(String str, int i, Throwable th, byte[] bArr, Map<String, List<String>> map);
    }

    private static class zzb implements Runnable {
        private final int zzJO;
        private final String zzRg;
        private final Throwable zzZa;
        private final zza zzbsR;
        private final byte[] zzbsS;
        private final Map<String, List<String>> zzbsT;

        private zzb(String str, zza zza, int i, Throwable th, byte[] bArr, Map<String, List<String>> map) {
            zzac.zzw(zza);
            this.zzbsR = zza;
            this.zzJO = i;
            this.zzZa = th;
            this.zzbsS = bArr;
            this.zzRg = str;
            this.zzbsT = map;
        }

        public void run() {
            this.zzbsR.zza(this.zzRg, this.zzJO, this.zzZa, this.zzbsS, this.zzbsT);
        }
    }

    private class zzc implements Runnable {
        private final URL zzIe;
        private final String zzRg;
        private final byte[] zzaIQ;
        private final zza zzbsU;
        private final Map<String, String> zzbsV;
        final /* synthetic */ zzaty zzbsW;

        public zzc(zzaty zzaty, String str, URL url, byte[] bArr, Map<String, String> map, zza zza) {
            this.zzbsW = zzaty;
            zzac.zzdr(str);
            zzac.zzw(url);
            zzac.zzw(zza);
            this.zzIe = url;
            this.zzaIQ = bArr;
            this.zzbsU = zza;
            this.zzRg = str;
            this.zzbsV = map;
        }

        public void run() {
            Map map;
            int i;
            Throwable th;
            Throwable e;
            zzaud zzKk;
            Runnable zzb;
            this.zzbsW.zzJX();
            OutputStream outputStream = null;
            HttpURLConnection zzc;
            try {
                zzc = this.zzbsW.zzc(this.zzIe);
                try {
                    if (this.zzbsV != null) {
                        for (Entry entry : this.zzbsV.entrySet()) {
                            zzc.addRequestProperty((String) entry.getKey(), (String) entry.getValue());
                        }
                    }
                    if (this.zzaIQ != null) {
                        byte[] zzk = this.zzbsW.zzKh().zzk(this.zzaIQ);
                        this.zzbsW.zzKl().zzMf().zzj("Uploading data. size", Integer.valueOf(zzk.length));
                        zzc.setDoOutput(true);
                        zzc.addRequestProperty("Content-Encoding", "gzip");
                        zzc.setFixedLengthStreamingMode(zzk.length);
                        zzc.connect();
                        OutputStream outputStream2 = zzc.getOutputStream();
                        try {
                            outputStream2.write(zzk);
                            outputStream2.close();
                        } catch (Throwable e2) {
                            map = null;
                            i = 0;
                            th = e2;
                            outputStream = outputStream2;
                            if (outputStream != null) {
                                try {
                                    outputStream.close();
                                } catch (IOException e3) {
                                    this.zzbsW.zzKl().zzLZ().zze("Error closing HTTP compressed POST connection output stream. appId", zzatx.zzfE(this.zzRg), e3);
                                }
                            }
                            if (zzc != null) {
                                zzc.disconnect();
                            }
                            zzKk = this.zzbsW.zzKk();
                            zzb = new zzb(this.zzRg, this.zzbsU, i, th, null, map);
                            zzKk.zzm(r1);
                        } catch (Throwable th2) {
                            e2 = th2;
                            map = null;
                            i = 0;
                            outputStream = outputStream2;
                            if (outputStream != null) {
                                try {
                                    outputStream.close();
                                } catch (IOException e32) {
                                    this.zzbsW.zzKl().zzLZ().zze("Error closing HTTP compressed POST connection output stream. appId", zzatx.zzfE(this.zzRg), e32);
                                }
                            }
                            if (zzc != null) {
                                zzc.disconnect();
                            }
                            this.zzbsW.zzKk().zzm(new zzb(this.zzRg, this.zzbsU, i, null, null, map));
                            throw e2;
                        }
                    }
                    i = zzc.getResponseCode();
                } catch (IOException e4) {
                    e2 = e4;
                    map = null;
                    i = 0;
                    th = e2;
                    if (outputStream != null) {
                        outputStream.close();
                    }
                    if (zzc != null) {
                        zzc.disconnect();
                    }
                    zzKk = this.zzbsW.zzKk();
                    zzb = new zzb(this.zzRg, this.zzbsU, i, th, null, map);
                    zzKk.zzm(r1);
                } catch (Throwable th3) {
                    e2 = th3;
                    map = null;
                    i = 0;
                    if (outputStream != null) {
                        outputStream.close();
                    }
                    if (zzc != null) {
                        zzc.disconnect();
                    }
                    this.zzbsW.zzKk().zzm(new zzb(this.zzRg, this.zzbsU, i, null, null, map));
                    throw e2;
                }
                try {
                    map = zzc.getHeaderFields();
                    try {
                        byte[] zza = this.zzbsW.zzc(zzc);
                        if (zzc != null) {
                            zzc.disconnect();
                        }
                        zzKk = this.zzbsW.zzKk();
                        zzb = new zzb(this.zzRg, this.zzbsU, i, null, zza, map);
                    } catch (IOException e5) {
                        e2 = e5;
                        th = e2;
                        if (outputStream != null) {
                            outputStream.close();
                        }
                        if (zzc != null) {
                            zzc.disconnect();
                        }
                        zzKk = this.zzbsW.zzKk();
                        zzb = new zzb(this.zzRg, this.zzbsU, i, th, null, map);
                        zzKk.zzm(r1);
                    } catch (Throwable th4) {
                        e2 = th4;
                        if (outputStream != null) {
                            outputStream.close();
                        }
                        if (zzc != null) {
                            zzc.disconnect();
                        }
                        this.zzbsW.zzKk().zzm(new zzb(this.zzRg, this.zzbsU, i, null, null, map));
                        throw e2;
                    }
                } catch (IOException e6) {
                    e2 = e6;
                    map = null;
                    th = e2;
                    if (outputStream != null) {
                        outputStream.close();
                    }
                    if (zzc != null) {
                        zzc.disconnect();
                    }
                    zzKk = this.zzbsW.zzKk();
                    zzb = new zzb(this.zzRg, this.zzbsU, i, th, null, map);
                    zzKk.zzm(r1);
                } catch (Throwable th5) {
                    e2 = th5;
                    map = null;
                    if (outputStream != null) {
                        outputStream.close();
                    }
                    if (zzc != null) {
                        zzc.disconnect();
                    }
                    this.zzbsW.zzKk().zzm(new zzb(this.zzRg, this.zzbsU, i, null, null, map));
                    throw e2;
                }
            } catch (IOException e7) {
                e2 = e7;
                zzc = null;
                map = zzc;
                i = 0;
                th = e2;
                if (outputStream != null) {
                    outputStream.close();
                }
                if (zzc != null) {
                    zzc.disconnect();
                }
                zzKk = this.zzbsW.zzKk();
                zzb = new zzb(this.zzRg, this.zzbsU, i, th, null, map);
                zzKk.zzm(r1);
            } catch (Throwable th6) {
                e2 = th6;
                zzc = null;
                map = zzc;
                i = 0;
                if (outputStream != null) {
                    outputStream.close();
                }
                if (zzc != null) {
                    zzc.disconnect();
                }
                this.zzbsW.zzKk().zzm(new zzb(this.zzRg, this.zzbsU, i, null, null, map));
                throw e2;
            }
            zzKk.zzm(r1);
        }
    }

    public zzaty(zzaue zzaue) {
        super(zzaue);
    }

    private byte[] zzc(HttpURLConnection httpURLConnection) throws IOException {
        Throwable th;
        InputStream inputStream;
        try {
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            inputStream = httpURLConnection.getInputStream();
            try {
                byte[] bArr = new byte[1024];
                while (true) {
                    int read = inputStream.read(bArr);
                    if (read <= 0) {
                        break;
                    }
                    byteArrayOutputStream.write(bArr, 0, read);
                }
                bArr = byteArrayOutputStream.toByteArray();
                if (inputStream != null) {
                    inputStream.close();
                }
                return bArr;
            } catch (Throwable th2) {
                th = th2;
                if (inputStream != null) {
                    inputStream.close();
                }
                throw th;
            }
        } catch (Throwable th3) {
            th = th3;
            inputStream = null;
            if (inputStream != null) {
                inputStream.close();
            }
            throw th;
        }
    }

    public /* bridge */ /* synthetic */ Context getContext() {
        return super.getContext();
    }

    public /* bridge */ /* synthetic */ void zzJV() {
        super.zzJV();
    }

    public /* bridge */ /* synthetic */ void zzJW() {
        super.zzJW();
    }

    public /* bridge */ /* synthetic */ void zzJX() {
        super.zzJX();
    }

    public /* bridge */ /* synthetic */ zzatb zzJY() {
        return super.zzJY();
    }

    public /* bridge */ /* synthetic */ zzatf zzJZ() {
        return super.zzJZ();
    }

    public /* bridge */ /* synthetic */ zzauj zzKa() {
        return super.zzKa();
    }

    public /* bridge */ /* synthetic */ zzatu zzKb() {
        return super.zzKb();
    }

    public /* bridge */ /* synthetic */ zzatl zzKc() {
        return super.zzKc();
    }

    public /* bridge */ /* synthetic */ zzaul zzKd() {
        return super.zzKd();
    }

    public /* bridge */ /* synthetic */ zzauk zzKe() {
        return super.zzKe();
    }

    public /* bridge */ /* synthetic */ zzatv zzKf() {
        return super.zzKf();
    }

    public /* bridge */ /* synthetic */ zzatj zzKg() {
        return super.zzKg();
    }

    public /* bridge */ /* synthetic */ zzaut zzKh() {
        return super.zzKh();
    }

    public /* bridge */ /* synthetic */ zzauc zzKi() {
        return super.zzKi();
    }

    public /* bridge */ /* synthetic */ zzaun zzKj() {
        return super.zzKj();
    }

    public /* bridge */ /* synthetic */ zzaud zzKk() {
        return super.zzKk();
    }

    public /* bridge */ /* synthetic */ zzatx zzKl() {
        return super.zzKl();
    }

    public /* bridge */ /* synthetic */ zzaua zzKm() {
        return super.zzKm();
    }

    public /* bridge */ /* synthetic */ zzati zzKn() {
        return super.zzKn();
    }

    public void zza(String str, URL url, Map<String, String> map, zza zza) {
        zzmR();
        zzob();
        zzac.zzw(url);
        zzac.zzw(zza);
        zzKk().zzn(new zzc(this, str, url, null, map, zza));
    }

    public void zza(String str, URL url, byte[] bArr, Map<String, String> map, zza zza) {
        zzmR();
        zzob();
        zzac.zzw(url);
        zzac.zzw(bArr);
        zzac.zzw(zza);
        zzKk().zzn(new zzc(this, str, url, bArr, map, zza));
    }

    protected HttpURLConnection zzc(URL url) throws IOException {
        URLConnection openConnection = url.openConnection();
        if (openConnection instanceof HttpURLConnection) {
            HttpURLConnection httpURLConnection = (HttpURLConnection) openConnection;
            httpURLConnection.setDefaultUseCaches(false);
            zzKn().zzLe();
            httpURLConnection.setConnectTimeout(60000);
            zzKn().zzLf();
            httpURLConnection.setReadTimeout(61000);
            httpURLConnection.setInstanceFollowRedirects(false);
            httpURLConnection.setDoInput(true);
            return httpURLConnection;
        }
        throw new IOException("Failed to obtain HTTP connection");
    }

    public /* bridge */ /* synthetic */ void zzmR() {
        super.zzmR();
    }

    protected void zzmS() {
    }

    public /* bridge */ /* synthetic */ zze zznR() {
        return super.zznR();
    }

    public boolean zzqa() {
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
	at jadx.core.ProcessClass.processDependencies(ProcessClass.java:56)
	at jadx.core.ProcessClass.process(ProcessClass.java:39)
	at jadx.api.JadxDecompiler.processClass(JadxDecompiler.java:282)
	at jadx.api.JavaClass.decompile(JavaClass.java:62)
	at jadx.api.JadxDecompiler.lambda$appendSourcesSave$0(JadxDecompiler.java:200)
	at jadx.api.JadxDecompiler$$Lambda$8/1556461159.run(Unknown Source)
*/
        /*
        r2 = this;
        r2.zzob();
        r0 = r2.getContext();
        r1 = "connectivity";
        r0 = r0.getSystemService(r1);
        r0 = (android.net.ConnectivityManager) r0;
        r0 = r0.getActiveNetworkInfo();	 Catch:{ SecurityException -> 0x0014 }
        goto L_0x0015;
    L_0x0014:
        r0 = 0;
    L_0x0015:
        if (r0 == 0) goto L_0x001f;
    L_0x0017:
        r0 = r0.isConnected();
        if (r0 == 0) goto L_0x001f;
    L_0x001d:
        r0 = 1;
        return r0;
    L_0x001f:
        r0 = 0;
        return r0;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.zzaty.zzqa():boolean");
    }
}
