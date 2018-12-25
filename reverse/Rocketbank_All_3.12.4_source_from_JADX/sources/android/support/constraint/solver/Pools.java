package android.support.constraint.solver;

final class Pools {

    interface Pool<T> {
        T acquire();

        boolean release(T t);

        void releaseAll(T[] tArr, int i);
    }

    static class SimplePool<T> implements Pool<T> {
        private final Object[] mPool = new Object[256];
        private int mPoolSize;

        SimplePool() {
        }

        public final T acquire() {
            if (this.mPoolSize <= 0) {
                return null;
            }
            int i = this.mPoolSize - 1;
            T t = this.mPool[i];
            this.mPool[i] = null;
            this.mPoolSize--;
            return t;
        }

        public final boolean release(T t) {
            if (this.mPoolSize >= 256) {
                return null;
            }
            this.mPool[this.mPoolSize] = t;
            this.mPoolSize += 1;
            return true;
        }

        public final void releaseAll(T[] tArr, int i) {
            if (i > tArr.length) {
                i = tArr.length;
            }
            for (int i2 = 0; i2 < i; i2++) {
                T t = tArr[i2];
                if (this.mPoolSize < 256) {
                    this.mPool[this.mPoolSize] = t;
                    this.mPoolSize++;
                }
            }
        }
    }
}
