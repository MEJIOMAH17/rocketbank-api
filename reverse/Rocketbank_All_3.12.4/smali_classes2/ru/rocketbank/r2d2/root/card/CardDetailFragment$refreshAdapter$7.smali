.class final Lru/rocketbank/r2d2/root/card/CardDetailFragment$refreshAdapter$7;
.super Lkotlin/jvm/internal/Lambda;
.source "CardDetailFragment.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/rocketbank/r2d2/root/card/CardDetailFragment;->refreshAdapter(Lru/rocketbank/r2d2/root/card/binding/DetailCardViewInputModel;Lru/rocketbank/r2d2/root/card/CardDetailAdapter;)V
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
.field final synthetic this$0:Lru/rocketbank/r2d2/root/card/CardDetailFragment;


# direct methods
.method constructor <init>(Lru/rocketbank/r2d2/root/card/CardDetailFragment;)V
    .locals 0

    iput-object p1, p0, Lru/rocketbank/r2d2/root/card/CardDetailFragment$refreshAdapter$7;->this$0:Lru/rocketbank/r2d2/root/card/CardDetailFragment;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 45
    check-cast p1, Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/ParallaxItem;

    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/root/card/CardDetailFragment$refreshAdapter$7;->invoke(Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/ParallaxItem;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/ParallaxItem;)V
    .locals 2

    .line 239
    sget-object p1, Lru/rocketbank/r2d2/activities/AccountDetailsActivity;->Companion:Lru/rocketbank/r2d2/activities/AccountDetailsActivity$Companion;

    iget-object v0, p0, Lru/rocketbank/r2d2/root/card/CardDetailFragment$refreshAdapter$7;->this$0:Lru/rocketbank/r2d2/root/card/CardDetailFragment;

    invoke-virtual {v0}, Lru/rocketbank/r2d2/root/card/CardDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_0
    const-string v1, "activity!!"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/content/Context;

    iget-object v1, p0, Lru/rocketbank/r2d2/root/card/CardDetailFragment$refreshAdapter$7;->this$0:Lru/rocketbank/r2d2/root/card/CardDetailFragment;

    invoke-static {v1}, Lru/rocketbank/r2d2/root/card/CardDetailFragment;->access$getToken$p(Lru/rocketbank/r2d2/root/card/CardDetailFragment;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lru/rocketbank/r2d2/activities/AccountDetailsActivity$Companion;->start(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method
