package com.bumptech.glide.load.engine.cache;

import android.app.ActivityManager;
import android.content.Context;
import android.os.Build.VERSION;
import android.text.format.Formatter;
import android.util.DisplayMetrics;
import android.util.Log;

public final class MemorySizeCalculator {
    private final int bitmapPoolSize;
    private final Context context;
    private final int memoryCacheSize;

    interface ScreenDimensions {
        int getHeightPixels();

        int getWidthPixels();
    }

    static class DisplayMetricsScreenDimensions implements ScreenDimensions {
        private final DisplayMetrics displayMetrics;

        public DisplayMetricsScreenDimensions(DisplayMetrics displayMetrics) {
            this.displayMetrics = displayMetrics;
        }

        public final int getWidthPixels() {
            return this.displayMetrics.widthPixels;
        }

        public final int getHeightPixels() {
            return this.displayMetrics.heightPixels;
        }
    }

    public MemorySizeCalculator(Context context) {
        this(context, (ActivityManager) context.getSystemService("activity"), new DisplayMetricsScreenDimensions(context.getResources().getDisplayMetrics()));
    }

    private MemorySizeCalculator(Context context, ActivityManager activityManager, ScreenDimensions screenDimensions) {
        this.context = context;
        context = (activityManager.getMemoryClass() << 10) << 10;
        boolean z = false;
        boolean isLowRamDevice = VERSION.SDK_INT >= 19 ? activityManager.isLowRamDevice() : VERSION.SDK_INT < 11;
        context = Math.round(((float) context) * (isLowRamDevice ? 0.33f : 0.4f));
        screenDimensions = (screenDimensions.getWidthPixels() * screenDimensions.getHeightPixels()) << 2;
        int i = screenDimensions << 2;
        screenDimensions <<= 1;
        int i2 = screenDimensions + i;
        if (i2 <= context) {
            this.memoryCacheSize = screenDimensions;
            this.bitmapPoolSize = i;
        } else {
            screenDimensions = Math.round(((float) context) / 6.0f);
            this.memoryCacheSize = screenDimensions << 1;
            this.bitmapPoolSize = screenDimensions << 2;
        }
        if (Log.isLoggable("MemorySizeCalculator", 3) != null) {
            screenDimensions = "MemorySizeCalculator";
            StringBuilder stringBuilder = new StringBuilder("Calculated memory cache size: ");
            stringBuilder.append(Formatter.formatFileSize(this.context, (long) this.memoryCacheSize));
            stringBuilder.append(" pool size: ");
            stringBuilder.append(Formatter.formatFileSize(this.context, (long) this.bitmapPoolSize));
            stringBuilder.append(" memory class limited? ");
            stringBuilder.append(i2 > context);
            stringBuilder.append(" max size: ");
            stringBuilder.append(Formatter.formatFileSize(this.context, (long) context));
            stringBuilder.append(" memoryClass: ");
            stringBuilder.append(activityManager.getMemoryClass());
            stringBuilder.append(" isLowMemoryDevice: ");
            if (VERSION.SDK_INT >= 19) {
                z = activityManager.isLowRamDevice();
            } else if (VERSION.SDK_INT < 11) {
                z = true;
            }
            stringBuilder.append(z);
            Log.d(screenDimensions, stringBuilder.toString());
        }
    }

    public final int getMemoryCacheSize() {
        return this.memoryCacheSize;
    }

    public final int getBitmapPoolSize() {
        return this.bitmapPoolSize;
    }
}
