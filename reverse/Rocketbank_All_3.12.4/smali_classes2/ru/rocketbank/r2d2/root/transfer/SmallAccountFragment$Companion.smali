.class public final Lru/rocketbank/r2d2/root/transfer/SmallAccountFragment$Companion;
.super Ljava/lang/Object;
.source "SmallAccountFragment.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lru/rocketbank/r2d2/root/transfer/SmallAccountFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSmallAccountFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SmallAccountFragment.kt\nru/rocketbank/r2d2/root/transfer/SmallAccountFragment$Companion\n*L\n1#1,138:1\n*E\n"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 125
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/Ref;)V
    .locals 0

    .line 125
    invoke-direct {p0}, Lru/rocketbank/r2d2/root/transfer/SmallAccountFragment$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final createArguments(Ljava/lang/String;)Landroid/os/Bundle;
    .locals 2

    const-string v0, "token"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 128
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "TOKEN"

    .line 129
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public final newInstance(Ljava/lang/String;)Lru/rocketbank/r2d2/root/transfer/SmallAccountFragment;
    .locals 2

    const-string v0, "token"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 133
    new-instance v0, Lru/rocketbank/r2d2/root/transfer/SmallAccountFragment;

    invoke-direct {v0}, Lru/rocketbank/r2d2/root/transfer/SmallAccountFragment;-><init>()V

    .line 134
    move-object v1, p0

    check-cast v1, Lru/rocketbank/r2d2/root/transfer/SmallAccountFragment$Companion;

    invoke-virtual {v1, p1}, Lru/rocketbank/r2d2/root/transfer/SmallAccountFragment$Companion;->createArguments(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    invoke-virtual {v0, p1}, Lru/rocketbank/r2d2/root/transfer/SmallAccountFragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method
