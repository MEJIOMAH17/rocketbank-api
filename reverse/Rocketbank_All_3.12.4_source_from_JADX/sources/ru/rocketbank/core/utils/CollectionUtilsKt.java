package ru.rocketbank.core.utils;

import android.os.Bundle;
import java.util.HashMap;
import java.util.Map;
import javax.inject.Provider;
import kotlin.collections.AbstractList.Companion;
import kotlin.jvm.internal.Intrinsics;
import ru.rocketbank.core.dagger.UserModule;
import ru.rocketbank.core.model.shop.CartStorage;

/* compiled from: CollectionUtils.kt */
public class CollectionUtilsKt implements Provider<CartStorage> {
    private final UserModule module;

    public static final Bundle toBundle(Map<String, String> map) {
        Intrinsics.checkParameterIsNotNull(map, "map");
        Bundle bundle = new Bundle();
        for (String str : map.keySet()) {
            bundle.putString(str, (String) map.get(str));
        }
        return bundle;
    }

    public static final Map<String, String> fromBundle(Bundle bundle) {
        Intrinsics.checkParameterIsNotNull(bundle, "input");
        Map<String, String> withDefaultMutable = Companion.withDefaultMutable(new HashMap(), CollectionUtilsKt$fromBundle$output$1.INSTANCE);
        for (String str : bundle.keySet()) {
            Intrinsics.checkExpressionValueIsNotNull(str, "key");
            withDefaultMutable.put(str, bundle.getString(str));
        }
        return withDefaultMutable;
    }

    public CollectionUtilsKt(UserModule userModule) {
        this.module = userModule;
    }

    public CartStorage get() {
        return UserModule.provideCartStorage();
    }

    public static CollectionUtilsKt create$7b0798b0(UserModule userModule) {
        return new CollectionUtilsKt(userModule);
    }
}
