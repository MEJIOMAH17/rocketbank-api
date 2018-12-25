.class final Lru/rocketbank/r2d2/root/feed/FeedFragment$onViewCreated$1;
.super Ljava/lang/Object;
.source "FeedFragment.kt"

# interfaces
.implements Landroid/support/v7/widget/RecyclerView$RecyclerListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/rocketbank/r2d2/root/feed/FeedFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# static fields
.field public static final INSTANCE:Lru/rocketbank/r2d2/root/feed/FeedFragment$onViewCreated$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lru/rocketbank/r2d2/root/feed/FeedFragment$onViewCreated$1;

    invoke-direct {v0}, Lru/rocketbank/r2d2/root/feed/FeedFragment$onViewCreated$1;-><init>()V

    sput-object v0, Lru/rocketbank/r2d2/root/feed/FeedFragment$onViewCreated$1;->INSTANCE:Lru/rocketbank/r2d2/root/feed/FeedFragment$onViewCreated$1;

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

    .line 174
    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type ru.rocketbank.r2d2.root.feed.viewholder.FeedViewHolder"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_0
    check-cast p1, Lru/rocketbank/r2d2/root/feed/viewholder/FeedViewHolder;

    .line 175
    invoke-virtual {p1}, Lru/rocketbank/r2d2/root/feed/viewholder/FeedViewHolder;->clean()V

    return-void
.end method
