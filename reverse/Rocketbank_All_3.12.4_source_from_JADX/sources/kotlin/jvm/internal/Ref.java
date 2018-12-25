package kotlin.jvm.internal;

import com.mikepenz.materialize.util.KeyboardUtil;
import java.io.Serializable;
import java.util.Iterator;
import javax.inject.Provider;
import kotlin.collections.BooleanIterator;
import kotlin.collections.ByteIterator;
import kotlin.collections.CharIterator;
import kotlin.collections.DoubleIterator;
import kotlin.collections.FloatIterator;
import kotlin.collections.IntIterator;
import kotlin.collections.LongIterator;
import kotlin.collections.ShortIterator;
import retrofit2.Retrofit;
import ru.rocketbank.core.network.api.WidgetApi;

public final class Ref implements Provider<WidgetApi> {
    private final KeyboardUtil module$3d1596a7;
    private final Provider<Retrofit> retrofitProvider;

    public static final class BooleanRef implements Serializable {
        public boolean element;

        public final String toString() {
            return String.valueOf(this.element);
        }
    }

    public static final class ByteRef implements Serializable {
        public byte element;

        public final String toString() {
            return String.valueOf(this.element);
        }
    }

    public static final class CharRef implements Serializable {
        public char element;

        public final String toString() {
            return String.valueOf(this.element);
        }
    }

    public static final class DoubleRef implements Serializable {
        public double element;

        public final String toString() {
            return String.valueOf(this.element);
        }
    }

    public static final class FloatRef implements Serializable {
        public float element;

        public final String toString() {
            return String.valueOf(this.element);
        }
    }

    public static final class IntRef implements Serializable {
        public int element;

        public final String toString() {
            return String.valueOf(this.element);
        }
    }

    public static final class LongRef implements Serializable {
        public long element;

        public final String toString() {
            return String.valueOf(this.element);
        }
    }

    public static final class ObjectRef<T> implements Serializable {
        public T element;

        public final String toString() {
            return String.valueOf(this.element);
        }
    }

    public static final class ShortRef implements Serializable {
        public short element;

        public final String toString() {
            return String.valueOf(this.element);
        }
    }

    public static <T> Iterator<T> iterator(T[] tArr) {
        Intrinsics.checkParameterIsNotNull(tArr, "array");
        return new ArrayIterator(tArr);
    }

    public static ByteIterator iterator(byte[] bArr) {
        Intrinsics.checkParameterIsNotNull(bArr, "array");
        return new ArrayByteIterator(bArr);
    }

    public static CharIterator iterator(char[] cArr) {
        Intrinsics.checkParameterIsNotNull(cArr, "array");
        return new ArrayCharIterator(cArr);
    }

    public static ShortIterator iterator(short[] sArr) {
        Intrinsics.checkParameterIsNotNull(sArr, "array");
        return new ArrayShortIterator(sArr);
    }

    public static IntIterator iterator(int[] iArr) {
        Intrinsics.checkParameterIsNotNull(iArr, "array");
        return new ArrayIntIterator(iArr);
    }

    public static LongIterator iterator(long[] jArr) {
        Intrinsics.checkParameterIsNotNull(jArr, "array");
        return new ArrayLongIterator(jArr);
    }

    public static FloatIterator iterator(float[] fArr) {
        Intrinsics.checkParameterIsNotNull(fArr, "array");
        return new ArrayFloatIterator(fArr);
    }

    public static DoubleIterator iterator(double[] dArr) {
        Intrinsics.checkParameterIsNotNull(dArr, "array");
        return new ArrayDoubleIterator(dArr);
    }

    public static BooleanIterator iterator(boolean[] zArr) {
        Intrinsics.checkParameterIsNotNull(zArr, "array");
        return new ArrayBooleanIterator(zArr);
    }

    public Ref(KeyboardUtil keyboardUtil, Provider<Retrofit> provider) {
        this.module$3d1596a7 = keyboardUtil;
        this.retrofitProvider = provider;
    }

    public final /* bridge */ /* synthetic */ Object get() {
        Retrofit retrofit = (Retrofit) this.retrofitProvider.get();
        Intrinsics.checkParameterIsNotNull(retrofit, "retrofit");
        Object create = retrofit.create(WidgetApi.class);
        Intrinsics.checkExpressionValueIsNotNull(create, "retrofit.create(WidgetApi::class.java)");
        WidgetApi widgetApi = (WidgetApi) create;
        String str = "Cannot return null from a non-@Nullable @Provides method";
        if (widgetApi != null) {
            return widgetApi;
        }
        throw new NullPointerException(str);
    }
}
