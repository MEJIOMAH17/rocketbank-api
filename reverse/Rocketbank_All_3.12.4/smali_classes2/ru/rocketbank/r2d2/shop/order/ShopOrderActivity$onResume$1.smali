.class final Lru/rocketbank/r2d2/shop/order/ShopOrderActivity$onResume$1;
.super Ljava/lang/Object;
.source "ShopOrderActivity.kt"

# interfaces
.implements Lrx/functions/Func1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/rocketbank/r2d2/shop/order/ShopOrderActivity;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lrx/functions/Func1<",
        "Lcom/jakewharton/rxbinding/widget/TextViewAfterTextChangeEvent;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lru/rocketbank/r2d2/shop/order/ShopOrderActivity$onResume$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lru/rocketbank/r2d2/shop/order/ShopOrderActivity$onResume$1;

    invoke-direct {v0}, Lru/rocketbank/r2d2/shop/order/ShopOrderActivity$onResume$1;-><init>()V

    sput-object v0, Lru/rocketbank/r2d2/shop/order/ShopOrderActivity$onResume$1;->INSTANCE:Lru/rocketbank/r2d2/shop/order/ShopOrderActivity$onResume$1;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 33
    check-cast p1, Lcom/jakewharton/rxbinding/widget/TextViewAfterTextChangeEvent;

    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/shop/order/ShopOrderActivity$onResume$1;->call(Lcom/jakewharton/rxbinding/widget/TextViewAfterTextChangeEvent;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public final call(Lcom/jakewharton/rxbinding/widget/TextViewAfterTextChangeEvent;)Z
    .locals 1

    .line 125
    invoke-virtual {p1}, Lcom/jakewharton/rxbinding/widget/TextViewAfterTextChangeEvent;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    const/4 v0, 0x3

    if-lt p1, v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
