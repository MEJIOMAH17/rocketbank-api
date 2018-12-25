.class public final Lru/rocketbank/r2d2/fragments/ChangeCodewordFragment$Companion;
.super Ljava/lang/Object;
.source "ChangeCodewordFragment.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lru/rocketbank/r2d2/fragments/ChangeCodewordFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nChangeCodewordFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ChangeCodewordFragment.kt\nru/rocketbank/r2d2/fragments/ChangeCodewordFragment$Companion\n*L\n1#1,148:1\n*E\n"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/Ref;)V
    .locals 0

    .line 29
    invoke-direct {p0}, Lru/rocketbank/r2d2/fragments/ChangeCodewordFragment$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final newInstance(Lru/rocketbank/core/model/ChangeCodeWord;Ljava/lang/String;)Lru/rocketbank/r2d2/fragments/ChangeCodewordFragment;
    .locals 3

    const-string v0, "changeCodeWord"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "plasticToken"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    new-instance v0, Lru/rocketbank/r2d2/fragments/ChangeCodewordFragment;

    invoke-direct {v0}, Lru/rocketbank/r2d2/fragments/ChangeCodewordFragment;-><init>()V

    .line 35
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 36
    invoke-static {}, Lru/rocketbank/r2d2/fragments/ChangeCodewordFragment;->access$getKEY_CHANGE_CODEWORD$cp()Ljava/lang/String;

    move-result-object v2

    check-cast p1, Landroid/os/Parcelable;

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 37
    invoke-static {}, Lru/rocketbank/r2d2/fragments/ChangeCodewordFragment;->access$getKEY_TOKEN_PLASTIC$cp()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    invoke-virtual {v0, v1}, Lru/rocketbank/r2d2/fragments/ChangeCodewordFragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method
