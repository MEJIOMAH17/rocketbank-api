package ru.rocketbank.r2d2.fragments.transfers;

import java.util.HashMap;
import java.util.Map;
import kotlin.jvm.functions.Function1;
import ru.rocketbank.r2d2.utils.ViewModelObservable.ViewField;

/* compiled from: TransferBankFragment.kt */
public interface ToMap {
    public static final Companion Companion = Companion.$$INSTANCE;

    /* compiled from: TransferBankFragment.kt */
    public static final class Companion {
        static final /* synthetic */ Companion $$INSTANCE = new Companion();
        private static final Function1<HashMap<String, ViewField>, Map<String, String>> convert = ToMap$Companion$convert$1.INSTANCE;

        private Companion() {
        }

        public final Function1<HashMap<String, ViewField>, Map<String, String>> getConvert() {
            return convert;
        }
    }

    /* compiled from: TransferBankFragment.kt */
    public static final class DefaultImpls {
        public static Map<String, String> toMap(ToMap toMap) {
            return (Map) ToMap.Companion.getConvert().invoke(toMap.getFields());
        }
    }

    HashMap<String, ViewField> getFields();

    Map<String, String> toMap();
}
