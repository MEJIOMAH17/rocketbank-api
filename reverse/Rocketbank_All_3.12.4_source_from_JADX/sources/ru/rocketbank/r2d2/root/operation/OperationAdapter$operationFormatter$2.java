package ru.rocketbank.r2d2.root.operation;

import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;
import ru.rocketbank.core.dagger.component.RocketComponent;
import ru.rocketbank.core.utils.MoneyFormatter;
import ru.rocketbank.r2d2.RocketApplication;

/* compiled from: OperationAdapter.kt */
final class OperationAdapter$operationFormatter$2 extends Lambda implements Function0<MoneyFormatter> {
    public static final OperationAdapter$operationFormatter$2 INSTANCE = new OperationAdapter$operationFormatter$2();

    OperationAdapter$operationFormatter$2() {
        super(0);
    }

    public final MoneyFormatter invoke() {
        RocketComponent injector = RocketApplication.Companion.getInjector();
        return new MoneyFormatter(injector.getApplicationContext(), injector.getAuthorization(), injector.getCurrencyManager());
    }
}
