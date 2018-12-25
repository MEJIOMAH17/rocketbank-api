.class public final Lru/rocketbank/r2d2/fragments/OpenSafeAccountFragment$Companion;
.super Ljava/lang/Object;
.source "OpenSafeAccountFragment.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lru/rocketbank/r2d2/fragments/OpenSafeAccountFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 175
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/Ref;)V
    .locals 0

    .line 175
    invoke-direct {p0}, Lru/rocketbank/r2d2/fragments/OpenSafeAccountFragment$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final newInstance(Lru/rocketbank/core/model/AvailableAccount;)Lru/rocketbank/r2d2/fragments/OpenSafeAccountFragment;
    .locals 4

    const-string v0, "availableAccount"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 181
    new-instance v0, Lru/rocketbank/r2d2/fragments/OpenSafeAccountFragment;

    invoke-direct {v0}, Lru/rocketbank/r2d2/fragments/OpenSafeAccountFragment;-><init>()V

    .line 182
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 184
    invoke-static {}, Lru/rocketbank/r2d2/fragments/OpenSafeAccountFragment;->access$getCURRENCY_NAME$cp()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lru/rocketbank/core/model/AvailableAccount;->getCurrency()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 185
    invoke-static {}, Lru/rocketbank/r2d2/fragments/OpenSafeAccountFragment;->access$getDESCRIPTION$cp()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lru/rocketbank/core/model/AvailableAccount;->getDescription()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    invoke-static {}, Lru/rocketbank/r2d2/fragments/OpenSafeAccountFragment;->access$getURL$cp()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lru/rocketbank/core/model/AvailableAccount;->getUrl()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    invoke-virtual {v0, v1}, Lru/rocketbank/r2d2/fragments/OpenSafeAccountFragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method
