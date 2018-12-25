.class public final Lru/rocketbank/r2d2/registration/new_passport/NewPassportReadyFragment$Companion;
.super Ljava/lang/Object;
.source "NewPassportReadyFragment.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lru/rocketbank/r2d2/registration/new_passport/NewPassportReadyFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nNewPassportReadyFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 NewPassportReadyFragment.kt\nru/rocketbank/r2d2/registration/new_passport/NewPassportReadyFragment$Companion\n*L\n1#1,48:1\n*E\n"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/Ref;)V
    .locals 0

    .line 35
    invoke-direct {p0}, Lru/rocketbank/r2d2/registration/new_passport/NewPassportReadyFragment$Companion;-><init>()V

    return-void
.end method

.method public static bridge synthetic newInstance$default(Lru/rocketbank/r2d2/registration/new_passport/NewPassportReadyFragment$Companion;JILjava/lang/Object;)Lru/rocketbank/r2d2/registration/new_passport/NewPassportReadyFragment;
    .locals 0

    and-int/lit8 p3, p3, 0x1

    if-eqz p3, :cond_0

    const-wide/16 p1, 0x0

    .line 40
    :cond_0
    invoke-virtual {p0, p1, p2}, Lru/rocketbank/r2d2/registration/new_passport/NewPassportReadyFragment$Companion;->newInstance(J)Lru/rocketbank/r2d2/registration/new_passport/NewPassportReadyFragment;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final newInstance(J)Lru/rocketbank/r2d2/registration/new_passport/NewPassportReadyFragment;
    .locals 5

    .line 40
    new-instance v0, Lru/rocketbank/r2d2/registration/new_passport/NewPassportReadyFragment;

    invoke-direct {v0}, Lru/rocketbank/r2d2/registration/new_passport/NewPassportReadyFragment;-><init>()V

    .line 41
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-wide/16 v2, 0x0

    cmp-long v4, p1, v2

    if-eqz v4, :cond_0

    const-string v2, "ID"

    .line 43
    invoke-virtual {v1, v2, p1, p2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 41
    :cond_0
    invoke-virtual {v0, v1}, Lru/rocketbank/r2d2/registration/new_passport/NewPassportReadyFragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method
