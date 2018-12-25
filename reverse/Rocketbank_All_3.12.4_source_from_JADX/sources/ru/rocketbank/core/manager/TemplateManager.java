package ru.rocketbank.core.manager;

import java.util.concurrent.TimeUnit;
import kotlin.jvm.internal.Intrinsics;
import ru.rocketbank.core.model.TransferTemplates;
import ru.rocketbank.core.network.api.RocketAPI;
import ru.rocketbank.core.utils.rx.RetryWithDelay;
import rx.Observable;
import rx.android.schedulers.AndroidSchedulers;
import rx.schedulers.Schedulers;
import rx.subjects.PublishSubject;
import rx.subjects.SerializedSubject;
import rx.subjects.Subject;

/* compiled from: TemplateManager.kt */
public final class TemplateManager {
    public static final Companion Companion = new Companion();
    private static final String TAG = "TemplateManager";
    private final RocketAPI rocketApi;
    private final Observable<TransferTemplates> transferTemplateObservable;
    private final Subject<TransferTemplates, TransferTemplates> transferTemplateSubject = ((Subject) new SerializedSubject(PublishSubject.create()));
    private TransferTemplates transferTemplates;

    /* compiled from: TemplateManager.kt */
    public static final class Companion {
        private Companion() {
        }
    }

    public TemplateManager(RocketAPI rocketAPI) {
        Intrinsics.checkParameterIsNotNull(rocketAPI, "rocketApi");
        this.rocketApi = rocketAPI;
        rocketAPI = this.transferTemplateSubject.asObservable().subscribeOn(Schedulers.computation()).publish().refCount().onBackpressureDrop();
        Intrinsics.checkExpressionValueIsNotNull(rocketAPI, "transferTemplateSubject.…nt().onBackpressureDrop()");
        this.transferTemplateObservable = rocketAPI;
    }

    public final Observable<TransferTemplates> getTemplates() {
        if (this.transferTemplates != null) {
            Observable<TransferTemplates> observeOn = Observable.merge(Observable.just(this.transferTemplates), this.transferTemplateObservable).observeOn(AndroidSchedulers.mainThread());
            Intrinsics.checkExpressionValueIsNotNull(observeOn, "Observable.merge(Observa…dSchedulers.mainThread())");
            return observeOn;
        }
        observeOn = this.transferTemplateObservable.observeOn(AndroidSchedulers.mainThread());
        Intrinsics.checkExpressionValueIsNotNull(observeOn, "transferTemplateObservab…dSchedulers.mainThread())");
        return observeOn;
    }

    public final void refreshTemplates() {
        this.rocketApi.getRecentTransfers().retryWhen(new RetryWithDelay(10, 15, TimeUnit.SECONDS)).observeOn(AndroidSchedulers.mainThread()).map(TemplateManager$refreshTemplates$1.INSTANCE).subscribe(new TemplateManager$refreshTemplates$2(this));
    }

    public static final /* synthetic */ void access$setTemplates(TemplateManager templateManager, TransferTemplates transferTemplates) {
        templateManager.transferTemplates = transferTemplates;
        templateManager.transferTemplateSubject.onNext(transferTemplates);
    }
}
