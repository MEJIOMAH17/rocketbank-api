.class final Lru/rocketbank/r2d2/fragments/profile/ProfileFragment$fillAdapterWithData$$inlined$let$lambda$10;
.super Lkotlin/jvm/internal/Lambda;
.source "ProfileFragment.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/rocketbank/r2d2/fragments/profile/ProfileFragment;->fillAdapterWithData()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/ParallaxItem;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nProfileFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ProfileFragment.kt\nru/rocketbank/r2d2/fragments/profile/ProfileFragment$fillAdapterWithData$1$10\n*L\n1#1,1654:1\n*E\n"
.end annotation


# instance fields
.field final synthetic this$0:Lru/rocketbank/r2d2/fragments/profile/ProfileFragment;


# direct methods
.method constructor <init>(Lru/rocketbank/r2d2/fragments/profile/ProfileFragment;)V
    .locals 0

    iput-object p1, p0, Lru/rocketbank/r2d2/fragments/profile/ProfileFragment$fillAdapterWithData$$inlined$let$lambda$10;->this$0:Lru/rocketbank/r2d2/fragments/profile/ProfileFragment;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 88
    check-cast p1, Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/ParallaxItem;

    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/fragments/profile/ProfileFragment$fillAdapterWithData$$inlined$let$lambda$10;->invoke(Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/ParallaxItem;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/ParallaxItem;)V
    .locals 6

    .line 491
    iget-object p1, p0, Lru/rocketbank/r2d2/fragments/profile/ProfileFragment$fillAdapterWithData$$inlined$let$lambda$10;->this$0:Lru/rocketbank/r2d2/fragments/profile/ProfileFragment;

    invoke-static {p1}, Lru/rocketbank/r2d2/fragments/profile/ProfileFragment;->access$getUserModel$p(Lru/rocketbank/r2d2/fragments/profile/ProfileFragment;)Lru/rocketbank/core/model/UserModel;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 493
    sget-object v0, Lru/rocketbank/r2d2/charges/ChargeNotificationActivity;->Companion:Lru/rocketbank/r2d2/charges/ChargeNotificationActivity$Companion;

    iget-object v1, p0, Lru/rocketbank/r2d2/fragments/profile/ProfileFragment$fillAdapterWithData$$inlined$let$lambda$10;->this$0:Lru/rocketbank/r2d2/fragments/profile/ProfileFragment;

    invoke-virtual {v1}, Lru/rocketbank/r2d2/fragments/profile/ProfileFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    const-string v2, "context!!"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 494
    invoke-virtual {p1}, Lru/rocketbank/core/model/UserModel;->isPenaltyTaxNotifications()Z

    move-result v2

    .line 495
    invoke-virtual {p1}, Lru/rocketbank/core/model/UserModel;->getInn()Ljava/lang/String;

    move-result-object v3

    .line 496
    invoke-virtual {p1}, Lru/rocketbank/core/model/UserModel;->getCtc()Ljava/lang/String;

    move-result-object v4

    .line 497
    invoke-virtual {p1}, Lru/rocketbank/core/model/UserModel;->getDriverLicence()Ljava/lang/String;

    move-result-object v5

    .line 493
    invoke-virtual/range {v0 .. v5}, Lru/rocketbank/r2d2/charges/ChargeNotificationActivity$Companion;->start(Landroid/content/Context;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method
