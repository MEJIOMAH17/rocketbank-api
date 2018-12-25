package com.bumptech.glide.load.engine.bitmap_recycle;

import android.annotation.SuppressLint;
import android.annotation.TargetApi;
import android.graphics.Bitmap;
import android.graphics.Bitmap.Config;
import android.os.Build.VERSION;
import android.util.Log;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashSet;
import java.util.Set;

public final class LruBitmapPool implements BitmapPool {
    private static final Config DEFAULT_CONFIG = Config.ARGB_8888;
    private final Set<Config> allowedConfigs;
    private int currentSize;
    private int evictions;
    private int hits;
    private final int initialMaxSize;
    private int maxSize;
    private int misses;
    private int puts;
    private final LruPoolStrategy strategy;
    private final BitmapTracker tracker;

    interface BitmapTracker {
    }

    static class NullBitmapTracker implements BitmapTracker {
        private NullBitmapTracker() {
        }
    }

    private LruBitmapPool(int i, LruPoolStrategy lruPoolStrategy, Set<Config> set) {
        this.initialMaxSize = i;
        this.maxSize = i;
        this.strategy = lruPoolStrategy;
        this.allowedConfigs = set;
        this.tracker = new NullBitmapTracker();
    }

    public final synchronized boolean put(Bitmap bitmap) {
        if (bitmap == null) {
            throw new NullPointerException("Bitmap must not be null");
        }
        if (bitmap.isMutable() && this.strategy.getSize(bitmap) <= this.maxSize) {
            if (this.allowedConfigs.contains(bitmap.getConfig())) {
                int size = this.strategy.getSize(bitmap);
                this.strategy.put(bitmap);
                this.puts++;
                this.currentSize += size;
                if (Log.isLoggable("LruBitmapPool", 2)) {
                    StringBuilder stringBuilder = new StringBuilder("Put bitmap in pool=");
                    stringBuilder.append(this.strategy.logBitmap(bitmap));
                    Log.v("LruBitmapPool", stringBuilder.toString());
                }
                if (Log.isLoggable("LruBitmapPool", 2) != null) {
                    dumpUnchecked();
                }
                trimToSize(this.maxSize);
                return true;
            }
        }
        if (Log.isLoggable("LruBitmapPool", 2)) {
            StringBuilder stringBuilder2 = new StringBuilder("Reject bitmap from pool, bitmap: ");
            stringBuilder2.append(this.strategy.logBitmap(bitmap));
            stringBuilder2.append(", is mutable: ");
            stringBuilder2.append(bitmap.isMutable());
            stringBuilder2.append(", is allowed config: ");
            stringBuilder2.append(this.allowedConfigs.contains(bitmap.getConfig()));
            Log.v("LruBitmapPool", stringBuilder2.toString());
        }
        return null;
    }

    public final synchronized Bitmap get(int i, int i2, Config config) {
        i = getDirty(i, i2, config);
        if (i != 0) {
            i.eraseColor(0);
        }
        return i;
    }

    @TargetApi(12)
    public final synchronized Bitmap getDirty(int i, int i2, Config config) {
        Bitmap bitmap;
        bitmap = this.strategy.get(i, i2, config != null ? config : DEFAULT_CONFIG);
        if (bitmap == null) {
            if (Log.isLoggable("LruBitmapPool", 3)) {
                StringBuilder stringBuilder = new StringBuilder("Missing bitmap=");
                stringBuilder.append(this.strategy.logBitmap(i, i2, config));
                Log.d("LruBitmapPool", stringBuilder.toString());
            }
            this.misses++;
        } else {
            this.hits++;
            this.currentSize -= this.strategy.getSize(bitmap);
            if (VERSION.SDK_INT >= 12) {
                bitmap.setHasAlpha(true);
            }
        }
        if (Log.isLoggable("LruBitmapPool", 2)) {
            stringBuilder = new StringBuilder("Get bitmap=");
            stringBuilder.append(this.strategy.logBitmap(i, i2, config));
            Log.v("LruBitmapPool", stringBuilder.toString());
        }
        if (Log.isLoggable("LruBitmapPool", 2) != 0) {
            dumpUnchecked();
        }
        return bitmap;
    }

    public final void clearMemory() {
        if (Log.isLoggable("LruBitmapPool", 3)) {
            Log.d("LruBitmapPool", "clearMemory");
        }
        trimToSize(0);
    }

    @SuppressLint({"InlinedApi"})
    public final void trimMemory(int i) {
        if (Log.isLoggable("LruBitmapPool", 3)) {
            Log.d("LruBitmapPool", "trimMemory, level=".concat(String.valueOf(i)));
        }
        if (i >= 60) {
            if (Log.isLoggable("LruBitmapPool", 3) != 0) {
                Log.d("LruBitmapPool", "clearMemory");
            }
            trimToSize(0);
            return;
        }
        if (i >= 40) {
            trimToSize(this.maxSize / 2);
        }
    }

    private synchronized void trimToSize(int i) {
        while (this.currentSize > i) {
            Bitmap removeLast = this.strategy.removeLast();
            if (removeLast == null) {
                if (Log.isLoggable("LruBitmapPool", 5) != 0) {
                    Log.w("LruBitmapPool", "Size mismatch, resetting");
                    dumpUnchecked();
                }
                this.currentSize = 0;
                return;
            }
            this.currentSize -= this.strategy.getSize(removeLast);
            removeLast.recycle();
            this.evictions++;
            if (Log.isLoggable("LruBitmapPool", 3)) {
                StringBuilder stringBuilder = new StringBuilder("Evicting bitmap=");
                stringBuilder.append(this.strategy.logBitmap(removeLast));
                Log.d("LruBitmapPool", stringBuilder.toString());
            }
            if (Log.isLoggable("LruBitmapPool", 2)) {
                dumpUnchecked();
            }
        }
    }

    private void dumpUnchecked() {
        StringBuilder stringBuilder = new StringBuilder("Hits=");
        stringBuilder.append(this.hits);
        stringBuilder.append(", misses=");
        stringBuilder.append(this.misses);
        stringBuilder.append(", puts=");
        stringBuilder.append(this.puts);
        stringBuilder.append(", evictions=");
        stringBuilder.append(this.evictions);
        stringBuilder.append(", currentSize=");
        stringBuilder.append(this.currentSize);
        stringBuilder.append(", maxSize=");
        stringBuilder.append(this.maxSize);
        stringBuilder.append("\nStrategy=");
        stringBuilder.append(this.strategy);
        Log.v("LruBitmapPool", stringBuilder.toString());
    }

    public LruBitmapPool(int i) {
        LruPoolStrategy sizeConfigStrategy;
        if (VERSION.SDK_INT >= 19) {
            sizeConfigStrategy = new SizeConfigStrategy();
        } else {
            sizeConfigStrategy = new AttributeStrategy();
        }
        Set hashSet = new HashSet();
        hashSet.addAll(Arrays.asList(Config.values()));
        if (VERSION.SDK_INT >= 19) {
            hashSet.add(null);
        }
        this(i, sizeConfigStrategy, Collections.unmodifiableSet(hashSet));
    }
}
