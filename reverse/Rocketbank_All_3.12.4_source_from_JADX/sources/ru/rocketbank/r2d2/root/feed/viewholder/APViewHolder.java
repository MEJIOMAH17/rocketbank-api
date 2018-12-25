package ru.rocketbank.r2d2.root.feed.viewholder;

import android.content.Context;
import android.view.View;
import kotlin.ExceptionsKt__ExceptionsKt;
import kotlin.Lazy;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.PropertyReference1Impl;
import kotlin.jvm.internal.Ref.ObjectRef;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KProperty;
import ru.rocketbank.core.model.AndroidPayOperation;
import ru.rocketbank.core.network.model.FeedItem;
import ru.rocketbank.core.user.Authorization;
import ru.rocketbank.r2d2.activities.MainActivity;
import ru.rocketbank.r2d2.data.binding.feed.FeedAPHolderData;
import ru.rocketbank.r2d2.data.binding.feed.FeedOnCLickListener;
import ru.rocketbank.r2d2.databinding.FeedItemApBinding;
import ru.rocketbank.r2d2.widgets.swipe.SwipeDismissTouchListener;
import ru.rocketbank.r2d2.widgets.swipe.SwipeDismissTouchListener.DismissCallbacks;
import rx.android.schedulers.AndroidSchedulers;
import rx.functions.Action1;
import rx.schedulers.Schedulers;
import rx.subscriptions.Subscriptions;

/* compiled from: APViewHolder.kt */
public final class APViewHolder extends FeedViewHolder implements FeedOnCLickListener {
    static final /* synthetic */ KProperty[] $$delegatedProperties = new KProperty[]{Reflection.property1(new PropertyReference1Impl(Reflection.getOrCreateKotlinClass$4641416c(APViewHolder.class), "auth", "getAuth()Lru/rocketbank/core/user/Authorization;"))};
    private final Lazy auth$delegate = ExceptionsKt__ExceptionsKt.lazy((Function0) APViewHolder$auth$2.INSTANCE);
    private final FeedItemApBinding binding;
    private final FeedAPHolderData data = new FeedAPHolderData();
    private final DismissCallbacks swipeCallback;

    private final Authorization getAuth() {
        return (Authorization) this.auth$delegate.getValue();
    }

    public APViewHolder(FeedItemApBinding feedItemApBinding, DismissCallbacks dismissCallbacks) {
        Intrinsics.checkParameterIsNotNull(feedItemApBinding, "binding");
        Intrinsics.checkParameterIsNotNull(dismissCallbacks, "swipeCallback");
        View root = feedItemApBinding.getRoot();
        Intrinsics.checkExpressionValueIsNotNull(root, "binding.root");
        super(root);
        this.binding = feedItemApBinding;
        this.swipeCallback = dismissCallbacks;
        this.binding.setData(this.data);
        this.binding.setListener(this);
    }

    public final void onClick() {
        View view = this.itemView;
        Intrinsics.checkExpressionValueIsNotNull(view, "itemView");
        Context context = view.getContext();
        if (context instanceof MainActivity) {
            ObjectRef objectRef = new ObjectRef();
            objectRef.element = Subscriptions.empty();
            objectRef.element = getAuth().getAccounts().flatMap(APViewHolder$onClick$1.INSTANCE).filter(APViewHolder$onClick$2.INSTANCE).subscribeOn(Schedulers.io()).observeOn(AndroidSchedulers.mainThread()).subscribe((Action1) new APViewHolder$onClick$3(context, objectRef), (Action1) APViewHolder$onClick$4.INSTANCE);
        }
    }

    public final void onBind(AndroidPayOperation androidPayOperation, FeedItem feedItem) {
        Intrinsics.checkParameterIsNotNull(androidPayOperation, "operation");
        Intrinsics.checkParameterIsNotNull(feedItem, "feedItem");
        this.data.buttonText.set(androidPayOperation.getButtonText());
        this.data.text.set(androidPayOperation.getText());
        this.binding.androidPayCard.setOnTouchListener(new SwipeDismissTouchListener(this.binding.androidPayCard, feedItem, this.swipeCallback));
    }
}
