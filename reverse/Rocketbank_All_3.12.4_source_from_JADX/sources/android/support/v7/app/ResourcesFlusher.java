package android.support.v7.app;

import android.content.res.Resources;
import android.os.Build.VERSION;
import android.util.Log;
import android.util.LongSparseArray;
import java.lang.reflect.Field;
import java.util.Map;

final class ResourcesFlusher {
    private static Field sDrawableCacheField;
    private static boolean sDrawableCacheFieldFetched;
    private static ResourcesFlusher sInstance$53150959;
    private static Field sResourcesImplField;
    private static boolean sResourcesImplFieldFetched;
    private static Class sThemedResourceCacheClazz;
    private static boolean sThemedResourceCacheClazzFetched;
    private static Field sThemedResourceCache_mUnthemedEntriesField;
    private static boolean sThemedResourceCache_mUnthemedEntriesFieldFetched;
    public int state;
    public long sunrise;
    public long sunset;

    static boolean flush(Resources resources) {
        if (VERSION.SDK_INT >= 24) {
            return flushNougats(resources);
        }
        if (VERSION.SDK_INT >= 23) {
            return flushMarshmallows(resources);
        }
        return VERSION.SDK_INT >= 21 ? flushLollipops(resources) : null;
    }

    private static boolean flushLollipops(Resources resources) {
        if (!sDrawableCacheFieldFetched) {
            try {
                Field declaredField = Resources.class.getDeclaredField("mDrawableCache");
                sDrawableCacheField = declaredField;
                declaredField.setAccessible(true);
            } catch (Throwable e) {
                Log.e("ResourcesFlusher", "Could not retrieve Resources#mDrawableCache field", e);
            }
            sDrawableCacheFieldFetched = true;
        }
        if (sDrawableCacheField != null) {
            try {
                resources = (Map) sDrawableCacheField.get(resources);
            } catch (Resources resources2) {
                Log.e("ResourcesFlusher", "Could not retrieve value from Resources#mDrawableCache", resources2);
                resources2 = null;
            }
            if (resources2 != null) {
                resources2.clear();
                return true;
            }
        }
        return null;
    }

    private static boolean flushMarshmallows(Resources resources) {
        if (!sDrawableCacheFieldFetched) {
            try {
                Field declaredField = Resources.class.getDeclaredField("mDrawableCache");
                sDrawableCacheField = declaredField;
                declaredField.setAccessible(true);
            } catch (Throwable e) {
                Log.e("ResourcesFlusher", "Could not retrieve Resources#mDrawableCache field", e);
            }
            sDrawableCacheFieldFetched = true;
        }
        if (sDrawableCacheField != null) {
            try {
                resources = sDrawableCacheField.get(resources);
            } catch (Resources resources2) {
                Log.e("ResourcesFlusher", "Could not retrieve value from Resources#mDrawableCache", resources2);
            }
            if (resources2 != null || resources2 == null || flushThemedResourcesCache(resources2) == null) {
                return false;
            }
            return true;
        }
        resources2 = null;
        if (resources2 != null) {
            return false;
        }
        return true;
    }

    private static boolean flushNougats(Resources resources) {
        if (!sResourcesImplFieldFetched) {
            try {
                Field declaredField = Resources.class.getDeclaredField("mResourcesImpl");
                sResourcesImplField = declaredField;
                declaredField.setAccessible(true);
            } catch (Throwable e) {
                Log.e("ResourcesFlusher", "Could not retrieve Resources#mResourcesImpl field", e);
            }
            sResourcesImplFieldFetched = true;
        }
        if (sResourcesImplField == null) {
            return false;
        }
        try {
            resources = sResourcesImplField.get(resources);
        } catch (Resources resources2) {
            Log.e("ResourcesFlusher", "Could not retrieve value from Resources#mResourcesImpl", resources2);
            resources2 = null;
        }
        if (resources2 == null) {
            return false;
        }
        if (!sDrawableCacheFieldFetched) {
            try {
                Field declaredField2 = resources2.getClass().getDeclaredField("mDrawableCache");
                sDrawableCacheField = declaredField2;
                declaredField2.setAccessible(true);
            } catch (Throwable e2) {
                Log.e("ResourcesFlusher", "Could not retrieve ResourcesImpl#mDrawableCache field", e2);
            }
            sDrawableCacheFieldFetched = true;
        }
        if (sDrawableCacheField != null) {
            try {
                resources2 = sDrawableCacheField.get(resources2);
            } catch (Resources resources22) {
                Log.e("ResourcesFlusher", "Could not retrieve value from ResourcesImpl#mDrawableCache", resources22);
            }
            if (resources22 != null || flushThemedResourcesCache(resources22) == null) {
                return false;
            }
            return true;
        }
        resources22 = null;
        if (resources22 != null) {
        }
        return false;
    }

