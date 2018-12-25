.class final Lru/rocketbank/r2d2/shop/details/attributes/ShopColorAdapter$onBindViewHolder$1;
.super Lkotlin/jvm/internal/Lambda;
.source "ShopColorAdapter.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/rocketbank/r2d2/shop/details/attributes/ShopColorAdapter;->onBindViewHolder(Lru/rocketbank/r2d2/shop/details/attributes/ShopColorAdapter$ViewHolder;I)V
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
.field final synthetic $position:I

.field final synthetic this$0:Lru/rocketbank/r2d2/shop/details/attributes/ShopColorAdapter;


# direct methods
.method constructor <init>(Lru/rocketbank/r2d2/shop/details/attributes/ShopColorAdapter;I)V
    .locals 0

    iput-object p1, p0, Lru/rocketbank/r2d2/shop/details/attributes/ShopColorAdapter$onBindViewHolder$1;->this$0:Lru/rocketbank/r2d2/shop/details/attributes/ShopColorAdapter;

    iput p2, p0, Lru/rocketbank/r2d2/shop/details/attributes/ShopColorAdapter$onBindViewHolder$1;->$position:I

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 18
    invoke-virtual {p0}, Lru/rocketbank/r2d2/shop/details/attributes/ShopColorAdapter$onBindViewHolder$1;->invoke()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke()V
    .locals 2

    .line 35
    iget-object v0, p0, Lru/rocketbank/r2d2/shop/details/attributes/ShopColorAdapter$onBindViewHolder$1;->this$0:Lru/rocketbank/r2d2/shop/details/attributes/ShopColorAdapter;

    iget v1, p0, Lru/rocketbank/r2d2/shop/details/attributes/ShopColorAdapter$onBindViewHolder$1;->$position:I

    invoke-static {v0, v1}, Lru/rocketbank/r2d2/shop/details/attributes/ShopColorAdapter;->access$selectItem(Lru/rocketbank/r2d2/shop/details/attributes/ShopColorAdapter;I)V

    return-void
.end method
