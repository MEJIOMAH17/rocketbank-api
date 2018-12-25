package ru.rocketbank.r2d2.fragments.transfers;

import kotlin.Unit;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import ru.rocketbank.core.model.DepositModel;
import ru.rocketbank.core.model.facade.Account;
import ru.rocketbank.core.network.api.AccountApi;
import ru.rocketbank.core.network.api.DepositApi;
import ru.rocketbank.core.network.model.MoveMoneyBody;
import ru.rocketbank.core.network.model.RefillCardResponse;
import ru.rocketbank.core.user.Authorization;
import ru.rocketbank.core.utils.presenter.RxPresenter;
import ru.rocketbank.r2d2.RocketApplication;
import ru.rocketbank.r2d2.activities.safe.TransferActivity;

/* compiled from: SafeAndCardTransferPresenter.kt */
public final class SafeAndCardTransferPresenter extends RxPresenter<TransferActivity> {
    public static final Companion Companion = new Companion();
    public static final int INFO_INSTANCE = 101;
    public static final int SEND_INSTANCE = 100;
    private final AccountApi accountApi = RocketApplication.Companion.getInjector().getAccountApi();
    private final Authorization authorization = RocketApplication.Companion.getInjector().getAuthorization();
    private final DepositApi depositApi = RocketApplication.Companion.getInjector().getDepositApi();

    /* compiled from: SafeAndCardTransferPresenter.kt */
    public static final class Companion {
        private Companion() {
        }
    }

    public static /* bridge */ /* synthetic */ void sendMoney$default(SafeAndCardTransferPresenter safeAndCardTransferPresenter, MoveMoneyBody moveMoneyBody, Function2 function2, Function2 function22, Function2 function23, int i, Object obj) {
        if ((i & 8) != 0) {
            function23 = null;
        }
        safeAndCardTransferPresenter.sendMoney(moveMoneyBody, function2, function22, function23);
    }

    public final void sendMoney(MoveMoneyBody moveMoneyBody, Function2<? super TransferActivity, ? super RefillCardResponse, Unit> function2, Function2<? super TransferActivity, ? super Throwable, Unit> function22, Function2<? super TransferActivity, ? super RefillCardResponse, Unit> function23) {
        Intrinsics.checkParameterIsNotNull(moveMoneyBody, "moveMoneyBody");
        String to = moveMoneyBody.getTo();
        if (to != null) {
            Object productImmediate = this.authorization.getProductImmediate(to);
            if (productImmediate != null) {
                if (productImmediate instanceof DepositModel) {
                    singleCallOrReplay(100, new SafeAndCardTransferPresenter$sendMoney$$inlined$let$lambda$1(this, moveMoneyBody, function2, function22, function23), function2, function22, function23);
                }
                if (productImmediate instanceof Account) {
                    singleCallOrReplay(100, new SafeAndCardTransferPresenter$sendMoney$$inlined$let$lambda$2(this, moveMoneyBody, function2, function22, function23), function2, function22, function23);
                }
            }
        }
    }

    public final void sendMoneyDescription(MoveMoneyBody moveMoneyBody, Function2<? super TransferActivity, ? super RefillCardResponse, Unit> function2, Function2<? super TransferActivity, ? super Throwable, Unit> function22) {
        Intrinsics.checkParameterIsNotNull(moveMoneyBody, "moveMoneyBody");
        String to = moveMoneyBody.getTo();
        if (to != null) {
            Object productImmediate = this.authorization.getProductImmediate(to);
            if (productImmediate != null) {
                if (productImmediate instanceof DepositModel) {
                    simpleCall(101, new C1787xbeb91c9b(productImmediate, this, moveMoneyBody, function2, function22), function2, function22);
                }
                if (productImmediate instanceof Account) {
                    simpleCall(101, new C1788xbeb91c9c(this, moveMoneyBody, function2, function22), function2, function22);
                }
            }
        }
    }

    public final void removeSendMoney() {
        removeInstance(100);
    }
}
