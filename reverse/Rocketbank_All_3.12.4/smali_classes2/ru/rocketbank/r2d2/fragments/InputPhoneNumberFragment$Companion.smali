.class public final Lru/rocketbank/r2d2/fragments/InputPhoneNumberFragment$Companion;
.super Ljava/lang/Object;
.source "InputPhoneNumberFragment.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lru/rocketbank/r2d2/fragments/InputPhoneNumberFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/Ref;)V
    .locals 0

    .line 27
    invoke-direct {p0}, Lru/rocketbank/r2d2/fragments/InputPhoneNumberFragment$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final newInstance(Lru/rocketbank/core/model/ChangeMobilePhone;)Lru/rocketbank/r2d2/fragments/InputPhoneNumberFragment;
    .locals 3

    const-string v0, "changeMobilePhone"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    new-instance v0, Lru/rocketbank/r2d2/fragments/InputPhoneNumberFragment;

    invoke-direct {v0}, Lru/rocketbank/r2d2/fragments/InputPhoneNumberFragment;-><init>()V

    .line 32
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 33
    invoke-static {}, Lru/rocketbank/r2d2/fragments/InputPhoneNumberFragment;->access$getKEY_CHANGE_MOBILE_PHONE$cp()Ljava/lang/String;

    move-result-object v2

    check-cast p1, Landroid/os/Parcelable;

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 34
    invoke-virtual {v0, v1}, Lru/rocketbank/r2d2/fragments/InputPhoneNumberFragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method
