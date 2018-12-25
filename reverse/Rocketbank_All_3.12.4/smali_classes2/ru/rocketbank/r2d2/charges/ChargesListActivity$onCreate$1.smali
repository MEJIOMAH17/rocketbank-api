.class final Lru/rocketbank/r2d2/charges/ChargesListActivity$onCreate$1;
.super Ljava/lang/Object;
.source "ChargesListActivity.kt"

# interfaces
.implements Lrx/functions/Action1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/rocketbank/r2d2/charges/ChargesListActivity;->onCreate(Landroid/os/Bundle;)V
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
        "Ljava/util/ArrayList<",
        "Lru/rocketbank/core/model/charge/ChargeModel;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lru/rocketbank/r2d2/charges/ChargesListActivity;


# direct methods
.method constructor <init>(Lru/rocketbank/r2d2/charges/ChargesListActivity;)V
    .locals 0

    iput-object p1, p0, Lru/rocketbank/r2d2/charges/ChargesListActivity$onCreate$1;->this$0:Lru/rocketbank/r2d2/charges/ChargesListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .line 45
    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/charges/ChargesListActivity$onCreate$1;->call(Ljava/util/ArrayList;)V

    return-void
.end method

.method public final call(Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lru/rocketbank/core/model/charge/ChargeModel;",
            ">;)V"
        }
    .end annotation

    .line 197
    iget-object v0, p0, Lru/rocketbank/r2d2/charges/ChargesListActivity$onCreate$1;->this$0:Lru/rocketbank/r2d2/charges/ChargesListActivity;

    invoke-virtual {v0}, Lru/rocketbank/r2d2/charges/ChargesListActivity;->hideProgressDialog()V

    .line 198
    iget-object v0, p0, Lru/rocketbank/r2d2/charges/ChargesListActivity$onCreate$1;->this$0:Lru/rocketbank/r2d2/charges/ChargesListActivity;

    const-string v1, "it"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, p1}, Lru/rocketbank/r2d2/charges/ChargesListActivity;->access$setCharges$p(Lru/rocketbank/r2d2/charges/ChargesListActivity;Ljava/util/ArrayList;)V

    .line 199
    iget-object p1, p0, Lru/rocketbank/r2d2/charges/ChargesListActivity$onCreate$1;->this$0:Lru/rocketbank/r2d2/charges/ChargesListActivity;

    invoke-virtual {p1}, Lru/rocketbank/r2d2/charges/ChargesListActivity;->showData()V

    return-void
.end method
