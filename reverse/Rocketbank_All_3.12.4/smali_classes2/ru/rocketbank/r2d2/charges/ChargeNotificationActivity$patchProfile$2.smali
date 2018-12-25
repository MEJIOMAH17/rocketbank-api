.class final Lru/rocketbank/r2d2/charges/ChargeNotificationActivity$patchProfile$2;
.super Ljava/lang/Object;
.source "ChargeNotificationActivity.kt"

# interfaces
.implements Lrx/functions/Action1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/rocketbank/r2d2/charges/ChargeNotificationActivity;->patchProfile()V
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
.field final synthetic this$0:Lru/rocketbank/r2d2/charges/ChargeNotificationActivity;


# direct methods
.method constructor <init>(Lru/rocketbank/r2d2/charges/ChargeNotificationActivity;)V
    .locals 0

    iput-object p1, p0, Lru/rocketbank/r2d2/charges/ChargeNotificationActivity$patchProfile$2;->this$0:Lru/rocketbank/r2d2/charges/ChargeNotificationActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic call(Ljava/lang/Object;)V
    .locals 0

    .line 30
    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Lru/rocketbank/r2d2/charges/ChargeNotificationActivity$patchProfile$2;->call(Ljava/lang/Throwable;)V

    return-void
.end method

.method public final call(Ljava/lang/Throwable;)V
    .locals 2

    .line 115
    iget-object v0, p0, Lru/rocketbank/r2d2/charges/ChargeNotificationActivity$patchProfile$2;->this$0:Lru/rocketbank/r2d2/charges/ChargeNotificationActivity;

    invoke-virtual {v0}, Lru/rocketbank/r2d2/charges/ChargeNotificationActivity;->hideProgressDialog()V

    .line 116
    iget-object v0, p0, Lru/rocketbank/r2d2/charges/ChargeNotificationActivity$patchProfile$2;->this$0:Lru/rocketbank/r2d2/charges/ChargeNotificationActivity;

    sget v1, Lru/rocketbank/r2d2/R$id;->content:I

    invoke-virtual {v0, v1}, Lru/rocketbank/r2d2/charges/ChargeNotificationActivity;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-static {v0, p1}, Lru/rocketbank/r2d2/helpers/UIHelper;->showSnackWithError(Landroid/view/View;Ljava/lang/Throwable;)Lru/rocketbank/core/widgets/RocketSnackbar;

    return-void
.end method
