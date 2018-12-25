package com.bumptech.glide.load.engine.bitmap_recycle;

import android.annotation.TargetApi;
import android.graphics.Bitmap;
import android.graphics.Bitmap.Config;
import com.bumptech.glide.util.Util;
import java.util.HashMap;
import java.util.Map;
import java.util.Map.Entry;
import java.util.NavigableMap;
import java.util.TreeMap;

@TargetApi(19)
public final class SizeConfigStrategy implements LruPoolStrategy {
    private static final Config[] ALPHA_8_IN_CONFIGS = new Config[]{Config.ALPHA_8};
    private static final Config[] ARGB_4444_IN_CONFIGS = new Config[]{Config.ARGB_4444};
    private static final Config[] ARGB_8888_IN_CONFIGS = new Config[]{Config.ARGB_8888, null};
    private static final Config[] RGB_565_IN_CONFIGS = new Config[]{Config.RGB_565};
    private final GroupedLinkedMap<Key, Bitmap> groupedMap = new GroupedLinkedMap();
    private final KeyPool keyPool = new KeyPool();
    private final Map<Config, NavigableMap<Integer, Integer>> sortedSizes = new HashMap();

    /* renamed from: com.bumptech.glide.load.engine.bitmap_recycle.SizeConfigStrategy$1 */
    static /* synthetic */ class C03001 {
        static final /* synthetic */ int[] $SwitchMap$android$graphics$Bitmap$Config = new int[Config.values().length];

        static {
            /* JADX: method processing error */
/*
Error: java.lang.NullPointerException
	at jadx.core.dex.visitors.regions.ProcessTryCatchRegions.searchTryCatchDominators(ProcessTryCatchRegions.java:75)
	at jadx.core.dex.visitors.regions.ProcessTryCatchRegions.process(ProcessTryCatchRegions.java:45)
	at jadx.core.dex.visitors.regions.RegionMakerVisitor.postProcessRegions(RegionMakerVisitor.java:63)
	at jadx.core.dex.visitors.regions.RegionMakerVisitor.visit(RegionMakerVisitor.java:58)
	at jadx.core.dex.visitors.DepthTraversal.visit(DepthTraversal.java:31)
	at jadx.core.dex.visitors.DepthTraversal.visit(DepthTraversal.java:17)
	at jadx.core.dex.visitors.DepthTraversal.visit(DepthTraversal.java:14)
	at jadx.core.ProcessClass.process(ProcessClass.java:34)
	at jadx.api.JadxDecompiler.processClass(JadxDecompiler.java:282)
	at jadx.api.JavaClass.decompile(JavaClass.java:62)
	at jadx.api.JadxDecompiler.lambda$appendSourcesSave$0(JadxDecompiler.java:200)
	at jadx.api.JadxDecompiler$$Lambda$8/1556461159.run(Unknown Source)
*/
            /*
            r0 = android.graphics.Bitmap.Config.values();
            r0 = r0.length;
            r0 = new int[r0];
            $SwitchMap$android$graphics$Bitmap$Config = r0;
            r0 = $SwitchMap$android$graphics$Bitmap$Config;	 Catch:{ NoSuchFieldError -> 0x0014 }
            r1 = android.graphics.Bitmap.Config.ARGB_8888;	 Catch:{ NoSuchFieldError -> 0x0014 }
            r1 = r1.ordinal();	 Catch:{ NoSuchFieldError -> 0x0014 }
            r2 = 1;	 Catch:{ NoSuchFieldError -> 0x0014 }
            r0[r1] = r2;	 Catch:{ NoSuchFieldError -> 0x0014 }
        L_0x0014:
            r0 = $SwitchMap$android$graphics$Bitmap$Config;	 Catch:{ NoSuchFieldError -> 0x001f }
            r1 = android.graphics.Bitmap.Config.RGB_565;	 Catch:{ NoSuchFieldError -> 0x001f }
            r1 = r1.ordinal();	 Catch:{ NoSuchFieldError -> 0x001f }
            r2 = 2;	 Catch:{ NoSuchFieldError -> 0x001f }
            r0[r1] = r2;	 Catch:{ NoSuchFieldError -> 0x001f }
        L_0x001f:
            r0 = $SwitchMap$android$graphics$Bitmap$Config;	 Catch:{ NoSuchFieldError -> 0x002a }
            r1 = android.graphics.Bitmap.Config.ARGB_4444;	 Catch:{ NoSuchFieldError -> 0x002a }
            r1 = r1.ordinal();	 Catch:{ NoSuchFieldError -> 0x002a }
            r2 = 3;	 Catch:{ NoSuchFieldError -> 0x002a }
            r0[r1] = r2;	 Catch:{ NoSuchFieldError -> 0x002a }
        L_0x002a:
            r0 = $SwitchMap$android$graphics$Bitmap$Config;	 Catch:{ NoSuchFieldError -> 0x0035 }
            r1 = android.graphics.Bitmap.Config.ALPHA_8;	 Catch:{ NoSuchFieldError -> 0x0035 }
            r1 = r1.ordinal();	 Catch:{ NoSuchFieldError -> 0x0035 }
            r2 = 4;	 Catch:{ NoSuchFieldError -> 0x0035 }
            r0[r1] = r2;	 Catch:{ NoSuchFieldError -> 0x0035 }
        L_0x0035:
            return;
            */
            throw new UnsupportedOperationException("Method not decompiled: com.bumptech.glide.load.engine.bitmap_recycle.SizeConfigStrategy.1.<clinit>():void");
        }
    }

