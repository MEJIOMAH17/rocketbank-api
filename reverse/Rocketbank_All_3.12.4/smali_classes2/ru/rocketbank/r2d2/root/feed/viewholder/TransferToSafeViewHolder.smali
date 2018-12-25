.class public final Lru/rocketbank/r2d2/root/feed/viewholder/TransferToSafeViewHolder;
.super Lru/rocketbank/r2d2/root/feed/viewholder/FeedViewHolder;
.source "TransferToSafeViewHolder.kt"

# interfaces
.implements Lru/rocketbank/r2d2/data/binding/feed/FeedTransferToSafeListener;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTransferToSafeViewHolder.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TransferToSafeViewHolder.kt\nru/rocketbank/r2d2/root/feed/viewholder/TransferToSafeViewHolder\n*L\n1#1,61:1\n*E\n"
.end annotation


# static fields
.field static final synthetic $$delegatedProperties:[Lkotlin/reflect/KProperty;


# instance fields
.field private final api$delegate:Lkotlin/Lazy;

.field private final callback:Lru/rocketbank/r2d2/widgets/swipe/SwipeDismissTouchListener$DismissCallbacks;

.field private final data:Lru/rocketbank/r2d2/data/binding/feed/FeedTransferToSaveData;

.field private documentUrl:Ljava/lang/String;

.field private feedItem:Lru/rocketbank/core/network/model/FeedItem;

.field private id:J


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x1

    new-array v0, v0, [Lkotlin/reflect/KProperty;

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lru/rocketbank/r2d2/root/feed/viewholder/TransferToSafeViewHolder;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass$4641416c(Ljava/lang/Class;)Landroid/support/v4/content/Loader$OnLoadCompleteListener;

    move-result-object v2

    const-string v3, "api"

    const-string v4, "getApi()Lru/rocketbank/core/network/api/OperationApi;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    check-cast v1, Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sput-object v0, Lru/rocketbank/r2d2/root/feed/viewholder/TransferToSafeViewHolder;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    return-void
.end method

.method public constructor <init>(Lru/rocketbank/r2d2/databinding/FeedItemTransferToSafeAccountBinding;Lru/rocketbank/r2d2/widgets/swipe/SwipeDismissTouchListener$DismissCallbacks;)V
    .locals 2

    const-string v0, "binding"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    invoke-virtual {p1}, Lru/rocketbank/r2d2/databinding/FeedItemTransferToSafeAccountBinding;->getRoot()Landroid/view/View;

    move-result-object v0

    const-string v1, "binding.root"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lru/rocketbank/r2d2/root/feed/viewholder/FeedViewHolder;-><init>(Landroid/view/View;)V

    iput-object p2, p0, Lru/rocketbank/r2d2/root/feed/viewholder/TransferToSafeViewHolder;->callback:Lru/rocketbank/r2d2/widgets/swipe/SwipeDismissTouchListener$DismissCallbacks;

    .line 22
    new-instance p2, Lru/rocketbank/r2d2/data/binding/feed/FeedTransferToSaveData;

    invoke-direct {p2}, Lru/rocketbank/r2d2/data/binding/feed/FeedTransferToSaveData;-><init>()V

    iput-object p2, p0, Lru/rocketbank/r2d2/root/feed/viewholder/TransferToSafeViewHolder;->data:Lru/rocketbank/r2d2/data/binding/feed/FeedTransferToSaveData;

    .line 27
    sget-object p2, Lru/rocketbank/r2d2/root/feed/viewholder/TransferToSafeViewHolder$api$2;->INSTANCE:Lru/rocketbank/r2d2/root/feed/viewholder/TransferToSafeViewHolder$api$2;

    check-cast p2, Lkotlin/jvm/functions/Function0;

    invoke-static {p2}, Lkotlin/ExceptionsKt__ExceptionsKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p2

    iput-object p2, p0, Lru/rocketbank/r2d2/root/feed/viewholder/TransferToSafeViewHolder;->api$delegate:Lkotlin/Lazy;

    .line 30
    move-object p2, p0

    check-cast p2, Lru/rocketbank/r2d2/data/binding/feed/FeedTransferToSafeListener;

    invoke-virtual {p1, p2}, Lru/rocketbank/r2d2/databinding/FeedItemTransferToSafeAccountBinding;->setListener(Lru/rocketbank/r2d2/data/binding/feed/FeedTransferToSafeListener;)V

    .line 31
    iget-object p2, p0, Lru/rocketbank/r2d2/root/feed/viewholder/TransferToSafeViewHolder;->data:Lru/rocketbank/r2d2/data/binding/feed/FeedTransferToSaveData;

    invoke-virtual {p1, p2}, Lru/rocketbank/r2d2/databinding/FeedItemTransferToSafeAccountBinding;->setData(Lru/rocketbank/r2d2/data/binding/feed/FeedTransferToSaveData;)V

    return-void
.end method

.method public static final synthetic access$getCallback$p(Lru/rocketbank/r2d2/root/feed/viewholder/TransferToSafeViewHolder;)Lru/rocketbank/r2d2/widgets/swipe/SwipeDismissTouchListener$DismissCallbacks;
    .locals 0

    .line 18
    iget-object p0, p0, Lru/rocketbank/r2d2/root/feed/viewholder/TransferToSafeViewHolder;->callback:Lru/rocketbank/r2d2/widgets/swipe/SwipeDismissTouchListener$DismissCallbacks;

    return-object p0
.end method

.method public static final synthetic access$getFeedItem$p(Lru/rocketbank/r2d2/root/feed/viewholder/TransferToSafeViewHolder;)Lru/rocketbank/core/network/model/FeedItem;
    .locals 1

    .line 18
    iget-object p0, p0, Lru/rocketbank/r2d2/root/feed/viewholder/TransferToSafeViewHolder;->feedItem:Lru/rocketbank/core/network/model/FeedItem;

    if-nez p0, :cond_0

    const-string v0, "feedItem"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    return-object p0
.end method

.method public static final synthetic access$setFeedItem$p(Lru/rocketbank/r2d2/root/feed/viewholder/TransferToSafeViewHolder;Lru/rocketbank/core/network/model/FeedItem;)V
    .locals 0

    .line 18
    iput-object p1, p0, Lru/rocketbank/r2d2/root/feed/viewholder/TransferToSafeViewHolder;->feedItem:Lru/rocketbank/core/network/model/FeedItem;

    return-void
.end method

.method private final getApi()Lru/rocketbank/core/network/api/OperationApi;
    .locals 1

    iget-object v0, p0, Lru/rocketbank/r2d2/root/feed/viewholder/TransferToSafeViewHolder;->api$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lru/rocketbank/core/network/api/OperationApi;

    return-object v0
.end method


# virtual methods
.method public final confirmClicked(Landroid/view/View;)V
    .locals 1

    const-string v0, "v"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    invoke-static {p0, p1}, Lru/rocketbank/r2d2/data/binding/feed/FeedTransferToSafeListener$DefaultImpls;->confirmClicked(Lru/rocketbank/r2d2/data/binding/feed/FeedTransferToSafeListener;Landroid/view/View;)V

    return-void
.end method

.method public final handle(Landroid/view/View;Lkotlin/jvm/functions/Function0;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "func"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    invoke-static {p0, p1, p2}, Lru/rocketbank/r2d2/data/binding/feed/FeedTransferToSafeListener$DefaultImpls;->handle(Lru/rocketbank/r2d2/data/binding/feed/FeedTransferToSafeListener;Landroid/view/View;Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method public final infoClicked(Landroid/view/View;)V
    .locals 1

    const-string v0, "v"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    invoke-static {p0, p1}, Lru/rocketbank/r2d2/data/binding/feed/FeedTransferToSafeListener$DefaultImpls;->infoClicked(Lru/rocketbank/r2d2/data/binding/feed/FeedTransferToSafeListener;Landroid/view/View;)V

    return-void
.end method

.method public final onBind(Lru/rocketbank/core/model/TransferToSafeAccountOperation;Lru/rocketbank/core/network/model/FeedItem;)V
    .locals 3

    const-string v0, "operation"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "feedItem"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    iget-object v0, p0, Lru/rocketbank/r2d2/root/feed/viewholder/TransferToSafeViewHolder;->data:Lru/rocketbank/r2d2/data/binding/feed/FeedTransferToSaveData;

    invoke-virtual {v0}, Lru/rocketbank/r2d2/data/binding/feed/FeedTransferToSaveData;->getGoButtonText()Landroid/databinding/ObservableField;

    move-result-object v0

    invoke-virtual {p1}, Lru/rocketbank/core/model/TransferToSafeAccountOperation;->getButtonText()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type java.lang.String"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_0
    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "(this as java.lang.String).toUpperCase()"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/databinding/ObservableField;->set(Ljava/lang/Object;)V

    .line 36
    iget-object v0, p0, Lru/rocketbank/r2d2/root/feed/viewholder/TransferToSafeViewHolder;->data:Lru/rocketbank/r2d2/data/binding/feed/FeedTransferToSaveData;

    invoke-virtual {v0}, Lru/rocketbank/r2d2/data/binding/feed/FeedTransferToSaveData;->getInfoButtonText()Landroid/databinding/ObservableField;

    move-result-object v0

    invoke-virtual {p1}, Lru/rocketbank/core/model/TransferToSafeAccountOperation;->getDocumentButtonText()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type java.lang.String"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "(this as java.lang.String).toUpperCase()"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/databinding/ObservableField;->set(Ljava/lang/Object;)V

    .line 37
    iget-object v0, p0, Lru/rocketbank/r2d2/root/feed/viewholder/TransferToSafeViewHolder;->data:Lru/rocketbank/r2d2/data/binding/feed/FeedTransferToSaveData;

    invoke-virtual {v0}, Lru/rocketbank/r2d2/data/binding/feed/FeedTransferToSaveData;->getText()Landroid/databinding/ObservableField;

    move-result-object v0

    invoke-virtual {p1}, Lru/rocketbank/core/model/TransferToSafeAccountOperation;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/databinding/ObservableField;->set(Ljava/lang/Object;)V

    .line 39
    invoke-virtual {p1}, Lru/rocketbank/core/model/TransferToSafeAccountOperation;->getDocumentUrl()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lru/rocketbank/r2d2/root/feed/viewholder/TransferToSafeViewHolder;->documentUrl:Ljava/lang/String;

    .line 40
    invoke-virtual {p1}, Lru/rocketbank/core/model/TransferToSafeAccountOperation;->getId()J

    move-result-wide v0

    iput-wide v0, p0, Lru/rocketbank/r2d2/root/feed/viewholder/TransferToSafeViewHolder;->id:J

    .line 41
    iput-object p2, p0, Lru/rocketbank/r2d2/root/feed/viewholder/TransferToSafeViewHolder;->feedItem:Lru/rocketbank/core/network/model/FeedItem;

    return-void
.end method

.method public final onConfirmClicked()V
    .locals 4

    .line 45
    new-instance v0, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v0}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    invoke-static {}, Lrx/subscriptions/Subscriptions;->empty()Lrx/Subscription;

    move-result-object v1

    iput-object v1, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 46
    invoke-direct {p0}, Lru/rocketbank/r2d2/root/feed/viewholder/TransferToSafeViewHolder;->getApi()Lru/rocketbank/core/network/api/OperationApi;

    move-result-object v1

    iget-wide v2, p0, Lru/rocketbank/r2d2/root/feed/viewholder/TransferToSafeViewHolder;->id:J

    invoke-interface {v1, v2, v3}, Lru/rocketbank/core/network/api/OperationApi;->confirmTransferToSaveAccount(J)Lrx/Observable;

    move-result-object v1

    .line 47
    invoke-static {}, Lrx/schedulers/Schedulers;->io()Lrx/Scheduler;

    move-result-object v2

    invoke-virtual {v1, v2}, Lrx/Observable;->subscribeOn(Lrx/Scheduler;)Lrx/Observable;

    move-result-object v1

    .line 48
    invoke-static {}, Lrx/android/schedulers/AndroidSchedulers;->mainThread()Lrx/Scheduler;

    move-result-object v2

    invoke-virtual {v1, v2}, Lrx/Observable;->observeOn(Lrx/Scheduler;)Lrx/Observable;

    move-result-object v1

    .line 49
    new-instance v2, Lru/rocketbank/r2d2/root/feed/viewholder/TransferToSafeViewHolder$onConfirmClicked$1;

    invoke-direct {v2, p0, v0}, Lru/rocketbank/r2d2/root/feed/viewholder/TransferToSafeViewHolder$onConfirmClicked$1;-><init>(Lru/rocketbank/r2d2/root/feed/viewholder/TransferToSafeViewHolder;Lkotlin/jvm/internal/Ref$ObjectRef;)V

    check-cast v2, Lrx/functions/Action1;

    .line 52
    new-instance v3, Lru/rocketbank/r2d2/root/feed/viewholder/TransferToSafeViewHolder$onConfirmClicked$2;

    invoke-direct {v3, v0}, Lru/rocketbank/r2d2/root/feed/viewholder/TransferToSafeViewHolder$onConfirmClicked$2;-><init>(Lkotlin/jvm/internal/Ref$ObjectRef;)V

    check-cast v3, Lrx/functions/Action1;

    .line 49
    invoke-virtual {v1, v2, v3}, Lrx/Observable;->subscribe(Lrx/functions/Action1;Lrx/functions/Action1;)Lrx/Subscription;

    move-result-object v1

    iput-object v1, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    return-void
.end method

.method public final onInfoClicked()V
    .locals 3

    .line 58
    iget-object v0, p0, Lru/rocketbank/r2d2/root/feed/viewholder/TransferToSafeViewHolder;->itemView:Landroid/view/View;

    const-string v1, "itemView"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lru/rocketbank/r2d2/root/feed/viewholder/TransferToSafeViewHolder;->documentUrl:Ljava/lang/String;

    if-nez v1, :cond_0

    const-string v2, "documentUrl"

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    :cond_0
    invoke-static {v0, v1}, Lru/rocketbank/r2d2/Utils;->openUrl(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method
