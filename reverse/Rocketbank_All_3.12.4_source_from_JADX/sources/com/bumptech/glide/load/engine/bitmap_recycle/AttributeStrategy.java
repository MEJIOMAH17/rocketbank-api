package com.bumptech.glide.load.engine.bitmap_recycle;

import android.graphics.Bitmap;
import android.graphics.Bitmap.Config;
import com.bumptech.glide.util.Util;

final class AttributeStrategy implements LruPoolStrategy {
    private final GroupedLinkedMap<Key, Bitmap> groupedMap = new GroupedLinkedMap();
    private final KeyPool keyPool = new KeyPool();

    static class Key implements Poolable {
        private Config config;
        private int height;
        private final KeyPool pool;
        private int width;

        public Key(KeyPool keyPool) {
            this.pool = keyPool;
        }

        public final void init(int i, int i2, Config config) {
            this.width = i;
            this.height = i2;
            this.config = config;
        }

        public final boolean equals(Object obj) {
            if (!(obj instanceof Key)) {
                return false;
            }
            Key key = (Key) obj;
            if (this.width == key.width && this.height == key.height && this.config == key.config) {
                return true;
            }
            return false;
        }

        public final int hashCode() {
            return (((this.width * 31) + this.height) * 31) + (this.config != null ? this.config.hashCode() : 0);
        }

        public final String toString() {
            return AttributeStrategy.getBitmapString(this.width, this.height, this.config);
        }

        public final void offer() {
            this.pool.offer(this);
        }
    }

    static class KeyPool extends BaseKeyPool<Key> {
        KeyPool() {
        }

        public final Key get(int i, int i2, Config config) {
            Key key = (Key) get();
            key.init(i, i2, config);
            return key;
        }

        protected final /* bridge */ /* synthetic */ Poolable create() {
            return new Key(this);
        }
    }

    AttributeStrategy() {
    }

    public final void put(Bitmap bitmap) {
        this.groupedMap.put(this.keyPool.get(bitmap.getWidth(), bitmap.getHeight(), bitmap.getConfig()), bitmap);
    }

    public final Bitmap get(int i, int i2, Config config) {
        return (Bitmap) this.groupedMap.get(this.keyPool.get(i, i2, config));
    }

    public final Bitmap removeLast() {
        return (Bitmap) this.groupedMap.removeLast();
    }

    public final String logBitmap(int i, int i2, Config config) {
        return getBitmapString(i, i2, config);
    }

    public final int getSize(Bitmap bitmap) {
        return Util.getBitmapByteSize(bitmap);
    }

    public final String toString() {
        StringBuilder stringBuilder = new StringBuilder("AttributeStrategy:\n  ");
        stringBuilder.append(this.groupedMap);
        return stringBuilder.toString();
    }

    private static String getBitmapString(int i, int i2, Config config) {
        StringBuilder stringBuilder = new StringBuilder("[");
        stringBuilder.append(i);
        stringBuilder.append("x");
        stringBuilder.append(i2);
        stringBuilder.append("], ");
        stringBuilder.append(config);
        return stringBuilder.toString();
    }

    public final String logBitmap(Bitmap bitmap) {
        return getBitmapString(bitmap.getWidth(), bitmap.getHeight(), bitmap.getConfig());
    }
}