    static final class Key implements Poolable {
        private Config config;
        private final KeyPool pool;
        private int size;

        public Key(KeyPool keyPool) {
            this.pool = keyPool;
        }

        public final void init(int i, Config config) {
            this.size = i;
            this.config = config;
        }

        public final void offer() {
            this.pool.offer(this);
        }

        public final String toString() {
            return SizeConfigStrategy.access$100(this.size, this.config);
        }

        /* JADX WARNING: inconsistent code. */
        /* Code decompiled incorrectly, please refer to instructions dump. */
        public final boolean equals(java.lang.Object r4) {
            /*
            r3 = this;
            r0 = r4 instanceof com.bumptech.glide.load.engine.bitmap_recycle.SizeConfigStrategy.Key;
            r1 = 0;
            if (r0 == 0) goto L_0x0023;
        L_0x0005:
            r4 = (com.bumptech.glide.load.engine.bitmap_recycle.SizeConfigStrategy.Key) r4;
            r0 = r3.size;
            r2 = r4.size;
            if (r0 != r2) goto L_0x0022;
        L_0x000d:
            r0 = r3.config;
            if (r0 != 0) goto L_0x0016;
        L_0x0011:
            r4 = r4.config;
            if (r4 != 0) goto L_0x0022;
        L_0x0015:
            goto L_0x0020;
        L_0x0016:
            r0 = r3.config;
            r4 = r4.config;
            r4 = r0.equals(r4);
            if (r4 == 0) goto L_0x0022;
        L_0x0020:
            r4 = 1;
            return r4;
        L_0x0022:
            return r1;
        L_0x0023:
            return r1;
            */
            throw new UnsupportedOperationException("Method not decompiled: com.bumptech.glide.load.engine.bitmap_recycle.SizeConfigStrategy.Key.equals(java.lang.Object):boolean");
        }

        public final int hashCode() {
            return (this.size * 31) + (this.config != null ? this.config.hashCode() : 0);
        }
    }

    static class KeyPool extends BaseKeyPool<Key> {
        KeyPool() {
        }

        public final Key get(int i, Config config) {
            Key key = (Key) get();
            key.init(i, config);
            return key;
        }

        protected final /* bridge */ /* synthetic */ Poolable create() {
            return new Key(this);
        }
    }

    public final void put(Bitmap bitmap) {
        Key key = this.keyPool.get(Util.getBitmapByteSize(bitmap), bitmap.getConfig());
        this.groupedMap.put(key, bitmap);
        bitmap = getSizesForConfig(bitmap.getConfig());
        Integer num = (Integer) bitmap.get(Integer.valueOf(key.size));
        Integer valueOf = Integer.valueOf(key.size);
        int i = 1;
        if (num != null) {
            i = 1 + num.intValue();
        }
        bitmap.put(valueOf, Integer.valueOf(i));
    }

