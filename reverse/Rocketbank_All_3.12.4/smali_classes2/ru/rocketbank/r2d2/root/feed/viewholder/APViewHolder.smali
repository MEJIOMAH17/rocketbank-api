.class public final Lru/rocketbank/r2d2/root/feed/viewholder/APViewHolder;
.super Lru/rocketbank/r2d2/root/feed/viewholder/FeedViewHolder;
.source "APViewHolder.kt"

# interfaces
.implements Lru/rocketbank/r2d2/data/binding/feed/FeedOnCLickListener;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAPViewHolder.kt\nKotlin\n*S Kotlin\n*F\n+ 1 APViewHolder.kt\nru/rocketbank/r2d2/root/feed/viewholder/APViewHolder\n*L\n1#1,58:1\n*E\n"
.end annotation


# static fields
.field static final synthetic $$delegatedProperties:[Lkotlin/reflect/KProperty;


# instance fields
.field private final auth$delegate:Lkotlin/Lazy;

.field private final binding:Lru/rocketbank/r2d2/databinding/FeedItemApBinding;

.field private final data:Lru/rocketbank/r2d2/data/binding/feed/FeedAPHolderData;

.field private final swipeCallback:Lru/rocketbank/r2d2/widgets/swipe/SwipeDismissTouchListener$DismissCallbacks;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x1

    new-array v0, v0, [Lkotlin/reflect/KProperty;

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lru/rocketbank/r2d2/root/feed/viewholder/APViewHolder;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass$4641416c(Ljava/lang/Class;)Landroid/support/v4/content/Loader$OnLoadCompleteListener;

    move-result-object v2

    const-string v3, "auth"

    const-string v4, "getAuth()Lru/rocketbank/core/user/Authorization;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    check-cast v1, Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sput-object v0, Lru/rocketbank/r2d2/root/feed/viewholder/APViewHolder;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    return-void
.end method

.method public constructor <init>(Lru/rocketbank/r2d2/databinding/FeedItemApBinding;Lru/rocketbank/r2d2/widgets/swipe/SwipeDismissTouchListener$DismissCallbacks;)V
    .locals 2

    const-string v0, "binding"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "swipeCallback"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    invoke-virtual {p1}, Lru/rocketbank/r2d2/databinding/FeedItemApBinding;->getRoot()Landroid/view/View;

    move-result-object v0

    const-string v1, "binding.root"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lru/rocketbank/r2d2/root/feed/viewholder/FeedViewHolder;-><init>(Landroid/view/View;)V

    iput-object p1, p0, Lru/rocketbank/r2d2/root/feed/viewholder/APViewHolder;->binding:Lru/rocketbank/r2d2/databinding/FeedItemApBinding;

    iput-object p2, p0, Lru/rocketbank/r2d2/root/feed/viewholder/APViewHolder;->swipeCallback:Lru/rocketbank/r2d2/widgets/swipe/SwipeDismissTouchListener$DismissCallbacks;

    .line 24
    new-instance p1, Lru/rocketbank/r2d2/data/binding/feed/FeedAPHolderData;

    invoke-direct {p1}, Lru/rocketbank/r2d2/data/binding/feed/FeedAPHolderData;-><init>()V

    iput-object p1, p0, Lru/rocketbank/r2d2/root/feed/viewholder/APViewHolder;->data:Lru/rocketbank/r2d2/data/binding/feed/FeedAPHolderData;

    .line 25
    sget-object p1, Lru/rocketbank/r2d2/root/feed/viewholder/APViewHolder$auth$2;->INSTANCE:Lru/rocketbank/r2d2/root/feed/viewholder/APViewHolder$auth$2;

    check-cast p1, Lkotlin/jvm/functions/Function0;

    invoke-static {p1}, Lkotlin/ExceptionsKt__ExceptionsKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lru/rocketbank/r2d2/root/feed/viewholder/APViewHolder;->auth$delegate:Lkotlin/Lazy;

    .line 28
    iget-object p1, p0, Lru/rocketbank/r2d2/root/feed/viewholder/APViewHolder;->binding:Lru/rocketbank/r2d2/databinding/FeedItemApBinding;

    iget-object p2, p0, Lru/rocketbank/r2d2/root/feed/viewholder/APViewHolder;->data:Lru/rocketbank/r2d2/data/binding/feed/FeedAPHolderData;

    invoke-virtual {p1, p2}, Lru/rocketbank/r2d2/databinding/FeedItemApBinding;->setData(Lru/rocketbank/r2d2/data/binding/feed/FeedAPHolderData;)V

    .line 29
    iget-object p1, p0, Lru/rocketbank/r2d2/root/feed/viewholder/APViewHolder;->binding:Lru/rocketbank/r2d2/databinding/FeedItemApBinding;

    move-object p2, p0

    check-cast p2, Lru/rocketbank/r2d2/data/binding/feed/FeedOnCLickListener;

    invoke-virtual {p1, p2}, Lru/rocketbank/r2d2/databinding/FeedItemApBinding;->setListener(Lru/rocketbank/r2d2/data/binding/feed/FeedOnCLickListener;)V

    return-void
.end method

.method private final getAuth()Lru/rocketbank/core/user/Authorization;
    .locals 1

    iget-object v0, p0, Lru/rocketbank/r2d2/root/feed/viewholder/APViewHolder;->auth$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lru/rocketbank/core/user/Authorization;

    return-object v0
.end method


# virtual methods
.method public final onBind(Lru/rocketbank/core/model/AndroidPayOperation;Lru/rocketbank/core/network/model/FeedItem;)V
    .locals 3

    const-string v0, "operation"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "feedItem"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 53
    iget-object v0, p0, Lru/rocketbank/r2d2/root/feed/viewholder/APViewHolder;->data:Lru/rocketbank/r2d2/data/binding/feed/FeedAPHolderData;

    iget-object v0, v0, Lru/rocketbank/r2d2/data/binding/feed/FeedAPHolderData;->buttonText:Landroid/databinding/ObservableField;

    invoke-virtual {p1}, Lru/rocketbank/core/model/AndroidPayOperation;->getButtonText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/databinding/ObservableField;->set(Ljava/lang/Object;)V

    .line 54
    iget-object v0, p0, Lru/rocketbank/r2d2/root/feed/viewholder/APViewHolder;->data:Lru/rocketbank/r2d2/data/binding/feed/FeedAPHolderData;

    iget-object v0, v0, Lru/rocketbank/r2d2/data/binding/feed/FeedAPHolderData;->text:Landroid/databinding/ObservableField;

    invoke-virtual {p1}, Lru/rocketbank/core/model/AndroidPayOperation;->getText()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/databinding/ObservableField;->set(Ljava/lang/Object;)V

    .line 55
    iget-object p1, p0, Lru/rocketbank/r2d2/root/feed/viewholder/APViewHolder;->binding:Lru/rocketbank/r2d2/databinding/FeedItemApBinding;

    iget-object p1, p1, Lru/rocketbank/r2d2/databinding/FeedItemApBinding;->androidPayCard:Landroid/support/v7/widget/CardView;

    new-instance v0, Lru/rocketbank/r2d2/widgets/swipe/SwipeDismissTouchListener;

    iget-object v1, p0, Lru/rocketbank/r2d2/root/feed/viewholder/APViewHolder;->binding:Lru/rocketbank/r2d2/databinding/FeedItemApBinding;

    iget-object v1, v1, Lru/rocketbank/r2d2/databinding/FeedItemApBinding;->androidPayCard:Landroid/support/v7/widget/CardView;

    check-cast v1, Landroid/view/View;

    iget-object v2, p0, Lru/rocketbank/r2d2/root/feed/viewholder/APViewHolder;->swipeCallback:Lru/rocketbank/r2d2/widgets/swipe/SwipeDismissTouchListener$DismissCallbacks;

    invoke-direct {v0, v1, p2, v2}, Lru/rocketbank/r2d2/widgets/swipe/SwipeDismissTouchListener;-><init>(Landroid/view/View;Ljava/lang/Object;Lru/rocketbank/r2d2/widgets/swipe/SwipeDismissTouchListener$DismissCallbacks;)V

    check-cast v0, Landroid/view/View$OnTouchListener;

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/CardView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method public final onClick()V
    .locals 4

    .line 33
    iget-object v0, p0, Lru/rocketbank/r2d2/root/feed/viewholder/APViewHolder;->itemView:Landroid/view/View;

    const-string v1, "itemView"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 34
    instance-of v1, v0, Lru/rocketbank/r2d2/activities/MainActivity;

    if-eqz v1, :cond_0

    .line 35
    new-instance v1, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v1}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    invoke-static {}, Lrx/subscriptions/Subscriptions;->empty()Lrx/Subscription;

    move-result-object v2

    iput-object v2, v1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 36
    invoke-direct {p0}, Lru/rocketbank/r2d2/root/feed/viewholder/APViewHolder;->getAuth()Lru/rocketbank/core/user/Authorization;

    move-result-object v2

    invoke-virtual {v2}, Lru/rocketbank/core/user/Authorization;->getAccounts()Lrx/Observable;

    move-result-object v2

    sget-object v3, Lru/rocketbank/r2d2/root/feed/viewholder/APViewHolder$onClick$1;->INSTANCE:Lru/rocketbank/r2d2/root/feed/viewholder/APViewHolder$onClick$1;

    check-cast v3, Lrx/functions/Func1;

    invoke-virtual {v2, v3}, Lrx/Observable;->flatMap(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v2

    .line 37
    sget-object v3, Lru/rocketbank/r2d2/root/feed/viewholder/APViewHolder$onClick$2;->INSTANCE:Lru/rocketbank/r2d2/root/feed/viewholder/APViewHolder$onClick$2;

    check-cast v3, Lrx/functions/Func1;

    invoke-virtual {v2, v3}, Lrx/Observable;->filter(Lrx/functions/Func1;)Lrx/Observable;

    move-result-object v2

    .line 38
    invoke-static {}, Lrx/schedulers/Schedulers;->io()Lrx/Scheduler;

    move-result-object v3

    invoke-virtual {v2, v3}, Lrx/Observable;->subscribeOn(Lrx/Scheduler;)Lrx/Observable;

    move-result-object v2

    .line 39
    invoke-static {}, Lrx/android/schedulers/AndroidSchedulers;->mainThread()Lrx/Scheduler;

    move-result-object v3

    invoke-virtual {v2, v3}, Lrx/Observable;->observeOn(Lrx/Scheduler;)Lrx/Observable;

    move-result-object v2

    .line 40
    new-instance v3, Lru/rocketbank/r2d2/root/feed/viewholder/APViewHolder$onClick$3;

    invoke-direct {v3, v0, v1}, Lru/rocketbank/r2d2/root/feed/viewholder/APViewHolder$onClick$3;-><init>(Landroid/content/Context;Lkotlin/jvm/internal/Ref$ObjectRef;)V

    check-cast v3, Lrx/functions/Action1;

    .line 45
    sget-object v0, Lru/rocketbank/r2d2/root/feed/viewholder/APViewHolder$onClick$4;->INSTANCE:Lru/rocketbank/r2d2/root/feed/viewholder/APViewHolder$onClick$4;

    check-cast v0, Lrx/functions/Action1;

    .line 40
    invoke-virtual {v2, v3, v0}, Lrx/Observable;->subscribe(Lrx/functions/Action1;Lrx/functions/Action1;)Lrx/Subscription;

    move-result-object v0

    iput-object v0, v1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    :cond_0
    return-void
.end method
