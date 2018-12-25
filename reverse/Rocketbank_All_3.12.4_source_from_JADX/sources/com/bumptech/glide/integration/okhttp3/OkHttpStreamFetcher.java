package com.bumptech.glide.integration.okhttp3;

import com.bumptech.glide.Priority;
import com.bumptech.glide.load.data.DataFetcher;
import com.bumptech.glide.load.model.GlideUrl;
import com.bumptech.glide.util.ContentLengthInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.Map.Entry;
import okhttp3.Call;
import okhttp3.Call.Factory;
import okhttp3.Request.Builder;
import okhttp3.ResponseBody;

public final class OkHttpStreamFetcher implements DataFetcher<InputStream> {
    private volatile Call call;
    private final Factory client;
    private ResponseBody responseBody;
    private InputStream stream;
    private final GlideUrl url;

    public OkHttpStreamFetcher(Factory factory, GlideUrl glideUrl) {
        this.client = factory;
        this.url = glideUrl;
    }

    public final void cleanup() {
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
        r1 = this;
        r0 = r1.stream;	 Catch:{ IOException -> 0x0009 }
        if (r0 == 0) goto L_0x0009;	 Catch:{ IOException -> 0x0009 }
    L_0x0004:
        r0 = r1.stream;	 Catch:{ IOException -> 0x0009 }
        r0.close();	 Catch:{ IOException -> 0x0009 }
    L_0x0009:
        r0 = r1.responseBody;
        if (r0 == 0) goto L_0x0012;
    L_0x000d:
        r0 = r1.responseBody;
        r0.close();
    L_0x0012:
        return;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.bumptech.glide.integration.okhttp3.OkHttpStreamFetcher.cleanup():void");
    }

    public final String getId() {
        return this.url.getCacheKey();
    }

    public final void cancel() {
        Call call = this.call;
        if (call != null) {
            call.cancel();
        }
    }

    public final /* bridge */ /* synthetic */ Object loadData(Priority priority) throws Exception {
        priority = new Builder().url(this.url.toStringUrl());
        for (Entry entry : this.url.getHeaders().entrySet()) {
            priority.addHeader((String) entry.getKey(), (String) entry.getValue());
        }
        this.call = this.client.newCall(priority.build());
        priority = this.call.execute();
        this.responseBody = priority.body();
        if (priority.isSuccessful()) {
            this.stream = ContentLengthInputStream.obtain(this.responseBody.byteStream(), this.responseBody.contentLength());
            return this.stream;
        }
        StringBuilder stringBuilder = new StringBuilder("Request failed with code: ");
        stringBuilder.append(priority.code());
        throw new IOException(stringBuilder.toString());
    }
}
