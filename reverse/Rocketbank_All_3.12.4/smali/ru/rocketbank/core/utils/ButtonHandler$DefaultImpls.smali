.class public Lru/rocketbank/core/utils/ButtonHandler$DefaultImpls;
.super Ljava/lang/Object;
.source "ButtonHandler.kt"

# interfaces
.implements Ljavax/inject/Provider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lru/rocketbank/core/utils/ButtonHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DefaultImpls"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljavax/inject/Provider<",
        "Lru/rocketbank/core/manager/BankAccountManager;",
        ">;"
    }
.end annotation


# instance fields
.field private final module:Lru/rocketbank/core/dagger/UserModule;


# direct methods
.method public constructor <init>(Lru/rocketbank/core/dagger/UserModule;)V
    .locals 0

    .line 1012
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1013
    iput-object p1, p0, Lru/rocketbank/core/utils/ButtonHandler$DefaultImpls;->module:Lru/rocketbank/core/dagger/UserModule;

    return-void
.end method

.method public static create$5d82f649(Lru/rocketbank/core/dagger/UserModule;)Lru/rocketbank/core/utils/ButtonHandler$DefaultImpls;
    .locals 1

    .line 2024
    new-instance v0, Lru/rocketbank/core/utils/ButtonHandler$DefaultImpls;

    invoke-direct {v0, p0}, Lru/rocketbank/core/utils/ButtonHandler$DefaultImpls;-><init>(Lru/rocketbank/core/dagger/UserModule;)V

    return-object v0
.end method

.method public static handle$60364d8e(Landroid/view/View;Lkotlin/jvm/functions/Function0;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "view"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "func"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 10
    invoke-virtual {p0, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 11
    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    const/4 p1, 0x1

    .line 12
    invoke-virtual {p0, p1}, Landroid/view/View;->setEnabled(Z)V

    return-void
.end method


# virtual methods
.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 3008
    invoke-virtual {p0}, Lru/rocketbank/core/utils/ButtonHandler$DefaultImpls;->get()Lru/rocketbank/core/manager/BankAccountManager;

    move-result-object v0

    return-object v0
.end method

.method public get()Lru/rocketbank/core/manager/BankAccountManager;
    .locals 1

    .line 1019
    invoke-static {}, Lru/rocketbank/core/dagger/UserModule;->provideBankAccountManager()Lru/rocketbank/core/manager/BankAccountManager;

    move-result-object v0

    .line 1018
    check-cast v0, Lru/rocketbank/core/manager/BankAccountManager;

    return-object v0
.end method
