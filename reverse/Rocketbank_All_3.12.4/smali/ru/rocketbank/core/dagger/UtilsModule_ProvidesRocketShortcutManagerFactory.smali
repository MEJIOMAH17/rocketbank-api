.class public final Lru/rocketbank/core/dagger/UtilsModule_ProvidesRocketShortcutManagerFactory;
.super Ljava/lang/Object;
.source "UtilsModule_ProvidesRocketShortcutManagerFactory.java"

# interfaces
.implements Ljavax/inject/Provider;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljavax/inject/Provider<",
        "Lru/rocketbank/core/manager/RocketShortcutManager;",
        ">;"
    }
.end annotation


# instance fields
.field private final contextProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private final module$7fc98512:Lcom/samsung/android/sdk/samsungpay/payment/CardInfo$Builder;


# direct methods
.method public constructor <init>(Lcom/samsung/android/sdk/samsungpay/payment/CardInfo$Builder;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/sdk/samsungpay/payment/CardInfo$Builder;",
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;)V"
        }
    .end annotation

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lru/rocketbank/core/dagger/UtilsModule_ProvidesRocketShortcutManagerFactory;->module$7fc98512:Lcom/samsung/android/sdk/samsungpay/payment/CardInfo$Builder;

    .line 19
    iput-object p2, p0, Lru/rocketbank/core/dagger/UtilsModule_ProvidesRocketShortcutManagerFactory;->contextProvider:Ljavax/inject/Provider;

    return-void
.end method


# virtual methods
.method public final bridge synthetic get()Ljava/lang/Object;
    .locals 2

    .line 1024
    iget-object v0, p0, Lru/rocketbank/core/dagger/UtilsModule_ProvidesRocketShortcutManagerFactory;->contextProvider:Ljavax/inject/Provider;

    .line 1025
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    const-string v1, "context"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1049
    new-instance v1, Lru/rocketbank/core/manager/RocketShortcutManager;

    invoke-direct {v1, v0}, Lru/rocketbank/core/manager/RocketShortcutManager;-><init>(Landroid/content/Context;)V

    .line 1024
    check-cast v1, Lru/rocketbank/core/manager/RocketShortcutManager;

    return-object v1
.end method
