.class final Lru/rocketbank/r2d2/fragments/profile/ProfileFragment$fillAdapterWithData$$inlined$let$lambda$1;
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


# instance fields
.field final synthetic this$0:Lru/rocketbank/r2d2/fragments/profile/ProfileFragment;


# direct methods
.method constructor <init>(Lru/rocketbank/r2d2/fragments/profile/ProfileFragment;)V
    .locals 0

    iput-object p1, p0, Lru/rocketbank/r2d2/fragments/profile/ProfileFragment$fillAdapterWithData$$inlined$let$lambda$1;->this$0:Lru/rocketbank/r2d2/fragments/profile/ProfileFragment;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 88
    check-cast p1, Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/ParallaxItem;

    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/fragments/profile/ProfileFragment$fillAdapterWithData$$inlined$let$lambda$1;->invoke(Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/ParallaxItem;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/ParallaxItem;)V
    .locals 2

    .line 460
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/profile/ProfileFragment$fillAdapterWithData$$inlined$let$lambda$1;->this$0:Lru/rocketbank/r2d2/fragments/profile/ProfileFragment;

    invoke-virtual {v0}, Lru/rocketbank/r2d2/fragments/profile/ProfileFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Lru/rocketbank/r2d2/activities/sound/SoundActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 461
    iget-object v0, p0, Lru/rocketbank/r2d2/fragments/profile/ProfileFragment$fillAdapterWithData$$inlined$let$lambda$1;->this$0:Lru/rocketbank/r2d2/fragments/profile/ProfileFragment;

    invoke-virtual {v0, p1}, Lru/rocketbank/r2d2/fragments/profile/ProfileFragment;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
