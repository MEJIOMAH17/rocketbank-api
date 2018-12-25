.class public final Lru/rocketbank/r2d2/shop/cart/CartAdapterItemHeader;
.super Lru/rocketbank/r2d2/shop/cart/CartAdapterItem;
.source "ShopCartAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lru/rocketbank/r2d2/shop/cart/CartAdapterItemHeader$ViewHolder;
    }
.end annotation


# instance fields
.field private amount:Landroid/databinding/ObservableDouble;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1, v0}, Lru/rocketbank/r2d2/shop/cart/CartAdapterItemHeader;-><init>(Landroid/databinding/ObservableDouble;ILkotlin/jvm/internal/Ref;)V

    return-void
.end method

.method public constructor <init>(Landroid/databinding/ObservableDouble;)V
    .locals 3

    const-string v0, "amount"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 136
    sget-object v0, Lru/rocketbank/r2d2/shop/cart/CartAdapterItem;->Companion:Lru/rocketbank/r2d2/shop/cart/CartAdapterItem$Companion;

    invoke-virtual {v0}, Lru/rocketbank/r2d2/shop/cart/CartAdapterItem$Companion;->getITEM_TYPE_AMOUNT()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-direct {p0, v0, v1, v2, v1}, Lru/rocketbank/r2d2/shop/cart/CartAdapterItem;-><init>(ILkotlin/jvm/functions/Function0;ILkotlin/jvm/internal/Ref;)V

    iput-object p1, p0, Lru/rocketbank/r2d2/shop/cart/CartAdapterItemHeader;->amount:Landroid/databinding/ObservableDouble;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/databinding/ObservableDouble;ILkotlin/jvm/internal/Ref;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    .line 136
    new-instance p1, Landroid/databinding/ObservableDouble;

    invoke-direct {p1}, Landroid/databinding/ObservableDouble;-><init>()V

    :cond_0
    invoke-direct {p0, p1}, Lru/rocketbank/r2d2/shop/cart/CartAdapterItemHeader;-><init>(Landroid/databinding/ObservableDouble;)V

    return-void
.end method


# virtual methods
.method public final getAmount()Landroid/databinding/ObservableDouble;
    .locals 1

    .line 136
    iget-object v0, p0, Lru/rocketbank/r2d2/shop/cart/CartAdapterItemHeader;->amount:Landroid/databinding/ObservableDouble;

    return-object v0
.end method

.method public final setAmount(Landroid/databinding/ObservableDouble;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 136
    iput-object p1, p0, Lru/rocketbank/r2d2/shop/cart/CartAdapterItemHeader;->amount:Landroid/databinding/ObservableDouble;

    return-void
.end method
