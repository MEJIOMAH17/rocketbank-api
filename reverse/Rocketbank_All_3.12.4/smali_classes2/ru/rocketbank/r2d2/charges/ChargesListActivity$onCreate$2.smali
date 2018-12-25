.class final Lru/rocketbank/r2d2/charges/ChargesListActivity$onCreate$2;
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
        "Ljava/lang/Throwable;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lru/rocketbank/r2d2/charges/ChargesListActivity;


# direct methods
.method constructor <init>(Lru/rocketbank/r2d2/charges/ChargesListActivity;)V
    .locals 0

    iput-object p1, p0, Lru/rocketbank/r2d2/charges/ChargesListActivity$onCreate$2;->this$0:Lru/rocketbank/r2d2/charges/ChargesListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .line 45
    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/charges/ChargesListActivity$onCreate$2;->call(Ljava/lang/Throwable;)V

    return-void
.end method

.method public final call(Ljava/lang/Throwable;)V
    .locals 2

    .line 201
    invoke-static {p1}, Lru/rocketbank/core/manager/AnalyticsManager;->logException(Ljava/lang/Throwable;)V

    .line 202
    iget-object v0, p0, Lru/rocketbank/r2d2/charges/ChargesListActivity$onCreate$2;->this$0:Lru/rocketbank/r2d2/charges/ChargesListActivity;

    invoke-virtual {v0}, Lru/rocketbank/r2d2/charges/ChargesListActivity;->hideProgressDialog()V

    .line 203
    iget-object v0, p0, Lru/rocketbank/r2d2/charges/ChargesListActivity$onCreate$2;->this$0:Lru/rocketbank/r2d2/charges/ChargesListActivity;

    sget v1, Lru/rocketbank/r2d2/R$id;->recyclerView:I

    invoke-virtual {v0, v1}, Lru/rocketbank/r2d2/charges/ChargesListActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    invoke-static {v0, p1}, Lru/rocketbank/r2d2/helpers/UIHelper;->showSnackWithError(Landroid/view/View;Ljava/lang/Throwable;)Lru/rocketbank/core/widgets/RocketSnackbar;

    return-void
.end method
