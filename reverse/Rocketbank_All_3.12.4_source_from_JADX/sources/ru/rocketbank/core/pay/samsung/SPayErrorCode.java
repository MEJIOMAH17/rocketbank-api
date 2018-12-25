package ru.rocketbank.core.pay.samsung;

import android.support.v4.content.Loader.OnLoadCompleteListener;
import android.util.Log;
import android.util.SparseArray;
import com.samsung.android.sdk.samsungpay.v2.SpaySdk;
import com.samsung.android.sdk.samsungpay.v2.card.CardManager;
import com.samsung.android.sdk.samsungpay.v2.payment.PaymentManager;
import java.lang.reflect.Field;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import kotlin.ExceptionsKt__ExceptionsKt;
import kotlin.Lazy;
import kotlin.TypeCastException;
import kotlin.jvm.internal.ClassBasedDeclarationContainer;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.PropertyReference1Impl;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KProperty;

/* compiled from: SPayErrorCode.kt */
public final class SPayErrorCode {
    static final /* synthetic */ KProperty[] $$delegatedProperties = new KProperty[]{Reflection.property1(new PropertyReference1Impl(Reflection.getOrCreateKotlinClass$4641416c(SPayErrorCode.class), "errorCodeMap", "getErrorCodeMap()Landroid/util/SparseArray;"))};
    public static final SPayErrorCode INSTANCE = new SPayErrorCode();
    private static final Lazy errorCodeMap$delegate = ExceptionsKt__ExceptionsKt.lazy(SPayErrorCode$errorCodeMap$2.INSTANCE);

    private SPayErrorCode() {
    }

    private static <T> void createErrorCodeMap(SparseArray<String> sparseArray, Class<T> cls) {
        cls = cls.getDeclaredFields();
        Intrinsics.checkExpressionValueIsNotNull(cls, "c.declaredFields");
        Collection arrayList = new ArrayList();
        int length = cls.length;
        int i = 0;
        while (true) {
            Object obj = null;
            if (i < length) {
                boolean z;
                Field field = cls[i];
                Intrinsics.checkExpressionValueIsNotNull(field, "it");
                String name = field.getName();
                Intrinsics.checkExpressionValueIsNotNull(name, "it.name");
                if (StringsKt__StringsJVMKt.startsWith$default(name, "ERROR_", false, 2, null)) {
                    Class type = field.getType();
                    OnLoadCompleteListener orCreateKotlinClass$4641416c = Reflection.getOrCreateKotlinClass$4641416c(Integer.TYPE);
                    Intrinsics.checkParameterIsNotNull(orCreateKotlinClass$4641416c, "$receiver");
                    Class jClass = ((ClassBasedDeclarationContainer) orCreateKotlinClass$4641416c).getJClass();
                    if (!jClass.isPrimitive()) {
                        String name2 = jClass.getName();
                        if (name2 != null) {
                            switch (name2.hashCode()) {
                                case -2056817302:
                                    if (name2.equals("java.lang.Integer")) {
                                        obj = Integer.TYPE;
                                        break;
                                    }
                                    break;
                                case -527879800:
                                    if (name2.equals("java.lang.Float")) {
                                        obj = Float.TYPE;
                                        break;
                                    }
                                    break;
                                case -515992664:
                                    if (name2.equals("java.lang.Short")) {
                                        obj = Short.TYPE;
                                        break;
                                    }
                                    break;
                                case 155276373:
                                    if (name2.equals("java.lang.Character")) {
                                        obj = Character.TYPE;
                                        break;
                                    }
                                    break;
                                case 344809556:
                                    if (name2.equals("java.lang.Boolean")) {
                                        obj = Boolean.TYPE;
                                        break;
                                    }
                                    break;
                                case 398507100:
                                    if (name2.equals("java.lang.Byte")) {
                                        obj = Byte.TYPE;
                                        break;
                                    }
                                    break;
                                case 398795216:
                                    if (name2.equals("java.lang.Long")) {
                                        obj = Long.TYPE;
                                        break;
                                    }
                                    break;
                                case 399092968:
                                    if (name2.equals("java.lang.Void")) {
                                        obj = Void.TYPE;
                                        break;
                                    }
                                    break;
                                case 761287205:
                                    if (name2.equals("java.lang.Double")) {
                                        obj = Double.TYPE;
                                        break;
                                    }
                                    break;
                                default:
                                    break;
                            }
                        }
                    } else if (jClass == null) {
                        throw new TypeCastException("null cannot be cast to non-null type java.lang.Class<T>");
                    } else {
                        obj = jClass;
                    }
                    if (Intrinsics.areEqual(type, obj)) {
                        z = true;
                        if (z) {
                            arrayList.add(field);
                        }
                        i++;
                    }
                }
                z = false;
                if (z) {
                    arrayList.add(field);
                }
                i++;
            } else {
                for (Field field2 : (List) arrayList) {
                    try {
                        int i2 = field2.getInt(null);
                        Intrinsics.checkExpressionValueIsNotNull(field2, "it");
                        sparseArray.put(i2, field2.getName());
                    } catch (Exception e) {
                        Log.e("SPayErrorCode", e.getMessage(), e);
                    }
                }
                return;
            }
        }
    }

    public static String getErrorCodeName(int i) {
        return (String) ((SparseArray) errorCodeMap$delegate.getValue()).get(i);
    }

    public static final /* synthetic */ SparseArray access$initCodeMap$688278bc() {
        SparseArray sparseArray = new SparseArray();
        createErrorCodeMap(sparseArray, SpaySdk.class);
        createErrorCodeMap(sparseArray, PaymentManager.class);
        createErrorCodeMap(sparseArray, CardManager.class);
        return sparseArray;
    }
}
