package ru.rocketbank.core.pay.root;

import com.scottyab.rootbeer.RootBeer;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;
import ru.rocketbank.core.BaseRocketApplication;

/* compiled from: Root.kt */
final class Root$rootChecker$2 extends Lambda implements Function0<RootBeer> {
    public static final Root$rootChecker$2 INSTANCE = new Root$rootChecker$2();

    Root$rootChecker$2() {
        super(0);
    }

    public final RootBeer invoke() {
        return BaseRocketApplication.getRocketComponent().getRootChecker();
    }
}
