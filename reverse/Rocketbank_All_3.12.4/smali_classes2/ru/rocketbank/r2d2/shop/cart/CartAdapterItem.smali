.class public abstract Lru/rocketbank/r2d2/shop/cart/CartAdapterItem;
.super Ljava/lang/Object;
.source "ShopCartAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lru/rocketbank/r2d2/shop/cart/CartAdapterItem$CartItemViewHolder;,
        Lru/rocketbank/r2d2/shop/cart/CartAdapterItem$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lru/rocketbank/r2d2/shop/cart/CartAdapterItem$Companion;

.field private static final ITEM_TYPE_AMOUNT:I = 0x0

.field private static final ITEM_TYPE_CART_ITEM:I = 0x1

.field private static final ITEM_TYPE_DEFICIT:I = 0x2


# instance fields
.field private onClick:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private onUpdate:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private final type:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lru/rocketbank/r2d2/shop/cart/CartAdapterItem$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lru/rocketbank/r2d2/shop/cart/CartAdapterItem$Companion;-><init>(Lkotlin/jvm/internal/Ref;)V

    sput-object v0, Lru/rocketbank/r2d2/shop/cart/CartAdapterItem;->Companion:Lru/rocketbank/r2d2/shop/cart/CartAdapterItem$Companion;

    return-void
.end method

.method public constructor <init>(ILkotlin/jvm/functions/Function0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 119
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lru/rocketbank/r2d2/shop/cart/CartAdapterItem;->type:I

    iput-object p2, p0, Lru/rocketbank/r2d2/shop/cart/CartAdapterItem;->onClick:Lkotlin/jvm/functions/Function0;

    return-void
.end method

.method public synthetic constructor <init>(ILkotlin/jvm/functions/Function0;ILkotlin/jvm/internal/Ref;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 119
    :cond_0
    invoke-direct {p0, p1, p2}, Lru/rocketbank/r2d2/shop/cart/CartAdapterItem;-><init>(ILkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method public static final synthetic access$getITEM_TYPE_AMOUNT$cp()I
    .locals 1

    .line 119
    sget v0, Lru/rocketbank/r2d2/shop/cart/CartAdapterItem;->ITEM_TYPE_AMOUNT:I

    return v0
.end method

.method public static final synthetic access$getITEM_TYPE_CART_ITEM$cp()I
    .locals 1

    .line 119
    sget v0, Lru/rocketbank/r2d2/shop/cart/CartAdapterItem;->ITEM_TYPE_CART_ITEM:I

    return v0
.end method

.method public static final synthetic access$getITEM_TYPE_DEFICIT$cp()I
    .locals 1

    .line 119
    sget v0, Lru/rocketbank/r2d2/shop/cart/CartAdapterItem;->ITEM_TYPE_DEFICIT:I

    return v0
.end method


# virtual methods
.method public final getOnClick()Lkotlin/jvm/functions/Function0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .line 119
    iget-object v0, p0, Lru/rocketbank/r2d2/shop/cart/CartAdapterItem;->onClick:Lkotlin/jvm/functions/Function0;

    return-object v0
.end method

.method public final getOnUpdate()Lkotlin/jvm/functions/Function0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .line 121
    iget-object v0, p0, Lru/rocketbank/r2d2/shop/cart/CartAdapterItem;->onUpdate:Lkotlin/jvm/functions/Function0;

    return-object v0
.end method

.method public final getType()I
    .locals 1

    .line 119
    iget v0, p0, Lru/rocketbank/r2d2/shop/cart/CartAdapterItem;->type:I

    return v0
.end method

.method public final setOnClick(Lkotlin/jvm/functions/Function0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 119
    iput-object p1, p0, Lru/rocketbank/r2d2/shop/cart/CartAdapterItem;->onClick:Lkotlin/jvm/functions/Function0;

    return-void
.end method

.method public final setOnUpdate(Lkotlin/jvm/functions/Function0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 121
    iput-object p1, p0, Lru/rocketbank/r2d2/shop/cart/CartAdapterItem;->onUpdate:Lkotlin/jvm/functions/Function0;

    return-void
.end method
