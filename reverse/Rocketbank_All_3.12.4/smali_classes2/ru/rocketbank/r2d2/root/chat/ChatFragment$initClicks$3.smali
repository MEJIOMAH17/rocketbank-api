.class final Lru/rocketbank/r2d2/root/chat/ChatFragment$initClicks$3;
.super Ljava/lang/Object;
.source "ChatFragment.kt"

# interfaces
.implements Landroid/support/v7/widget/RecyclerView$RecyclerListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/rocketbank/r2d2/root/chat/ChatFragment;->initClicks()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# static fields
.field public static final INSTANCE:Lru/rocketbank/r2d2/root/chat/ChatFragment$initClicks$3;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lru/rocketbank/r2d2/root/chat/ChatFragment$initClicks$3;

    invoke-direct {v0}, Lru/rocketbank/r2d2/root/chat/ChatFragment$initClicks$3;-><init>()V

    sput-object v0, Lru/rocketbank/r2d2/root/chat/ChatFragment$initClicks$3;->INSTANCE:Lru/rocketbank/r2d2/root/chat/ChatFragment$initClicks$3;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onViewRecycled(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V
    .locals 1

    if-nez p1, :cond_0

    .line 286
    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type ru.rocketbank.r2d2.root.chat.MessageViewHolder"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_0
    check-cast p1, Lru/rocketbank/r2d2/root/chat/MessageViewHolder;

    .line 287
    invoke-virtual {p1}, Lru/rocketbank/r2d2/root/chat/MessageViewHolder;->clear()V

    return-void
.end method
