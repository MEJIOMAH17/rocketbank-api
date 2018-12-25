package kotlin.text;

import java.util.Map;
import kotlin.ExceptionsKt__ExceptionsKt;
import kotlin.Lazy;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.PropertyReference1Impl;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KProperty;

/* compiled from: CharCategory.kt */
public enum CharCategory {
    ;
    
    public static final Companion Companion = null;
    private static final Lazy categoryMap$delegate = null;
    private final String code;
    private final int value;

    /* compiled from: CharCategory.kt */
    public static final class Companion {
        static final /* synthetic */ KProperty[] $$delegatedProperties = null;

        static {
            $$delegatedProperties = new KProperty[]{Reflection.property1(new PropertyReference1Impl(Reflection.getOrCreateKotlinClass$4641416c(Companion.class), "categoryMap", "getCategoryMap()Ljava/util/Map;"))};
        }

        private final Map<Integer, CharCategory> getCategoryMap() {
            return (Map) CharCategory.categoryMap$delegate.getValue();
        }

        private Companion() {
        }

        public final CharCategory valueOf(int i) {
            CharCategory charCategory = (CharCategory) getCategoryMap().get(Integer.valueOf(i));
            if (charCategory != null) {
                return charCategory;
            }
            StringBuilder stringBuilder = new StringBuilder("Category #");
            stringBuilder.append(i);
            stringBuilder.append(" is not defined.");
            throw new IllegalArgumentException(stringBuilder.toString());
        }
    }

    protected CharCategory(int i, String str) {
        Intrinsics.checkParameterIsNotNull(str, "code");
        this.value = i;
        this.code = str;
    }

    public final String getCode() {
        return this.code;
    }

    public final int getValue() {
        return this.value;
    }

    static {
        Companion = new Companion();
        categoryMap$delegate = ExceptionsKt__ExceptionsKt.lazy(CharCategory$Companion$categoryMap$2.INSTANCE);
    }

    public final boolean contains(char c) {
        return Character.getType(c) == this.value;
    }
}
