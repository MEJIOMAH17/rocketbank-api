package ru.rocketbank.r2d2.root.feed.viewholder;

import android.content.Context;
import android.databinding.ObservableField;
import android.view.View;
import kotlin.ExceptionsKt__ExceptionsKt;
import kotlin.Lazy;
import kotlin.TypeCastException;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.PropertyReference1Impl;
import kotlin.jvm.internal.Ref.ObjectRef;
import kotlin.jvm.internal.Reflection;
import kotlin.reflect.KProperty;
import ru.rocketbank.core.model.TransferToSafeAccountOperation;
import ru.rocketbank.core.network.api.OperationApi;
import ru.rocketbank.core.network.model.FeedItem;
import ru.rocketbank.r2d2.Utils;
import ru.rocketbank.r2d2.data.binding.feed.FeedTransferToSafeListener;
import ru.rocketbank.r2d2.data.binding.feed.FeedTransferToSafeListener.DefaultImpls;
import ru.rocketbank.r2d2.data.binding.feed.FeedTransferToSaveData;
import ru.rocketbank.r2d2.databinding.FeedItemTransferToSafeAccountBinding;
import ru.rocketbank.r2d2.widgets.swipe.SwipeDismissTouchListener.DismissCallbacks;
import rx.android.schedulers.AndroidSchedulers;
import rx.functions.Action1;
import rx.schedulers.Schedulers;
import rx.subscriptions.Subscriptions;

/* compiled from: TransferToSafeViewHolder.kt */
public final class TransferToSafeViewHolder extends FeedViewHolder implements FeedTransferToSafeListener {
    static final /* synthetic */ KProperty[] $$delegatedProperties = new KProperty[]{Reflection.property1(new PropertyReference1Impl(Reflection.getOrCreateKotlinClass$4641416c(TransferToSafeViewHolder.class), "api", "getApi()Lru/rocketbank/core/network/api/OperationApi;"))};
    private final Lazy api$delegate = ExceptionsKt__ExceptionsKt.lazy((Function0) TransferToSafeViewHolder$api$2.INSTANCE);
    private final DismissCallbacks callback;
    private final FeedTransferToSaveData data = new FeedTransferToSaveData();
    private String documentUrl;
    private FeedItem feedItem;
    private long id;

    private final OperationApi getApi() {
        return (OperationApi) this.api$delegate.getValue();
    }

    public static final /* synthetic */ FeedItem access$getFeedItem$p(TransferToSafeViewHolder transferToSafeViewHolder) {
        transferToSafeViewHolder = transferToSafeViewHolder.feedItem;
        if (transferToSafeViewHolder == null) {
            Intrinsics.throwUninitializedPropertyAccessException("feedItem");
        }
        return transferToSafeViewHolder;
    }

    public final void confirmClicked(View view) {
        Intrinsics.checkParameterIsNotNull(view, "v");
        DefaultImpls.confirmClicked(this, view);
    }

    public final void handle(View view, Function0<Unit> function0) {
        Intrinsics.checkParameterIsNotNull(view, "view");
        Intrinsics.checkParameterIsNotNull(function0, "func");
        DefaultImpls.handle(this, view, function0);
    }

    public final void infoClicked(View view) {
        Intrinsics.checkParameterIsNotNull(view, "v");
        DefaultImpls.infoClicked(this, view);
    }

    public TransferToSafeViewHolder(FeedItemTransferToSafeAccountBinding feedItemTransferToSafeAccountBinding, DismissCallbacks dismissCallbacks) {
        Intrinsics.checkParameterIsNotNull(feedItemTransferToSafeAccountBinding, "binding");
        Intrinsics.checkParameterIsNotNull(dismissCallbacks, "callback");
        View root = feedItemTransferToSafeAccountBinding.getRoot();
        Intrinsics.checkExpressionValueIsNotNull(root, "binding.root");
        super(root);
        this.callback = dismissCallbacks;
        feedItemTransferToSafeAccountBinding.setListener(this);
        feedItemTransferToSafeAccountBinding.setData(this.data);
    }

    public final void onBind(TransferToSafeAccountOperation transferToSafeAccountOperation, FeedItem feedItem) {
        Intrinsics.checkParameterIsNotNull(transferToSafeAccountOperation, "operation");
        Intrinsics.checkParameterIsNotNull(feedItem, "feedItem");
        ObservableField goButtonText = this.data.getGoButtonText();
        String buttonText = transferToSafeAccountOperation.getButtonText();
        if (buttonText == null) {
            throw new TypeCastException("null cannot be cast to non-null type java.lang.String");
        }
        buttonText = buttonText.toUpperCase();
        Intrinsics.checkExpressionValueIsNotNull(buttonText, "(this as java.lang.String).toUpperCase()");
        goButtonText.set(buttonText);
        goButtonText = this.data.getInfoButtonText();
        buttonText = transferToSafeAccountOperation.getDocumentButtonText();
        if (buttonText == null) {
            throw new TypeCastException("null cannot be cast to non-null type java.lang.String");
        }
        buttonText = buttonText.toUpperCase();
        Intrinsics.checkExpressionValueIsNotNull(buttonText, "(this as java.lang.String).toUpperCase()");
        goButtonText.set(buttonText);
        this.data.getText().set(transferToSafeAccountOperation.getText());
        this.documentUrl = transferToSafeAccountOperation.getDocumentUrl();
        this.id = transferToSafeAccountOperation.getId();
        this.feedItem = feedItem;
    }

    public final void onConfirmClicked() {
        ObjectRef objectRef = new ObjectRef();
        objectRef.element = Subscriptions.empty();
        objectRef.element = getApi().confirmTransferToSaveAccount(this.id).subscribeOn(Schedulers.io()).observeOn(AndroidSchedulers.mainThread()).subscribe((Action1) new TransferToSafeViewHolder$onConfirmClicked$1(this, objectRef), (Action1) new TransferToSafeViewHolder$onConfirmClicked$2(objectRef));
    }

    public final void onInfoClicked() {
        View view = this.itemView;
        Intrinsics.checkExpressionValueIsNotNull(view, "itemView");
        Context context = view.getContext();
        String str = this.documentUrl;
        if (str == null) {
            Intrinsics.throwUninitializedPropertyAccessException("documentUrl");
        }
        Utils.openUrl(context, str);
    }
}
