.class final Lru/rocketbank/r2d2/charges/ChargeInfoActivity$onStart$1$2;
.super Ljava/lang/Object;
.source "ChargeInfoActivity.kt"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/rocketbank/r2d2/charges/ChargeInfoActivity$onStart$1;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lru/rocketbank/r2d2/charges/ChargeInfoActivity$onStart$1;


# direct methods
.method constructor <init>(Lru/rocketbank/r2d2/charges/ChargeInfoActivity$onStart$1;)V
    .locals 0

    iput-object p1, p0, Lru/rocketbank/r2d2/charges/ChargeInfoActivity$onStart$1$2;->this$0:Lru/rocketbank/r2d2/charges/ChargeInfoActivity$onStart$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .line 43
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 44
    iget-object p1, p0, Lru/rocketbank/r2d2/charges/ChargeInfoActivity$onStart$1$2;->this$0:Lru/rocketbank/r2d2/charges/ChargeInfoActivity$onStart$1;

    iget-object p1, p1, Lru/rocketbank/r2d2/charges/ChargeInfoActivity$onStart$1;->this$0:Lru/rocketbank/r2d2/charges/ChargeInfoActivity;

    sget-object p2, Lru/rocketbank/r2d2/charges/ChargePayStatusActivity;->Companion:Lru/rocketbank/r2d2/charges/ChargePayStatusActivity$Companion;

    iget-object v0, p0, Lru/rocketbank/r2d2/charges/ChargeInfoActivity$onStart$1$2;->this$0:Lru/rocketbank/r2d2/charges/ChargeInfoActivity$onStart$1;

    iget-object v0, v0, Lru/rocketbank/r2d2/charges/ChargeInfoActivity$onStart$1;->this$0:Lru/rocketbank/r2d2/charges/ChargeInfoActivity;

    check-cast v0, Landroid/app/Activity;

    iget-object v1, p0, Lru/rocketbank/r2d2/charges/ChargeInfoActivity$onStart$1$2;->this$0:Lru/rocketbank/r2d2/charges/ChargeInfoActivity$onStart$1;

    iget-object v1, v1, Lru/rocketbank/r2d2/charges/ChargeInfoActivity$onStart$1;->this$0:Lru/rocketbank/r2d2/charges/ChargeInfoActivity;

    invoke-virtual {v1}, Lru/rocketbank/r2d2/charges/ChargeInfoActivity;->getChargeModel()Lru/rocketbank/core/model/charge/ChargeModel;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Lru/rocketbank/r2d2/charges/ChargePayStatusActivity$Companion;->createIntent(Landroid/app/Activity;Lru/rocketbank/core/model/charge/ChargeModel;)Landroid/content/Intent;

    move-result-object p2

    sget-object v0, Lru/rocketbank/r2d2/charges/ChargeInfoActivity;->Companion:Lru/rocketbank/r2d2/charges/ChargeInfoActivity$Companion;

    invoke-virtual {v0}, Lru/rocketbank/r2d2/charges/ChargeInfoActivity$Companion;->getREQUEST_CODE()I

    move-result v0

    invoke-virtual {p1, p2, v0}, Lru/rocketbank/r2d2/charges/ChargeInfoActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method
