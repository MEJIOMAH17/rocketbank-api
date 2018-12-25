package ru.rocketbank.r2d2.root.devidepayment.ap;

import kotlin.jvm.internal.Intrinsics;
import ru.rocketbank.core.network.api.AndroidPayApi;
import rx.android.schedulers.AndroidSchedulers;
import rx.functions.Action1;
import rx.schedulers.Schedulers;

/* compiled from: APManageCardPresenter.kt */
public final class APManageCardPresenter extends APAbstractPresenter {
    private String tur;
    private APManageCardView view;

    public final void onAttach(APManageCardView aPManageCardView) {
        Intrinsics.checkParameterIsNotNull(aPManageCardView, "view");
        this.view = aPManageCardView;
    }

    public final void onDetach() {
        this.view = null;
    }

    public final void onCreate(String str) {
        Intrinsics.checkParameterIsNotNull(str, "tur");
        this.tur = str;
    }

    public final void deleteTur() {
        APManageCardView aPManageCardView = this.view;
        if (aPManageCardView != null) {
            aPManageCardView.showProgress();
        }
        AndroidPayApi androidPayApi = getAndroidPayApi();
        String str = this.tur;
        if (str == null) {
            Intrinsics.throwUninitializedPropertyAccessException("tur");
        }
        androidPayApi.deactivate(str).subscribeOn(Schedulers.io()).observeOn(AndroidSchedulers.mainThread()).subscribe((Action1) new APManageCardPresenter$deleteTur$1(this), (Action1) new APManageCardPresenter$deleteTur$2(this));
    }
}
