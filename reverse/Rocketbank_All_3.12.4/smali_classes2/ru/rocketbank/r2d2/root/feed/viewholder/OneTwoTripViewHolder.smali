.class public final Lru/rocketbank/r2d2/root/feed/viewholder/OneTwoTripViewHolder;
.super Lru/rocketbank/r2d2/root/feed/viewholder/FeedViewHolder;
.source "OneTwoTripViewHolder.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nOneTwoTripViewHolder.kt\nKotlin\n*S Kotlin\n*F\n+ 1 OneTwoTripViewHolder.kt\nru/rocketbank/r2d2/root/feed/viewholder/OneTwoTripViewHolder\n*L\n1#1,29:1\n*E\n"
.end annotation


# instance fields
.field private final binding:Lru/rocketbank/r2d2/databinding/FeedItemOnetwotripBinding;

.field private final data:Lru/rocketbank/r2d2/data/binding/feed/FeedOnetwotripHolderData;


# direct methods
.method public constructor <init>(Lru/rocketbank/r2d2/databinding/FeedItemOnetwotripBinding;)V
    .locals 2

    const-string v0, "binding"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    invoke-virtual {p1}, Lru/rocketbank/r2d2/databinding/FeedItemOnetwotripBinding;->getRoot()Landroid/view/View;

    move-result-object v0

    const-string v1, "binding.root"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lru/rocketbank/r2d2/root/feed/viewholder/FeedViewHolder;-><init>(Landroid/view/View;)V

    iput-object p1, p0, Lru/rocketbank/r2d2/root/feed/viewholder/OneTwoTripViewHolder;->binding:Lru/rocketbank/r2d2/databinding/FeedItemOnetwotripBinding;

    .line 12
    new-instance p1, Lru/rocketbank/r2d2/data/binding/feed/FeedOnetwotripHolderData;

    invoke-direct {p1}, Lru/rocketbank/r2d2/data/binding/feed/FeedOnetwotripHolderData;-><init>()V

    iput-object p1, p0, Lru/rocketbank/r2d2/root/feed/viewholder/OneTwoTripViewHolder;->data:Lru/rocketbank/r2d2/data/binding/feed/FeedOnetwotripHolderData;

    .line 15
    iget-object p1, p0, Lru/rocketbank/r2d2/root/feed/viewholder/OneTwoTripViewHolder;->binding:Lru/rocketbank/r2d2/databinding/FeedItemOnetwotripBinding;

    iget-object v0, p0, Lru/rocketbank/r2d2/root/feed/viewholder/OneTwoTripViewHolder;->data:Lru/rocketbank/r2d2/data/binding/feed/FeedOnetwotripHolderData;

    invoke-virtual {p1, v0}, Lru/rocketbank/r2d2/databinding/FeedItemOnetwotripBinding;->setData(Lru/rocketbank/r2d2/data/binding/feed/FeedOnetwotripHolderData;)V

    return-void
.end method


# virtual methods
.method public final getBinding()Lru/rocketbank/r2d2/databinding/FeedItemOnetwotripBinding;
    .locals 1

    .line 10
    iget-object v0, p0, Lru/rocketbank/r2d2/root/feed/viewholder/OneTwoTripViewHolder;->binding:Lru/rocketbank/r2d2/databinding/FeedItemOnetwotripBinding;

    return-object v0
.end method

