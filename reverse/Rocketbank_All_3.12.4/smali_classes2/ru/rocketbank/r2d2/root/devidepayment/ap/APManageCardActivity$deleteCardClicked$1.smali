.class final Lru/rocketbank/r2d2/root/devidepayment/ap/APManageCardActivity$deleteCardClicked$1;
.super Ljava/lang/Object;
.source "APManageCardActivity.kt"

# interfaces
.implements Lrx/functions/Action1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/rocketbank/r2d2/root/devidepayment/ap/APManageCardActivity;->deleteCardClicked(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lrx/functions/Action1<",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lru/rocketbank/r2d2/root/devidepayment/ap/APManageCardActivity;


# direct methods
.method constructor <init>(Lru/rocketbank/r2d2/root/devidepayment/ap/APManageCardActivity;)V
    .locals 0

    iput-object p1, p0, Lru/rocketbank/r2d2/root/devidepayment/ap/APManageCardActivity$deleteCardClicked$1;->this$0:Lru/rocketbank/r2d2/root/devidepayment/ap/APManageCardActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .line 17
    check-cast p1, Lkotlin/Unit;

    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/root/devidepayment/ap/APManageCardActivity$deleteCardClicked$1;->call(Lkotlin/Unit;)V

    return-void
.end method

.method public final call(Lkotlin/Unit;)V
    .locals 0

    .line 106
    iget-object p1, p0, Lru/rocketbank/r2d2/root/devidepayment/ap/APManageCardActivity$deleteCardClicked$1;->this$0:Lru/rocketbank/r2d2/root/devidepayment/ap/APManageCardActivity;

    invoke-static {p1}, Lru/rocketbank/r2d2/root/devidepayment/ap/APManageCardActivity;->access$getDeleteSubscription$p(Lru/rocketbank/r2d2/root/devidepayment/ap/APManageCardActivity;)Lrx/Subscription;

    move-result-object p1

    invoke-interface {p1}, Lrx/Subscription;->unsubscribe()V

    return-void
.end method
