.class final Lru/rocketbank/r2d2/root/card/CardDetailFragment$refreshAdapter$4;
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

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCardDetailFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CardDetailFragment.kt\nru/rocketbank/r2d2/root/card/CardDetailFragment$refreshAdapter$4\n*L\n1#1,494:1\n*E\n"
.end annotation


# instance fields
.field final synthetic this$0:Lru/rocketbank/r2d2/root/card/CardDetailFragment;


# direct methods
.method constructor <init>(Lru/rocketbank/r2d2/root/card/CardDetailFragment;)V
    .locals 0

    iput-object p1, p0, Lru/rocketbank/r2d2/root/card/CardDetailFragment$refreshAdapter$4;->this$0:Lru/rocketbank/r2d2/root/card/CardDetailFragment;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 45
    check-cast p1, Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/ParallaxItem;

    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/root/card/CardDetailFragment$refreshAdapter$4;->invoke(Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/ParallaxItem;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Lru/rocketbank/r2d2/widgets/recycler/parallax/vh/ParallaxItem;)V
    .locals 3

    .line 215
    iget-object p1, p0, Lru/rocketbank/r2d2/root/card/CardDetailFragment$refreshAdapter$4;->this$0:Lru/rocketbank/r2d2/root/card/CardDetailFragment;

    invoke-static {p1}, Lru/rocketbank/r2d2/root/card/CardDetailFragment;->access$getChangePin$p(Lru/rocketbank/r2d2/root/card/CardDetailFragment;)Lru/rocketbank/core/model/dto/ChangePin;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 216
    iget-object v0, p0, Lru/rocketbank/r2d2/root/card/CardDetailFragment$refreshAdapter$4;->this$0:Lru/rocketbank/r2d2/root/card/CardDetailFragment;

    invoke-virtual {v0}, Lru/rocketbank/r2d2/root/card/CardDetailFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v0, v1, p1, v2}, Lru/rocketbank/r2d2/activities/ChangeCodeActivity;->startPin(Landroid/content/Context;ZLru/rocketbank/core/model/dto/ChangePin;Z)V

    return-void

    :cond_0
    return-void
.end method
