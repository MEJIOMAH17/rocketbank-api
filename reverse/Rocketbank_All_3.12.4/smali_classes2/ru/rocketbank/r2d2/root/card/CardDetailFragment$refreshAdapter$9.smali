.class final Lru/rocketbank/r2d2/root/card/CardDetailFragment$refreshAdapter$9;
.super Lkotlin/jvm/internal/Lambda;
.source "CardDetailFragment.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


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
        "Lkotlin/jvm/functions/Function0<",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic $cardParameters:Lru/rocketbank/r2d2/root/card/binding/CardParameters;

.field final synthetic this$0:Lru/rocketbank/r2d2/root/card/CardDetailFragment;


# direct methods
.method constructor <init>(Lru/rocketbank/r2d2/root/card/CardDetailFragment;Lru/rocketbank/r2d2/root/card/binding/CardParameters;)V
    .locals 0

    iput-object p1, p0, Lru/rocketbank/r2d2/root/card/CardDetailFragment$refreshAdapter$9;->this$0:Lru/rocketbank/r2d2/root/card/CardDetailFragment;

    iput-object p2, p0, Lru/rocketbank/r2d2/root/card/CardDetailFragment$refreshAdapter$9;->$cardParameters:Lru/rocketbank/r2d2/root/card/binding/CardParameters;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 45
    invoke-virtual {p0}, Lru/rocketbank/r2d2/root/card/CardDetailFragment$refreshAdapter$9;->invoke()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke()V
    .locals 2

    .line 250
    iget-object v0, p0, Lru/rocketbank/r2d2/root/card/CardDetailFragment$refreshAdapter$9;->this$0:Lru/rocketbank/r2d2/root/card/CardDetailFragment;

    iget-object v1, p0, Lru/rocketbank/r2d2/root/card/CardDetailFragment$refreshAdapter$9;->$cardParameters:Lru/rocketbank/r2d2/root/card/binding/CardParameters;

    invoke-virtual {v1}, Lru/rocketbank/r2d2/root/card/binding/CardParameters;->isLocked()Z

    move-result v1

    invoke-static {v0, v1}, Lru/rocketbank/r2d2/root/card/CardDetailFragment;->access$lockUnlockCard(Lru/rocketbank/r2d2/root/card/CardDetailFragment;Z)V

    return-void
.end method