    /* JADX WARNING: inconsistent code. */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public final android.graphics.Bitmap get(int r10, int r11, android.graphics.Bitmap.Config r12) {
        /*
        r9 = this;
        r0 = com.bumptech.glide.util.Util.getBitmapByteSize(r10, r11, r12);
        r1 = r9.keyPool;
        r1 = r1.get(r0, r12);
        r2 = com.bumptech.glide.load.engine.bitmap_recycle.SizeConfigStrategy.C03001.$SwitchMap$android$graphics$Bitmap$Config;
        r3 = r12.ordinal();
        r2 = r2[r3];
        r3 = 0;
        switch(r2) {
            case 1: goto L_0x0025;
            case 2: goto L_0x0022;
            case 3: goto L_0x001f;
            case 4: goto L_0x001c;
            default: goto L_0x0016;
        };
    L_0x0016:
        r2 = 1;
        r2 = new android.graphics.Bitmap.Config[r2];
        r2[r3] = r12;
        goto L_0x0027;
    L_0x001c:
        r2 = ALPHA_8_IN_CONFIGS;
        goto L_0x0027;
    L_0x001f:
        r2 = ARGB_4444_IN_CONFIGS;
        goto L_0x0027;
    L_0x0022:
        r2 = RGB_565_IN_CONFIGS;
        goto L_0x0027;
    L_0x0025:
        r2 = ARGB_8888_IN_CONFIGS;
    L_0x0027:
        r4 = r2.length;
    L_0x0028:
        if (r3 >= r4) goto L_0x0068;
    L_0x002a:
        r5 = r2[r3];
        r6 = r9.getSizesForConfig(r5);
        r7 = java.lang.Integer.valueOf(r0);
        r6 = r6.ceilingKey(r7);
        r6 = (java.lang.Integer) r6;
        if (r6 == 0) goto L_0x0065;
    L_0x003c:
        r7 = r6.intValue();
        r8 = r0 << 3;
        if (r7 > r8) goto L_0x0065;
    L_0x0044:
        r2 = r6.intValue();
        if (r2 != r0) goto L_0x0055;
    L_0x004a:
        if (r5 != 0) goto L_0x004f;
    L_0x004c:
        if (r12 == 0) goto L_0x0068;
    L_0x004e:
        goto L_0x0055;
    L_0x004f:
        r12 = r5.equals(r12);
        if (r12 != 0) goto L_0x0068;
    L_0x0055:
        r12 = r9.keyPool;
        r12.offer(r1);
        r12 = r9.keyPool;
        r0 = r6.intValue();
        r1 = r12.get(r0, r5);
        goto L_0x0068;
    L_0x0065:
        r3 = r3 + 1;
        goto L_0x0028;
    L_0x0068:
        r12 = r9.groupedMap;
        r12 = r12.get(r1);
        r12 = (android.graphics.Bitmap) r12;
        if (r12 == 0) goto L_0x0091;
    L_0x0072:
        r0 = com.bumptech.glide.util.Util.getBitmapByteSize(r12);
        r0 = java.lang.Integer.valueOf(r0);
        r1 = r12.getConfig();
        r9.decrementBitmapOfSize(r0, r1);
        r0 = r12.getConfig();
        if (r0 == 0) goto L_0x008c;
    L_0x0087:
        r0 = r12.getConfig();
        goto L_0x008e;
    L_0x008c:
        r0 = android.graphics.Bitmap.Config.ARGB_8888;
    L_0x008e:
        r12.reconfigure(r10, r11, r0);
    L_0x0091:
        return r12;
        */
        throw new UnsupportedOperationException("Method not decompiled: com.bumptech.glide.load.engine.bitmap_recycle.SizeConfigStrategy.get(int, int, android.graphics.Bitmap$Config):android.graphics.Bitmap");
    }

    public final Bitmap removeLast() {
        Bitmap bitmap = (Bitmap) this.groupedMap.removeLast();
        if (bitmap != null) {
            decrementBitmapOfSize(Integer.valueOf(Util.getBitmapByteSize(bitmap)), bitmap.getConfig());
        }
        return bitmap;
    }

    private void decrementBitmapOfSize(Integer num, Config config) {
        config = getSizesForConfig(config);
        Integer num2 = (Integer) config.get(num);
        if (num2.intValue() == 1) {
            config.remove(num);
        } else {
            config.put(num, Integer.valueOf(num2.intValue() - 1));
        }
    }

    private NavigableMap<Integer, Integer> getSizesForConfig(Config config) {
        NavigableMap<Integer, Integer> navigableMap = (NavigableMap) this.sortedSizes.get(config);
        if (navigableMap != null) {
            return navigableMap;
        }
        NavigableMap treeMap = new TreeMap();
        this.sortedSizes.put(config, treeMap);
        return treeMap;
    }

    public final String logBitmap(Bitmap bitmap) {
        int bitmapByteSize = Util.getBitmapByteSize(bitmap);
        bitmap = bitmap.getConfig();
        StringBuilder stringBuilder = new StringBuilder("[");
        stringBuilder.append(bitmapByteSize);
        stringBuilder.append("](");
        stringBuilder.append(bitmap);
        stringBuilder.append(")");
        return stringBuilder.toString();
    }

    public final String logBitmap(int i, int i2, Config config) {
        i = Util.getBitmapByteSize(i, i2, config);
        i2 = new StringBuilder("[");
        i2.append(i);
        i2.append("](");
        i2.append(config);
        i2.append(")");
        return i2.toString();
    }

    public final int getSize(Bitmap bitmap) {
        return Util.getBitmapByteSize(bitmap);
    }

    public final String toString() {
        StringBuilder stringBuilder = new StringBuilder("SizeConfigStrategy{groupedMap=");
        stringBuilder.append(this.groupedMap);
        stringBuilder.append(", sortedSizes=(");
        for (Entry entry : this.sortedSizes.entrySet()) {
            stringBuilder.append(entry.getKey());
            stringBuilder.append('[');
            stringBuilder.append(entry.getValue());
            stringBuilder.append("], ");
        }
        if (!this.sortedSizes.isEmpty()) {
            stringBuilder.replace(stringBuilder.length() - 2, stringBuilder.length(), "");
        }
        stringBuilder.append(")}");
        return stringBuilder.toString();
    }

    static /* synthetic */ String access$100(int i, Config config) {
        StringBuilder stringBuilder = new StringBuilder("[");
        stringBuilder.append(i);
        stringBuilder.append("](");
        stringBuilder.append(config);
        stringBuilder.append(")");
        return stringBuilder.toString();
    }
}