.method public final onBind(Lru/rocketbank/core/model/OneTwoTripUidOperation;)V
    .locals 3

    const-string v0, "operation"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    iget-object v0, p0, Lru/rocketbank/r2d2/root/feed/viewholder/OneTwoTripViewHolder;->data:Lru/rocketbank/r2d2/data/binding/feed/FeedOnetwotripHolderData;

    invoke-virtual {v0}, Lru/rocketbank/r2d2/data/binding/feed/FeedOnetwotripHolderData;->getTariffText()Landroid/databinding/ObservableField;

    move-result-object v0

    invoke-virtual {p1}, Lru/rocketbank/core/model/OneTwoTripUidOperation;->getTitleText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/databinding/ObservableField;->set(Ljava/lang/Object;)V

    .line 20
    iget-object v0, p0, Lru/rocketbank/r2d2/root/feed/viewholder/OneTwoTripViewHolder;->data:Lru/rocketbank/r2d2/data/binding/feed/FeedOnetwotripHolderData;

    invoke-virtual {v0}, Lru/rocketbank/r2d2/data/binding/feed/FeedOnetwotripHolderData;->getTariffDescription()Landroid/databinding/ObservableField;

    move-result-object v0

    invoke-virtual {p1}, Lru/rocketbank/core/model/OneTwoTripUidOperation;->getSubtitleText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/databinding/ObservableField;->set(Ljava/lang/Object;)V

    .line 21
    iget-object v0, p0, Lru/rocketbank/r2d2/root/feed/viewholder/OneTwoTripViewHolder;->data:Lru/rocketbank/r2d2/data/binding/feed/FeedOnetwotripHolderData;

    invoke-virtual {v0}, Lru/rocketbank/r2d2/data/binding/feed/FeedOnetwotripHolderData;->getButtonText()Landroid/databinding/ObservableField;

    move-result-object v0

    invoke-virtual {p1}, Lru/rocketbank/core/model/OneTwoTripUidOperation;->getButtonText()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type java.lang.String"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_0
    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, "(this as java.lang.String).toUpperCase()"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/databinding/ObservableField;->set(Ljava/lang/Object;)V

    .line 22
    iget-object v0, p0, Lru/rocketbank/r2d2/root/feed/viewholder/OneTwoTripViewHolder;->data:Lru/rocketbank/r2d2/data/binding/feed/FeedOnetwotripHolderData;

    invoke-virtual {v0}, Lru/rocketbank/r2d2/data/binding/feed/FeedOnetwotripHolderData;->getUid()Landroid/databinding/ObservableField;

    move-result-object v0

    invoke-virtual {p1}, Lru/rocketbank/core/model/OneTwoTripUidOperation;->getUid()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/databinding/ObservableField;->set(Ljava/lang/Object;)V

    .line 23
    iget-object v0, p0, Lru/rocketbank/r2d2/root/feed/viewholder/OneTwoTripViewHolder;->binding:Lru/rocketbank/r2d2/databinding/FeedItemOnetwotripBinding;

    iget-object v0, v0, Lru/rocketbank/r2d2/databinding/FeedItemOnetwotripBinding;->tariffCode:Lru/rocketbank/core/widgets/RocketTextView;

    new-instance v1, Lru/rocketbank/r2d2/root/feed/viewholder/OneTwoTripViewHolder$onBind$1;

    invoke-direct {v1, p0, p1}, Lru/rocketbank/r2d2/root/feed/viewholder/OneTwoTripViewHolder$onBind$1;-><init>(Lru/rocketbank/r2d2/root/feed/viewholder/OneTwoTripViewHolder;Lru/rocketbank/core/model/OneTwoTripUidOperation;)V

    check-cast v1, Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lru/rocketbank/core/widgets/RocketTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 27
    iget-object v0, p0, Lru/rocketbank/r2d2/root/feed/viewholder/OneTwoTripViewHolder;->binding:Lru/rocketbank/r2d2/databinding/FeedItemOnetwotripBinding;

    iget-object v0, v0, Lru/rocketbank/r2d2/databinding/FeedItemOnetwotripBinding;->button:Lru/rocketbank/core/widgets/RocketTextView;

    new-instance v1, Lru/rocketbank/r2d2/root/feed/viewholder/OneTwoTripViewHolder$onBind$2;

    invoke-direct {v1, p0, p1}, Lru/rocketbank/r2d2/root/feed/viewholder/OneTwoTripViewHolder$onBind$2;-><init>(Lru/rocketbank/r2d2/root/feed/viewholder/OneTwoTripViewHolder;Lru/rocketbank/core/model/OneTwoTripUidOperation;)V

    check-cast v1, Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lru/rocketbank/core/widgets/RocketTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
