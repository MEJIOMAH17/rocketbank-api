.class final Lru/rocketbank/r2d2/shop/cart/ShopCartPresenter$load$2;
.super Lkotlin/jvm/internal/Lambda;
.source "ShopCartPresenter.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/rocketbank/r2d2/shop/cart/ShopCartPresenter;->load(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Ljava/lang/Throwable;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lru/rocketbank/r2d2/shop/cart/ShopCartPresenter;


# direct methods
.method constructor <init>(Lru/rocketbank/r2d2/shop/cart/ShopCartPresenter;)V
    .locals 0

    iput-object p1, p0, Lru/rocketbank/r2d2/shop/cart/ShopCartPresenter$load$2;->this$0:Lru/rocketbank/r2d2/shop/cart/ShopCartPresenter;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 14
    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/shop/cart/ShopCartPresenter$load$2;->invoke(Ljava/lang/Throwable;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Ljava/lang/Throwable;)V
    .locals 1

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    iget-object v0, p0, Lru/rocketbank/r2d2/shop/cart/ShopCartPresenter$load$2;->this$0:Lru/rocketbank/r2d2/shop/cart/ShopCartPresenter;

    invoke-static {v0, p1}, Lru/rocketbank/r2d2/shop/cart/ShopCartPresenter;->access$onLoadingError(Lru/rocketbank/r2d2/shop/cart/ShopCartPresenter;Ljava/lang/Throwable;)V

    return-void
.end method
