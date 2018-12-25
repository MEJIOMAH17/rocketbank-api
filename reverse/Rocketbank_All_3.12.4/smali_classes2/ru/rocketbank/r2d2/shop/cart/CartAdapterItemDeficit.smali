.class public final Lru/rocketbank/r2d2/shop/cart/CartAdapterItemDeficit;
.super Lru/rocketbank/r2d2/shop/cart/CartAdapterItem;
.source "ShopCartAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lru/rocketbank/r2d2/shop/cart/CartAdapterItemDeficit$ViewHolder;
    }
.end annotation


# instance fields
.field private deficit:Landroid/databinding/ObservableDouble;


# direct methods
.method public constructor <init>(Landroid/databinding/ObservableDouble;Lkotlin/jvm/functions/Function0;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/databinding/ObservableDouble;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "deficit"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onClick"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 175
    sget-object v0, Lru/rocketbank/r2d2/shop/cart/CartAdapterItem;->Companion:Lru/rocketbank/r2d2/shop/cart/CartAdapterItem$Companion;

    invoke-virtual {v0}, Lru/rocketbank/r2d2/shop/cart/CartAdapterItem$Companion;->getITEM_TYPE_DEFICIT()I

    move-result v0

    invoke-direct {p0, v0, p2}, Lru/rocketbank/r2d2/shop/cart/CartAdapterItem;-><init>(ILkotlin/jvm/functions/Function0;)V

    iput-object p1, p0, Lru/rocketbank/r2d2/shop/cart/CartAdapterItemDeficit;->deficit:Landroid/databinding/ObservableDouble;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/databinding/ObservableDouble;Lkotlin/jvm/functions/Function0;ILkotlin/jvm/internal/Ref;)V
    .locals 0

    and-int/lit8 p3, p3, 0x1

    if-eqz p3, :cond_0

    .line 175
    new-instance p1, Landroid/databinding/ObservableDouble;

    invoke-direct {p1}, Landroid/databinding/ObservableDouble;-><init>()V

    :cond_0
    invoke-direct {p0, p1, p2}, Lru/rocketbank/r2d2/shop/cart/CartAdapterItemDeficit;-><init>(Landroid/databinding/ObservableDouble;Lkotlin/jvm/functions/Function0;)V

    return-void
.end method


# virtual methods
.method public final getDeficit()Landroid/databinding/ObservableDouble;
    .locals 1

    .line 175
    iget-object v0, p0, Lru/rocketbank/r2d2/shop/cart/CartAdapterItemDeficit;->deficit:Landroid/databinding/ObservableDouble;

    return-object v0
.end method

.method public final setDeficit(Landroid/databinding/ObservableDouble;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 175
    iput-object p1, p0, Lru/rocketbank/r2d2/shop/cart/CartAdapterItemDeficit;->deficit:Landroid/databinding/ObservableDouble;

    return-void
.end method
