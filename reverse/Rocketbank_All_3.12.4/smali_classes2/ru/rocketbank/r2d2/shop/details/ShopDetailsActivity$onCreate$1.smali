.class public final Lru/rocketbank/r2d2/shop/details/ShopDetailsActivity$onCreate$1;
.super Ljava/lang/Object;
.source "ShopDetailsActivity.kt"

# interfaces
.implements Lru/rocketbank/r2d2/shop/details/RocketScaleGestureDetector$OnScaleGestureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/rocketbank/r2d2/shop/details/ShopDetailsActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lru/rocketbank/r2d2/shop/details/ShopDetailsActivity;


# direct methods
.method constructor <init>(Lru/rocketbank/r2d2/shop/details/ShopDetailsActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 88
    iput-object p1, p0, Lru/rocketbank/r2d2/shop/details/ShopDetailsActivity$onCreate$1;->this$0:Lru/rocketbank/r2d2/shop/details/ShopDetailsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onScale(Lru/rocketbank/r2d2/shop/details/RocketScaleGestureDetector;)Z
    .locals 1

    const-string v0, "detector"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 98
    iget-object v0, p0, Lru/rocketbank/r2d2/shop/details/ShopDetailsActivity$onCreate$1;->this$0:Lru/rocketbank/r2d2/shop/details/ShopDetailsActivity;

    invoke-virtual {v0}, Lru/rocketbank/r2d2/shop/details/ShopDetailsActivity;->getOnScale()Lkotlin/jvm/functions/Function1;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public final onScaleBegin(Lru/rocketbank/r2d2/shop/details/RocketScaleGestureDetector;)Z
    .locals 1

    const-string v0, "p0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1
.end method

.method public final onScaleEnd(Lru/rocketbank/r2d2/shop/details/RocketScaleGestureDetector;)V
    .locals 1

    const-string v0, "p0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 94
    iget-object v0, p0, Lru/rocketbank/r2d2/shop/details/ShopDetailsActivity$onCreate$1;->this$0:Lru/rocketbank/r2d2/shop/details/ShopDetailsActivity;

    invoke-virtual {v0}, Lru/rocketbank/r2d2/shop/details/ShopDetailsActivity;->getOnScaleEnd()Lkotlin/jvm/functions/Function1;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_0
    return-void
.end method
