.class final Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRoubleAdapter$onBindRocketshop$1;
.super Lkotlin/jvm/internal/Lambda;
.source "RocketRoubleAdapter.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRoubleAdapter;->onBindRocketshop(Lru/rocketbank/r2d2/fragments/rocketrouble/GoToShopViewHolder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic $goToShopViewHolder:Lru/rocketbank/r2d2/fragments/rocketrouble/GoToShopViewHolder;


# direct methods
.method constructor <init>(Lru/rocketbank/r2d2/fragments/rocketrouble/GoToShopViewHolder;)V
    .locals 0

    iput-object p1, p0, Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRoubleAdapter$onBindRocketshop$1;->$goToShopViewHolder:Lru/rocketbank/r2d2/fragments/rocketrouble/GoToShopViewHolder;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 22
    invoke-virtual {p0}, Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRoubleAdapter$onBindRocketshop$1;->invoke()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke()V
    .locals 2

    .line 193
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/rocketrouble/RocketRoubleAdapter$onBindRocketshop$1;->$goToShopViewHolder:Lru/rocketbank/r2d2/fragments/rocketrouble/GoToShopViewHolder;

    iget-object v0, v0, Lru/rocketbank/r2d2/fragments/rocketrouble/GoToShopViewHolder;->itemView:Landroid/view/View;

    const-string v1, "goToShopViewHolder.itemView"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Lkotlin/TypeCastException;

    const-string v1, "null cannot be cast to non-null type ru.rocketbank.r2d2.activities.MainActivity"

    invoke-direct {v0, v1}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    check-cast v0, Lru/rocketbank/r2d2/activities/MainActivity;

    invoke-virtual {v0}, Lru/rocketbank/r2d2/activities/MainActivity;->showShop()V

    return-void
.end method
