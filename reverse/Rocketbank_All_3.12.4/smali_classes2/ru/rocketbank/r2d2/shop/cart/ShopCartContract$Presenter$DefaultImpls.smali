.class public final Lru/rocketbank/r2d2/shop/cart/ShopCartContract$Presenter$DefaultImpls;
.super Ljava/lang/Object;
.source "ShopCartContract.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lru/rocketbank/r2d2/shop/cart/ShopCartContract$Presenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DefaultImpls"
.end annotation


# direct methods
.method public static bridge synthetic load$default(Lru/rocketbank/r2d2/shop/cart/ShopCartContract$Presenter;ZILjava/lang/Object;)V
    .locals 0

    if-eqz p3, :cond_0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: load"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_0
    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_1

    const/4 p1, 0x0

    .line 32
    :cond_1
    invoke-interface {p0, p1}, Lru/rocketbank/r2d2/shop/cart/ShopCartContract$Presenter;->load(Z)V

    return-void
.end method
