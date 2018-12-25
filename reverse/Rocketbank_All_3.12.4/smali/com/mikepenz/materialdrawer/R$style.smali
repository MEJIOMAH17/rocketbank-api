.class public final Lcom/mikepenz/materialdrawer/R$style;
.super Ljava/lang/Object;
.source "R.java"

# interfaces
.implements Ljavax/inject/Provider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mikepenz/materialdrawer/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "style"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljavax/inject/Provider<",
        "Lru/rocketbank/core/manager/loader/cacher/discounts/DiscountCache;",
        ">;"
    }
.end annotation


# instance fields
.field private final module:Lru/rocketbank/core/dagger/DiscountsModule;


# direct methods
.method public constructor <init>(Lru/rocketbank/core/dagger/DiscountsModule;)V
    .locals 0

    .line 1011
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1012
    iput-object p1, p0, Lcom/mikepenz/materialdrawer/R$style;->module:Lru/rocketbank/core/dagger/DiscountsModule;

    return-void
.end method


# virtual methods
.method public final bridge synthetic get()Ljava/lang/Object;
    .locals 2

    .line 2017
    iget-object v0, p0, Lcom/mikepenz/materialdrawer/R$style;->module:Lru/rocketbank/core/dagger/DiscountsModule;

    .line 2018
    invoke-virtual {v0}, Lru/rocketbank/core/dagger/DiscountsModule;->provideDiscountsCache()Lru/rocketbank/core/manager/loader/cacher/discounts/DiscountCache;

    move-result-object v0

    const-string v1, "Cannot return null from a non-@Nullable @Provides method"

    if-nez v0, :cond_0

    .line 2048
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2017
    :cond_0
    check-cast v0, Lru/rocketbank/core/manager/loader/cacher/discounts/DiscountCache;

    return-object v0
.end method
