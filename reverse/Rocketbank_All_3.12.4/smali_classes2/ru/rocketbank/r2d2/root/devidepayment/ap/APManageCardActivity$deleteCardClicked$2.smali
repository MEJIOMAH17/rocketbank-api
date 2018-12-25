.class final Lru/rocketbank/r2d2/root/devidepayment/ap/APManageCardActivity$deleteCardClicked$2;
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
        "Ljava/lang/Throwable;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lru/rocketbank/r2d2/root/devidepayment/ap/APManageCardActivity;


# direct methods
.method constructor <init>(Lru/rocketbank/r2d2/root/devidepayment/ap/APManageCardActivity;)V
    .locals 0

    iput-object p1, p0, Lru/rocketbank/r2d2/root/devidepayment/ap/APManageCardActivity$deleteCardClicked$2;->this$0:Lru/rocketbank/r2d2/root/devidepayment/ap/APManageCardActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .line 17
    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/root/devidepayment/ap/APManageCardActivity$deleteCardClicked$2;->call(Ljava/lang/Throwable;)V

    return-void
.end method

.method public final call(Ljava/lang/Throwable;)V
    .locals 2

    .line 108
    iget-object v0, p0, Lru/rocketbank/r2d2/root/devidepayment/ap/APManageCardActivity$deleteCardClicked$2;->this$0:Lru/rocketbank/r2d2/root/devidepayment/ap/APManageCardActivity;

    invoke-static {v0}, Lru/rocketbank/r2d2/root/devidepayment/ap/APManageCardActivity;->access$getDeleteSubscription$p(Lru/rocketbank/r2d2/root/devidepayment/ap/APManageCardActivity;)Lrx/Subscription;

    move-result-object v0

    invoke-interface {v0}, Lrx/Subscription;->unsubscribe()V

    const-string v0, "APManageCardActivity"

    .line 109
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method
