.class public final Lru/rocketbank/r2d2/registration/new_passport/ImageResultFragment$Companion;
.super Ljava/lang/Object;
.source "ImageResultFragment.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lru/rocketbank/r2d2/registration/new_passport/ImageResultFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nImageResultFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ImageResultFragment.kt\nru/rocketbank/r2d2/registration/new_passport/ImageResultFragment$Companion\n*L\n1#1,64:1\n*E\n"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/Ref;)V
    .locals 0

    .line 48
    invoke-direct {p0}, Lru/rocketbank/r2d2/registration/new_passport/ImageResultFragment$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final newInstance(ILjava/lang/String;Ljava/lang/String;)Lru/rocketbank/r2d2/registration/new_passport/ImageResultFragment;
    .locals 3

    const-string v0, "filePath"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 55
    new-instance v0, Lru/rocketbank/r2d2/registration/new_passport/ImageResultFragment;

    invoke-direct {v0}, Lru/rocketbank/r2d2/registration/new_passport/ImageResultFragment;-><init>()V

    .line 56
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "STEP"

    .line 57
    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p1, "PATH"

    .line 58
    invoke-virtual {v1, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "PHOTO_TITLE"

    .line 59
    invoke-virtual {v1, p1, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    invoke-virtual {v0, v1}, Lru/rocketbank/r2d2/registration/new_passport/ImageResultFragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method
