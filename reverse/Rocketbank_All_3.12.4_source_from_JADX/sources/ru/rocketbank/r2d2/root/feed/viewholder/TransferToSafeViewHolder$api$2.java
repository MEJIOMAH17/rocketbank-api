package ru.rocketbank.r2d2.root.feed.viewholder;

import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;
import ru.rocketbank.core.network.api.OperationApi;
import ru.rocketbank.r2d2.RocketApplication;

/* compiled from: TransferToSafeViewHolder.kt */
final class TransferToSafeViewHolder$api$2 extends Lambda implements Function0<OperationApi> {
    public static final TransferToSafeViewHolder$api$2 INSTANCE = new TransferToSafeViewHolder$api$2();

    TransferToSafeViewHolder$api$2() {
        super(0);
    }

    public final OperationApi invoke() {
        return RocketApplication.Companion.getInjector().getOperationApi();
    }
}
