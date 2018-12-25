.class public final Lru/rocketbank/r2d2/root/chat/RatingDialogFragment$Companion;
.super Ljava/lang/Object;
.source "RatingDialogFragment.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lru/rocketbank/r2d2/root/chat/RatingDialogFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 181
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/Ref;)V
    .locals 0

    .line 181
    invoke-direct {p0}, Lru/rocketbank/r2d2/root/chat/RatingDialogFragment$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final getInstance(Lru/rocketbank/core/network/model/Rating;)Lru/rocketbank/r2d2/root/chat/RatingDialogFragment;
    .locals 3

    const-string v0, "rating"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 185
    new-instance v0, Lru/rocketbank/r2d2/root/chat/RatingDialogFragment;

    invoke-direct {v0}, Lru/rocketbank/r2d2/root/chat/RatingDialogFragment;-><init>()V

    .line 186
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 187
    invoke-static {}, Lru/rocketbank/r2d2/root/chat/RatingDialogFragment;->access$getRATING$cp()Ljava/lang/String;

    move-result-object v2

    check-cast p1, Landroid/os/Parcelable;

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 189
    invoke-virtual {v0, v1}, Lru/rocketbank/r2d2/root/chat/RatingDialogFragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method