    private static boolean flushThemedResourcesCache(Object obj) {
        if (!sThemedResourceCacheClazzFetched) {
            try {
                sThemedResourceCacheClazz = Class.forName("android.content.res.ThemedResourceCache");
            } catch (Throwable e) {
                Log.e("ResourcesFlusher", "Could not find ThemedResourceCache class", e);
            }
            sThemedResourceCacheClazzFetched = true;
        }
        if (sThemedResourceCacheClazz == null) {
            return false;
        }
        if (!sThemedResourceCache_mUnthemedEntriesFieldFetched) {
            try {
                Field declaredField = sThemedResourceCacheClazz.getDeclaredField("mUnthemedEntries");
                sThemedResourceCache_mUnthemedEntriesField = declaredField;
                declaredField.setAccessible(true);
            } catch (Throwable e2) {
                Log.e("ResourcesFlusher", "Could not retrieve ThemedResourceCache#mUnthemedEntries field", e2);
            }
            sThemedResourceCache_mUnthemedEntriesFieldFetched = true;
        }
        if (sThemedResourceCache_mUnthemedEntriesField == null) {
            return false;
        }
        try {
            obj = (LongSparseArray) sThemedResourceCache_mUnthemedEntriesField.get(obj);
        } catch (Object obj2) {
            Log.e("ResourcesFlusher", "Could not retrieve value from ThemedResourceCache#mUnthemedEntries", obj2);
            obj2 = null;
        }
        if (obj2 == null) {
            return false;
        }
        obj2.clear();
        return true;
    }

    ResourcesFlusher() {
    }

    static ResourcesFlusher getInstance$4befb248() {
        if (sInstance$53150959 == null) {
            sInstance$53150959 = new ResourcesFlusher();
        }
        return sInstance$53150959;
    }

    public final void calculateTwilight(long j, double d, double d2) {
        ResourcesFlusher resourcesFlusher = this;
        float f = ((float) (j - 946728000000L)) / 8.64E7f;
        float f2 = 6.24006f + (0.01720197f * f);
        double d3 = (double) f2;
        double sin = (((((0.03341960161924362d * Math.sin(d3)) + d3) + (3.4906598739326E-4d * Math.sin((double) (2.0f * f2)))) + (5.236000106378924E-6d * Math.sin((double) (3.0f * f2)))) + 1.796593063d) + 3.141592653589793d;
        double d4 = (-d2) / 360.0d;
        double round = ((((double) (((float) Math.round(((double) (f - 9.0E-4f)) - d4)) + 9.0E-4f)) + d4) + (0.0053d * Math.sin(d3))) + (-0.0069d * Math.sin(2.0d * sin));
        double asin = Math.asin(Math.sin(sin) * Math.sin(0.4092797040939331d));
        double d5 = 0.01745329238474369d * d;
        sin = (Math.sin(-0.10471975803375244d) - (Math.sin(d5) * Math.sin(asin))) / (Math.cos(d5) * Math.cos(asin));
        if (sin >= 1.0d) {
            resourcesFlusher.state = 1;
            resourcesFlusher.sunset = -1;
            resourcesFlusher.sunrise = -1;
        } else if (sin <= -1.0d) {
            resourcesFlusher.state = 0;
            resourcesFlusher.sunset = -1;
            resourcesFlusher.sunrise = -1;
        } else {
            d5 = (double) ((float) (Math.acos(sin) / 6.283185307179586d));
            resourcesFlusher.sunset = Math.round((round + d5) * 8.64E7d) + 946728000000L;
            resourcesFlusher.sunrise = Math.round((round - d5) * 8.64E7d) + 946728000000L;
            if (resourcesFlusher.sunrise >= j || resourcesFlusher.sunset <= j) {
                resourcesFlusher.state = 1;
            } else {
                resourcesFlusher.state = 0;
            }
        }
    }
}
