.class public Lru/rocketbank/r2d2/root/chat/outgoing/OutgoingViewHolder;
.super Lru/rocketbank/r2d2/root/chat/MessageViewHolder;
.source "OutgoingViewHolder.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nOutgoingViewHolder.kt\nKotlin\n*S Kotlin\n*F\n+ 1 OutgoingViewHolder.kt\nru/rocketbank/r2d2/root/chat/outgoing/OutgoingViewHolder\n*L\n1#1,57:1\n*E\n"
.end annotation


# static fields
.field static final synthetic $$delegatedProperties:[Lkotlin/reflect/KProperty;


# instance fields
.field private final data:Lru/rocketbank/r2d2/root/chat/base/TextMessageData;

.field private final formatTime$delegate:Lkotlin/Lazy;

.field private final retryMessageListener:Lru/rocketbank/r2d2/root/chat/outgoing/RetryMessageListener;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x1

    new-array v0, v0, [Lkotlin/reflect/KProperty;

    new-instance v1, Lkotlin/jvm/internal/PropertyReference1Impl;

    const-class v2, Lru/rocketbank/r2d2/root/chat/outgoing/OutgoingViewHolder;

    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass$4641416c(Ljava/lang/Class;)Landroid/support/v4/content/Loader$OnLoadCompleteListener;

    move-result-object v2

    const-string v3, "formatTime"

    const-string v4, "getFormatTime()Ljava/text/SimpleDateFormat;"

    invoke-direct {v1, v2, v3, v4}, Lkotlin/jvm/internal/PropertyReference1Impl;-><init>(Lkotlin/reflect/KDeclarationContainer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->property1(Lkotlin/jvm/internal/PropertyReference1;)Lkotlin/reflect/KProperty1;

    move-result-object v1

    check-cast v1, Lkotlin/reflect/KProperty;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sput-object v0, Lru/rocketbank/r2d2/root/chat/outgoing/OutgoingViewHolder;->$$delegatedProperties:[Lkotlin/reflect/KProperty;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/View;Lru/rocketbank/r2d2/root/chat/outgoing/RetryMessageListener;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "itemView"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "retryMessageListener"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    invoke-direct {p0, p1, p2}, Lru/rocketbank/r2d2/root/chat/MessageViewHolder;-><init>(Landroid/content/Context;Landroid/view/View;)V

    .line 19
    sget-object p1, Lru/rocketbank/r2d2/root/chat/outgoing/OutgoingViewHolder$formatTime$2;->INSTANCE:Lru/rocketbank/r2d2/root/chat/outgoing/OutgoingViewHolder$formatTime$2;

    check-cast p1, Lkotlin/jvm/functions/Function0;

    invoke-static {p1}, Lkotlin/ExceptionsKt__ExceptionsKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lru/rocketbank/r2d2/root/chat/outgoing/OutgoingViewHolder;->formatTime$delegate:Lkotlin/Lazy;

    .line 23
    new-instance p1, Lru/rocketbank/r2d2/root/chat/base/TextMessageData;

    invoke-direct {p1}, Lru/rocketbank/r2d2/root/chat/base/TextMessageData;-><init>()V

    iput-object p1, p0, Lru/rocketbank/r2d2/root/chat/outgoing/OutgoingViewHolder;->data:Lru/rocketbank/r2d2/root/chat/base/TextMessageData;

    .line 24
    iput-object p3, p0, Lru/rocketbank/r2d2/root/chat/outgoing/OutgoingViewHolder;->retryMessageListener:Lru/rocketbank/r2d2/root/chat/outgoing/RetryMessageListener;

    return-void
.end method

.method private final getFormatTime()Ljava/text/SimpleDateFormat;
    .locals 1

    iget-object v0, p0, Lru/rocketbank/r2d2/root/chat/outgoing/OutgoingViewHolder;->formatTime$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/text/SimpleDateFormat;

    return-object v0
.end method


# virtual methods
.method public final getData()Lru/rocketbank/r2d2/root/chat/base/TextMessageData;
    .locals 1

    .line 20
    iget-object v0, p0, Lru/rocketbank/r2d2/root/chat/outgoing/OutgoingViewHolder;->data:Lru/rocketbank/r2d2/root/chat/base/TextMessageData;

    return-object v0
.end method

.method public final setRead(I)V
    .locals 6

    .line 42
    invoke-direct {p0}, Lru/rocketbank/r2d2/root/chat/outgoing/OutgoingViewHolder;->getFormatTime()Ljava/text/SimpleDateFormat;

    move-result-object v0

    new-instance v1, Ljava/util/Date;

    int-to-long v2, p1

    const-wide/16 v4, 0x3e8

    mul-long/2addr v2, v4

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    .line 43
    invoke-virtual {p0}, Lru/rocketbank/r2d2/root/chat/outgoing/OutgoingViewHolder;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const p1, 0x7f1102a6

    invoke-virtual {v0, p1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 44
    iget-object v0, p0, Lru/rocketbank/r2d2/root/chat/outgoing/OutgoingViewHolder;->data:Lru/rocketbank/r2d2/root/chat/base/TextMessageData;

    invoke-virtual {v0}, Lru/rocketbank/r2d2/root/chat/base/TextMessageData;->getStatusText()Landroid/databinding/ObservableField;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/databinding/ObservableField;->set(Ljava/lang/Object;)V

    .line 45
    iget-object p1, p0, Lru/rocketbank/r2d2/root/chat/outgoing/OutgoingViewHolder;->data:Lru/rocketbank/r2d2/root/chat/base/TextMessageData;

    invoke-virtual {p1}, Lru/rocketbank/r2d2/root/chat/base/TextMessageData;->getStatusVisible()Landroid/databinding/ObservableBoolean;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/databinding/ObservableBoolean;->set(Z)V

    return-void
.end method

.method public final setSent(I)V
    .locals 1

    .line 49
    invoke-virtual {p0}, Lru/rocketbank/r2d2/root/chat/outgoing/OutgoingViewHolder;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f1102a7

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 50
    iget-object v0, p0, Lru/rocketbank/r2d2/root/chat/outgoing/OutgoingViewHolder;->data:Lru/rocketbank/r2d2/root/chat/base/TextMessageData;

    invoke-virtual {v0}, Lru/rocketbank/r2d2/root/chat/base/TextMessageData;->getStatusText()Landroid/databinding/ObservableField;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/databinding/ObservableField;->set(Ljava/lang/Object;)V

    .line 51
    iget-object p1, p0, Lru/rocketbank/r2d2/root/chat/outgoing/OutgoingViewHolder;->data:Lru/rocketbank/r2d2/root/chat/base/TextMessageData;

    invoke-virtual {p1}, Lru/rocketbank/r2d2/root/chat/base/TextMessageData;->getStatusVisible()Landroid/databinding/ObservableBoolean;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/databinding/ObservableBoolean;->set(Z)V

    return-void
.end method

.method public final setStatusInvisible()V
    .locals 2

    .line 55
    iget-object v0, p0, Lru/rocketbank/r2d2/root/chat/outgoing/OutgoingViewHolder;->data:Lru/rocketbank/r2d2/root/chat/base/TextMessageData;

    invoke-virtual {v0}, Lru/rocketbank/r2d2/root/chat/base/TextMessageData;->getStatusVisible()Landroid/databinding/ObservableBoolean;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/databinding/ObservableBoolean;->set(Z)V

    return-void
.end method

.method public final showGrayBubble(Z)V
    .locals 2

    .line 28
    iget-object v0, p0, Lru/rocketbank/r2d2/root/chat/outgoing/OutgoingViewHolder;->data:Lru/rocketbank/r2d2/root/chat/base/TextMessageData;

    invoke-virtual {v0}, Lru/rocketbank/r2d2/root/chat/base/TextMessageData;->getFirstMessage()Landroid/databinding/ObservableBoolean;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/databinding/ObservableBoolean;->set(Z)V

    if-eqz p1, :cond_0

    const p1, 0x7f0800da

    goto :goto_0

    :cond_0
    const p1, 0x7f0800db

    .line 31
    :goto_0
    iget-object v0, p0, Lru/rocketbank/r2d2/root/chat/outgoing/OutgoingViewHolder;->data:Lru/rocketbank/r2d2/root/chat/base/TextMessageData;

    invoke-virtual {v0}, Lru/rocketbank/r2d2/root/chat/base/TextMessageData;->getBackground()Landroid/databinding/ObservableField;

    move-result-object v0

    invoke-virtual {p0}, Lru/rocketbank/r2d2/root/chat/outgoing/OutgoingViewHolder;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p1}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/databinding/ObservableField;->set(Ljava/lang/Object;)V

    return-void
.end method

.method public final showOrangeBubble(Z)V
    .locals 2

    .line 35
    iget-object v0, p0, Lru/rocketbank/r2d2/root/chat/outgoing/OutgoingViewHolder;->data:Lru/rocketbank/r2d2/root/chat/base/TextMessageData;

    invoke-virtual {v0}, Lru/rocketbank/r2d2/root/chat/base/TextMessageData;->getFirstMessage()Landroid/databinding/ObservableBoolean;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/databinding/ObservableBoolean;->set(Z)V

    if-eqz p1, :cond_0

    const p1, 0x7f0801e0

    goto :goto_0

    :cond_0
    const p1, 0x7f0801e1

    .line 38
    :goto_0
    iget-object v0, p0, Lru/rocketbank/r2d2/root/chat/outgoing/OutgoingViewHolder;->data:Lru/rocketbank/r2d2/root/chat/base/TextMessageData;

    invoke-virtual {v0}, Lru/rocketbank/r2d2/root/chat/base/TextMessageData;->getBackground()Landroid/databinding/ObservableField;

    move-result-object v0

    invoke-virtual {p0}, Lru/rocketbank/r2d2/root/chat/outgoing/OutgoingViewHolder;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p1}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/databinding/ObservableField;->set(Ljava/lang/Object;)V

    return-void
.end method
