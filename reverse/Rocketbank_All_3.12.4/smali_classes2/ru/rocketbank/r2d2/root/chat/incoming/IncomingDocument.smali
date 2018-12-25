.class public final Lru/rocketbank/r2d2/root/chat/incoming/IncomingDocument;
.super Lru/rocketbank/r2d2/root/chat/incoming/IncomingViewHolder;
.source "IncomingDocument.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nIncomingDocument.kt\nKotlin\n*S Kotlin\n*F\n+ 1 IncomingDocument.kt\nru/rocketbank/r2d2/root/chat/incoming/IncomingDocument\n*L\n1#1,41:1\n*E\n"
.end annotation


# instance fields
.field private chatMessage:Lru/rocketbank/core/model/message/MessageIn;

.field private final imageView:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/View;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "itemView"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    invoke-direct {p0, p1, p2}, Lru/rocketbank/r2d2/root/chat/incoming/IncomingViewHolder;-><init>(Landroid/content/Context;Landroid/view/View;)V

    const v0, 0x7f0901c7

    .line 20
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type android.widget.ImageView"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_0
    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lru/rocketbank/r2d2/root/chat/incoming/IncomingDocument;->imageView:Landroid/widget/ImageView;

    .line 21
    invoke-static {p2}, Lcom/jakewharton/rxbinding/view/RxView;->clicks(Landroid/view/View;)Lrx/Observable;

    move-result-object p2

    new-instance v0, Lru/rocketbank/r2d2/root/chat/incoming/IncomingDocument$1;

    invoke-direct {v0, p0, p1}, Lru/rocketbank/r2d2/root/chat/incoming/IncomingDocument$1;-><init>(Lru/rocketbank/r2d2/root/chat/incoming/IncomingDocument;Landroid/content/Context;)V

    check-cast v0, Lrx/functions/Action1;

    invoke-virtual {p2, v0}, Lrx/Observable;->subscribe(Lrx/functions/Action1;)Lrx/Subscription;

    return-void
.end method

.method public static final synthetic access$getChatMessage$p(Lru/rocketbank/r2d2/root/chat/incoming/IncomingDocument;)Lru/rocketbank/core/model/message/MessageIn;
    .locals 0

    .line 15
    iget-object p0, p0, Lru/rocketbank/r2d2/root/chat/incoming/IncomingDocument;->chatMessage:Lru/rocketbank/core/model/message/MessageIn;

    return-object p0
.end method

.method public static final synthetic access$setChatMessage$p(Lru/rocketbank/r2d2/root/chat/incoming/IncomingDocument;Lru/rocketbank/core/model/message/MessageIn;)V
    .locals 0

    .line 15
    iput-object p1, p0, Lru/rocketbank/r2d2/root/chat/incoming/IncomingDocument;->chatMessage:Lru/rocketbank/core/model/message/MessageIn;

    return-void
.end method


# virtual methods
.method public final bind(Ljava/lang/String;Lru/rocketbank/core/model/message/MessageIn;)V
    .locals 1

    const-string v0, "chatMessage"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    iput-object p2, p0, Lru/rocketbank/r2d2/root/chat/incoming/IncomingDocument;->chatMessage:Lru/rocketbank/core/model/message/MessageIn;

    .line 35
    iget-object p2, p0, Lru/rocketbank/r2d2/root/chat/incoming/IncomingDocument;->imageView:Landroid/widget/ImageView;

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    if-eqz p1, :cond_0

    .line 37
    invoke-virtual {p0}, Lru/rocketbank/r2d2/root/chat/incoming/IncomingDocument;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/DrawableTypeRequest;

    move-result-object p1

    invoke-virtual {p1}, Lcom/bumptech/glide/DrawableTypeRequest;->centerCrop()Lcom/bumptech/glide/DrawableRequestBuilder;

    move-result-object p1

    iget-object p2, p0, Lru/rocketbank/r2d2/root/chat/incoming/IncomingDocument;->imageView:Landroid/widget/ImageView;

    invoke-virtual {p1, p2}, Lcom/bumptech/glide/DrawableRequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/Target;

    :cond_0
    return-void
.end method
