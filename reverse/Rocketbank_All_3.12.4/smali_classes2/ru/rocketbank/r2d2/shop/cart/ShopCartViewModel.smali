.class public final Lru/rocketbank/r2d2/shop/cart/ShopCartViewModel;
.super Lru/rocketbank/r2d2/shop/feed/ShopFragmentData;
.source "ShopCartActivity.kt"


# instance fields
.field private final enableCheckoutButton:Landroid/databinding/ObservableBoolean;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 132
    invoke-direct {p0}, Lru/rocketbank/r2d2/shop/feed/ShopFragmentData;-><init>()V

    .line 133
    new-instance v0, Landroid/databinding/ObservableBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/databinding/ObservableBoolean;-><init>(Z)V

    iput-object v0, p0, Lru/rocketbank/r2d2/shop/cart/ShopCartViewModel;->enableCheckoutButton:Landroid/databinding/ObservableBoolean;

    return-void
.end method


# virtual methods
.method public final getEnableCheckoutButton()Landroid/databinding/ObservableBoolean;
    .locals 1

    .line 133
    iget-object v0, p0, Lru/rocketbank/r2d2/shop/cart/ShopCartViewModel;->enableCheckoutButton:Landroid/databinding/ObservableBoolean;

    return-object v0
.end method
