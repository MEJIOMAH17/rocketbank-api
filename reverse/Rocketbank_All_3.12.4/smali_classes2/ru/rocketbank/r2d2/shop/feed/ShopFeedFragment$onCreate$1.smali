.class final Lru/rocketbank/r2d2/shop/feed/ShopFeedFragment$onCreate$1;
.super Lkotlin/jvm/internal/Lambda;
.source "ShopFeedFragment.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/rocketbank/r2d2/shop/feed/ShopFeedFragment;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lru/rocketbank/core/model/shop/ShopItem;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lru/rocketbank/r2d2/shop/feed/ShopFeedFragment;


# direct methods
.method constructor <init>(Lru/rocketbank/r2d2/shop/feed/ShopFeedFragment;)V
    .locals 0

    iput-object p1, p0, Lru/rocketbank/r2d2/shop/feed/ShopFeedFragment$onCreate$1;->this$0:Lru/rocketbank/r2d2/shop/feed/ShopFeedFragment;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 24
    check-cast p1, Lru/rocketbank/core/model/shop/ShopItem;

    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/shop/feed/ShopFeedFragment$onCreate$1;->invoke(Lru/rocketbank/core/model/shop/ShopItem;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Lru/rocketbank/core/model/shop/ShopItem;)V
    .locals 1

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    iget-object v0, p0, Lru/rocketbank/r2d2/shop/feed/ShopFeedFragment$onCreate$1;->this$0:Lru/rocketbank/r2d2/shop/feed/ShopFeedFragment;

    invoke-static {v0}, Lru/rocketbank/r2d2/shop/feed/ShopFeedFragment;->access$getPresenter$p(Lru/rocketbank/r2d2/shop/feed/ShopFeedFragment;)Lru/rocketbank/r2d2/shop/feed/ShopFeedPresenter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lru/rocketbank/r2d2/shop/feed/ShopFeedPresenter;->onItemClick(Lru/rocketbank/core/model/shop/ShopItem;)V

    return-void
.end method
