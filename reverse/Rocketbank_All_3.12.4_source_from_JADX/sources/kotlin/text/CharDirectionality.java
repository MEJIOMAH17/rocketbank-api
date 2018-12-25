package kotlin.text;

import java.util.Map;
import kotlin.ExceptionsKt__ExceptionsKt;
import kotlin.Lazy;
import kotlin.jvm.internal.PropertyReference1Impl;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KProperty;

/* compiled from: CharDirectionality.kt */
public enum CharDirectionality {
    ;
    
    public static final Companion Companion = null;
    private static final Lazy directionalityMap$delegate = null;
    private final int value;

    /* compiled from: CharDirectionality.kt */
    public static final class Companion {
        static final /* synthetic */ KProperty[] $$delegatedProperties = null;

        static {
            $$delegatedProperties = new KProperty[]{Reflection.property1(new PropertyReference1Impl(Reflection.getOrCreateKotlinClass$4641416c(Companion.class), "directionalityMap", "getDirectionalityMap()Ljava/util/Map;"))};
        }

        private final Map<Integer, CharDirectionality> getDirectionalityMap() {
            return (Map) CharDirectionality.directionalityMap$delegate.getValue();
        }

        private Companion() {
        }

        public final CharDirectionality valueOf(int i) {
            CharDirectionality charDirectionality = (CharDirectionality) getDirectionalityMap().get(Integer.valueOf(i));
            if (charDirectionality != null) {
                return charDirectionality;
            }
            StringBuilder stringBuilder = new StringBuilder("Directionality #");
            stringBuilder.append(i);
            stringBuilder.append(" is not defined.");
            throw new IllegalArgumentException(stringBuilder.toString());
        }
    }

    protected CharDirectionality(int i) {
        this.value = i;
    }

    public final int getValue() {
        return this.value;
    }

    static {
        Companion = new Companion();
        directionalityMap$delegate = ExceptionsKt__ExceptionsKt.lazy(CharDirectionality$Companion$directionalityMap$2.INSTANCE);
    }
}
