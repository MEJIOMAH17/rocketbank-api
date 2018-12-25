package jp.wasabeef.glide.transformations.internal;

import android.graphics.Bitmap;
import android.support.v4.view.ViewCompat;
import com.mikepenz.materialize.util.KeyboardUtil;
import java.lang.reflect.Array;
import javax.inject.Provider;
import kotlin.jvm.internal.Intrinsics;
import retrofit2.Retrofit;
import ru.rocketbank.core.network.api.DeliveryApi;

public final class FastBlur implements Provider<DeliveryApi> {
    private final KeyboardUtil module$3d1596a7;
    private final Provider<Retrofit> retrofitProvider;

    public static Bitmap blur$2ae65b28(Bitmap bitmap, int i) {
        int i2 = i;
        if (i2 <= 0) {
            return null;
        }
        int i3;
        int i4;
        int[] iArr;
        int[] iArr2;
        int width = bitmap.getWidth();
        int height = bitmap.getHeight();
        int i5 = width * height;
        int[] iArr3 = new int[i5];
        bitmap.getPixels(iArr3, 0, width, 0, 0, width, height);
        int i6 = width - 1;
        int i7 = height - 1;
        int i8 = (i2 + i2) + 1;
        int[] iArr4 = new int[i5];
        int[] iArr5 = new int[i5];
        int[] iArr6 = new int[i5];
        int[] iArr7 = new int[Math.max(width, height)];
        i5 = (i8 + 1) >> 1;
        i5 *= i5;
        int i9 = i5 << 8;
        int[] iArr8 = new int[i9];
        for (int i10 = 0; i10 < i9; i10++) {
            iArr8[i10] = i10 / i5;
        }
        int[][] iArr9 = (int[][]) Array.newInstance(int.class, new int[]{i8, 3});
        i5 = i2 + 1;
        i9 = 0;
        int i11 = 0;
        int i12 = 0;
        while (i9 < height) {
            int i13 = -i2;
            int i14 = 0;
            int i15 = 0;
            int i16 = 0;
            int i17 = 0;
            int i18 = 0;
            int i19 = 0;
            int i20 = 0;
            int i21 = 0;
            int i22 = 0;
            while (i13 <= i2) {
                i3 = i7;
                i4 = height;
                i7 = iArr3[i11 + Math.min(i6, Math.max(i13, 0))];
                int[] iArr10 = iArr9[i13 + i2];
                iArr = iArr3;
                iArr10[0] = (i7 >> 16) & 255;
                iArr10[1] = (i7 >> 8) & 255;
                iArr10[2] = i7 & 255;
                i7 = i5 - Math.abs(i13);
                i14 += iArr10[0] * i7;
                i15 += iArr10[1] * i7;
                i16 += iArr10[2] * i7;
                if (i13 > 0) {
                    i17 += iArr10[0];
                    i18 += iArr10[1];
                    i19 += iArr10[2];
                } else {
                    i20 += iArr10[0];
                    i21 += iArr10[1];
                    i22 += iArr10[2];
                }
                i13++;
                height = i4;
                i7 = i3;
                iArr3 = iArr;
            }
            i3 = i7;
            i4 = height;
            iArr = iArr3;
            height = i2;
            i7 = 0;
            while (i7 < width) {
                iArr4[i11] = iArr8[i14];
                iArr5[i11] = iArr8[i15];
                iArr6[i11] = iArr8[i16];
                i14 -= i20;
                i15 -= i21;
                i16 -= i22;
                iArr3 = iArr9[((height - i2) + i8) % i8];
                i20 -= iArr3[0];
                i21 -= iArr3[1];
                i22 -= iArr3[2];
                if (i9 == 0) {
                    iArr2 = iArr8;
                    iArr7[i7] = Math.min((i7 + i2) + 1, i6);
                } else {
                    iArr2 = iArr8;
                }
                int i23 = iArr[i12 + iArr7[i7]];
                iArr3[0] = (i23 >> 16) & 255;
                iArr3[1] = (i23 >> 8) & 255;
                iArr3[2] = i23 & 255;
                i17 += iArr3[0];
                i18 += iArr3[1];
                i19 += iArr3[2];
                i14 += i17;
                i15 += i18;
                i16 += i19;
                height = (height + 1) % i8;
                iArr3 = iArr9[height % i8];
                i20 += iArr3[0];
                i21 += iArr3[1];
                i22 += iArr3[2];
                i17 -= iArr3[0];
                i18 -= iArr3[1];
                i19 -= iArr3[2];
                i11++;
                i7++;
                iArr8 = iArr2;
            }
            iArr2 = iArr8;
            i12 += width;
            i9++;
            height = i4;
            i7 = i3;
            iArr3 = iArr;
        }
        i3 = i7;
        i4 = height;
        iArr = iArr3;
        iArr2 = iArr8;
        i6 = 0;
        while (i6 < width) {
            int[] iArr11;
            int abs;
            i7 = -i2;
            height = i7 * width;
            int i24 = 0;
            i9 = 0;
            i23 = 0;
            i13 = 0;
            i11 = 0;
            i12 = 0;
            i14 = 0;
            i15 = 0;
            i16 = 0;
            while (i7 <= i2) {
                iArr11 = iArr7;
                i17 = Math.max(0, height) + i6;
                int[] iArr12 = iArr9[i7 + i2];
                iArr12[0] = iArr4[i17];
                iArr12[1] = iArr5[i17];
                iArr12[2] = iArr6[i17];
                abs = i5 - Math.abs(i7);
                i24 += iArr4[i17] * abs;
                i9 += iArr5[i17] * abs;
                i23 += iArr6[i17] * abs;
                if (i7 > 0) {
                    i13 += iArr12[0];
                    i11 += iArr12[1];
                    i12 += iArr12[2];
                } else {
                    i14 += iArr12[0];
                    i15 += iArr12[1];
                    i16 += iArr12[2];
                }
                abs = i3;
                if (i7 < abs) {
                    height += width;
                }
                i7++;
                i3 = abs;
                iArr7 = iArr11;
            }
            iArr11 = iArr7;
            abs = i3;
            i17 = i11;
            i18 = i12;
            height = i4;
            i7 = 0;
            i11 = i2;
            i12 = i13;
            i13 = i23;
            i23 = i9;
            i9 = i24;
            i24 = i6;
            while (i7 < height) {
                iArr[i24] = (((ViewCompat.MEASURED_STATE_MASK & iArr[i24]) | (iArr2[i9] << 16)) | (iArr2[i23] << 8)) | iArr2[i13];
                i9 -= i14;
                i23 -= i15;
                i13 -= i16;
                int[] iArr13 = iArr9[((i11 - i2) + i8) % i8];
                i14 -= iArr13[0];
                i15 -= iArr13[1];
                i16 -= iArr13[2];
                if (i6 == 0) {
                    iArr11[i7] = Math.min(i7 + i5, abs) * width;
                }
                i2 = iArr11[i7] + i6;
                iArr13[0] = iArr4[i2];
                iArr13[1] = iArr5[i2];
                iArr13[2] = iArr6[i2];
                i12 += iArr13[0];
                i17 += iArr13[1];
                i18 += iArr13[2];
                i9 += i12;
                i23 += i17;
                i13 += i18;
                i11 = (i11 + 1) % i8;
                int[] iArr14 = iArr9[i11];
                i14 += iArr14[0];
                i15 += iArr14[1];
                i16 += iArr14[2];
                i12 -= iArr14[0];
                i17 -= iArr14[1];
                i18 -= iArr14[2];
                i24 += width;
                i7++;
                i2 = i;
            }
            i6++;
            i3 = abs;
            i4 = height;
            iArr7 = iArr11;
            i2 = i;
        }
        bitmap.setPixels(iArr, 0, width, 0, 0, width, i4);
        return bitmap;
    }

    public FastBlur(KeyboardUtil keyboardUtil, Provider<Retrofit> provider) {
        this.module$3d1596a7 = keyboardUtil;
        this.retrofitProvider = provider;
    }

    public final /* bridge */ /* synthetic */ Object get() {
        Retrofit retrofit = (Retrofit) this.retrofitProvider.get();
        Intrinsics.checkParameterIsNotNull(retrofit, "retrofit");
        Object create = retrofit.create(DeliveryApi.class);
        Intrinsics.checkExpressionValueIsNotNull(create, "retrofit.create(DeliveryApi::class.java)");
        DeliveryApi deliveryApi = (DeliveryApi) create;
        String str = "Cannot return null from a non-@Nullable @Provides method";
        if (deliveryApi != null) {
            return deliveryApi;
        }
        throw new NullPointerException(str);
    }
}
