.class public Lru/rocketbank/r2d2/shop/feed/ShopFragmentData;
.super Ljava/lang/Object;
.source "ShopFeedFragment.kt"


# instance fields
.field private final cartButtonEnabled:Landroid/databinding/ObservableBoolean;

.field private final cartSize:Landroid/databinding/ObservableField;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/databinding/ObservableField<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final hasItems:Landroid/databinding/ObservableBoolean;

.field private final hasLoadingError:Landroid/databinding/ObservableBoolean;

.field private final inProgress:Landroid/databinding/ObservableBoolean;

.field private final isEmpty:Landroid/databinding/ObservableBoolean;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    new-instance v0, Landroid/databinding/ObservableBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/databinding/ObservableBoolean;-><init>(Z)V

    iput-object v0, p0, Lru/rocketbank/r2d2/shop/feed/ShopFragmentData;->hasLoadingError:Landroid/databinding/ObservableBoolean;

    .line 95
    new-instance v0, Landroid/databinding/ObservableBoolean;

    invoke-direct {v0, v1}, Landroid/databinding/ObservableBoolean;-><init>(Z)V

    iput-object v0, p0, Lru/rocketbank/r2d2/shop/feed/ShopFragmentData;->inProgress:Landroid/databinding/ObservableBoolean;

    .line 96
    new-instance v0, Landroid/databinding/ObservableBoolean;

    invoke-direct {v0, v1}, Landroid/databinding/ObservableBoolean;-><init>(Z)V

    iput-object v0, p0, Lru/rocketbank/r2d2/shop/feed/ShopFragmentData;->isEmpty:Landroid/databinding/ObservableBoolean;

    .line 97
    new-instance v0, Landroid/databinding/ObservableBoolean;

    invoke-direct {v0, v1}, Landroid/databinding/ObservableBoolean;-><init>(Z)V

    iput-object v0, p0, Lru/rocketbank/r2d2/shop/feed/ShopFragmentData;->hasItems:Landroid/databinding/ObservableBoolean;

    .line 98
    new-instance v0, Landroid/databinding/ObservableBoolean;

    invoke-direct {v0, v1}, Landroid/databinding/ObservableBoolean;-><init>(Z)V

    iput-object v0, p0, Lru/rocketbank/r2d2/shop/feed/ShopFragmentData;->cartButtonEnabled:Landroid/databinding/ObservableBoolean;

    .line 99
    new-instance v0, Landroid/databinding/ObservableField;

    invoke-direct {v0}, Landroid/databinding/ObservableField;-><init>()V

    iput-object v0, p0, Lru/rocketbank/r2d2/shop/feed/ShopFragmentData;->cartSize:Landroid/databinding/ObservableField;

    return-void
.end method

.method public static bridge synthetic set$default(Lru/rocketbank/r2d2/shop/feed/ShopFragmentData;ZZZZILjava/lang/Object;)V
    .locals 1

    if-eqz p6, :cond_0

    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: set"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_0
    and-int/lit8 p6, p5, 0x1

    const/4 v0, 0x0

    if-eqz p6, :cond_1

    move p1, v0

    :cond_1
    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_2

    move p2, v0

    :cond_2
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_3

    move p3, v0

    :cond_3
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_4

    move p4, v0

    .line 101
    :cond_4
    invoke-virtual {p0, p1, p2, p3, p4}, Lru/rocketbank/r2d2/shop/feed/ShopFragmentData;->set(ZZZZ)V

    return-void
.end method


# virtual methods
.method public final getCartButtonEnabled()Landroid/databinding/ObservableBoolean;
    .locals 1

    .line 98
    iget-object v0, p0, Lru/rocketbank/r2d2/shop/feed/ShopFragmentData;->cartButtonEnabled:Landroid/databinding/ObservableBoolean;

    return-object v0
.end method

.method public final getCartSize()Landroid/databinding/ObservableField;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/databinding/ObservableField<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 99
    iget-object v0, p0, Lru/rocketbank/r2d2/shop/feed/ShopFragmentData;->cartSize:Landroid/databinding/ObservableField;

    return-object v0
.end method

.method public final getHasItems()Landroid/databinding/ObservableBoolean;
    .locals 1

    .line 97
    iget-object v0, p0, Lru/rocketbank/r2d2/shop/feed/ShopFragmentData;->hasItems:Landroid/databinding/ObservableBoolean;

    return-object v0
.end method

.method public final getHasLoadingError()Landroid/databinding/ObservableBoolean;
    .locals 1

    .line 94
    iget-object v0, p0, Lru/rocketbank/r2d2/shop/feed/ShopFragmentData;->hasLoadingError:Landroid/databinding/ObservableBoolean;

    return-object v0
.end method

.method public final getInProgress()Landroid/databinding/ObservableBoolean;
    .locals 1

    .line 95
    iget-object v0, p0, Lru/rocketbank/r2d2/shop/feed/ShopFragmentData;->inProgress:Landroid/databinding/ObservableBoolean;

    return-object v0
.end method

.method public final isEmpty()Landroid/databinding/ObservableBoolean;
    .locals 1

    .line 96
    iget-object v0, p0, Lru/rocketbank/r2d2/shop/feed/ShopFragmentData;->isEmpty:Landroid/databinding/ObservableBoolean;

    return-object v0
.end method

.method public final set(ZZZZ)V
    .locals 1

    .line 102
    iget-object v0, p0, Lru/rocketbank/r2d2/shop/feed/ShopFragmentData;->inProgress:Landroid/databinding/ObservableBoolean;

    invoke-virtual {v0, p1}, Landroid/databinding/ObservableBoolean;->set(Z)V

    .line 103
    iget-object p1, p0, Lru/rocketbank/r2d2/shop/feed/ShopFragmentData;->hasLoadingError:Landroid/databinding/ObservableBoolean;

    invoke-virtual {p1, p2}, Landroid/databinding/ObservableBoolean;->set(Z)V

    .line 104
    iget-object p1, p0, Lru/rocketbank/r2d2/shop/feed/ShopFragmentData;->isEmpty:Landroid/databinding/ObservableBoolean;

    invoke-virtual {p1, p3}, Landroid/databinding/ObservableBoolean;->set(Z)V

    .line 105
    iget-object p1, p0, Lru/rocketbank/r2d2/shop/feed/ShopFragmentData;->hasItems:Landroid/databinding/ObservableBoolean;

    invoke-virtual {p1, p4}, Landroid/databinding/ObservableBoolean;->set(Z)V

    return-void
.end method
