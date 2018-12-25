.class final Lru/rocketbank/r2d2/fragments/profile/ProfileFragment$fillAdapterWithData$$inlined$let$lambda$5;
.super Lkotlin/jvm/internal/Lambda;
.source "ProfileFragment.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


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
        "Lkotlin/jvm/functions/Function2<",
        "Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/ParallaxItem;",
        "Lru/rocketbank/r2d2/widgets/recycler/parallax/GenericViewHolder;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lru/rocketbank/r2d2/fragments/profile/ProfileFragment;


# direct methods
.method constructor <init>(Lru/rocketbank/r2d2/fragments/profile/ProfileFragment;)V
    .locals 0

    iput-object p1, p0, Lru/rocketbank/r2d2/fragments/profile/ProfileFragment$fillAdapterWithData$$inlined$let$lambda$5;->this$0:Lru/rocketbank/r2d2/fragments/profile/ProfileFragment;

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 88
    check-cast p1, Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/ParallaxItem;

    check-cast p2, Lru/rocketbank/r2d2/widgets/recycler/parallax/GenericViewHolder;

    invoke-virtual {p0, p1, p2}, Lru/rocketbank/r2d2/fragments/profile/ProfileFragment$fillAdapterWithData$$inlined$let$lambda$5;->invoke(Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/ParallaxItem;Lru/rocketbank/r2d2/widgets/recycler/parallax/GenericViewHolder;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/ParallaxItem;Lru/rocketbank/r2d2/widgets/recycler/parallax/GenericViewHolder;)V
    .locals 1

    const-string v0, "parallaxItem"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 478
    sget-object v0, Lru/rocketbank/r2d2/fragments/profile/ProfileAdapter;->Companion:Lru/rocketbank/r2d2/fragments/profile/ProfileAdapter$Companion;

    invoke-virtual {v0}, Lru/rocketbank/r2d2/fragments/profile/ProfileAdapter$Companion;->getFINGERPRINT()I

    move-result v0

    invoke-virtual {p1, v0}, Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/ParallaxItem;->setId(I)V

    if-nez p2, :cond_0

    .line 479
    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type ru.rocketbank.r2d2.widgets.recycler.parallax.vh.GenericSwitchViewHolder"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_0
    check-cast p2, Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/GenericSwitchViewHolder;

    .line 480
    iget-object p1, p0, Lru/rocketbank/r2d2/fragments/profile/ProfileFragment$fillAdapterWithData$$inlined$let$lambda$5;->this$0:Lru/rocketbank/r2d2/fragments/profile/ProfileFragment;

    invoke-static {p1}, Lru/rocketbank/r2d2/fragments/profile/ProfileFragment;->access$getTouchManager$p(Lru/rocketbank/r2d2/fragments/profile/ProfileFragment;)Lru/rocketbank/core/manager/TouchManager;

    move-result-object p1

    invoke-interface {p1}, Lru/rocketbank/core/manager/TouchManager;->isAvailable()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lru/rocketbank/r2d2/fragments/profile/ProfileFragment$fillAdapterWithData$$inlined$let$lambda$5;->this$0:Lru/rocketbank/r2d2/fragments/profile/ProfileFragment;

    invoke-static {p1}, Lru/rocketbank/r2d2/fragments/profile/ProfileFragment;->access$getTouchManager$p(Lru/rocketbank/r2d2/fragments/profile/ProfileFragment;)Lru/rocketbank/core/manager/TouchManager;

    move-result-object p1

    invoke-interface {p1}, Lru/rocketbank/core/manager/TouchManager;->gotValidToken()Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p2, p1}, Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/GenericSwitchViewHolder;->setEnabled(Z)V

    return-void
.end method
