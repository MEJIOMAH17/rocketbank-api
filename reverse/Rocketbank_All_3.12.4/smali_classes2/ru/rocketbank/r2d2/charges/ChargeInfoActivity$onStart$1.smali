.class final Lru/rocketbank/r2d2/charges/ChargeInfoActivity$onStart$1;
.super Ljava/lang/Object;
.source "ChargeInfoActivity.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/rocketbank/r2d2/charges/ChargeInfoActivity;->onStart()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lru/rocketbank/r2d2/charges/ChargeInfoActivity;


# direct methods
.method constructor <init>(Lru/rocketbank/r2d2/charges/ChargeInfoActivity;)V
    .locals 0

    iput-object p1, p0, Lru/rocketbank/r2d2/charges/ChargeInfoActivity$onStart$1;->this$0:Lru/rocketbank/r2d2/charges/ChargeInfoActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .line 39
    new-instance p1, Landroid/app/AlertDialog$Builder;

    iget-object v0, p0, Lru/rocketbank/r2d2/charges/ChargeInfoActivity$onStart$1;->this$0:Lru/rocketbank/r2d2/charges/ChargeInfoActivity;

    check-cast v0, Landroid/content/Context;

    invoke-direct {p1, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 40
    iget-object v0, p0, Lru/rocketbank/r2d2/charges/ChargeInfoActivity$onStart$1;->this$0:Lru/rocketbank/r2d2/charges/ChargeInfoActivity;

    invoke-virtual {v0}, Lru/rocketbank/r2d2/charges/ChargeInfoActivity;->getChargeModel()Lru/rocketbank/core/model/charge/ChargeModel;

    move-result-object v0

    invoke-virtual {v0}, Lru/rocketbank/core/model/charge/ChargeModel;->getWarning()Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 41
    sget-object v0, Lru/rocketbank/r2d2/charges/ChargeInfoActivity$onStart$1$1;->INSTANCE:Lru/rocketbank/r2d2/charges/ChargeInfoActivity$onStart$1$1;

    check-cast v0, Landroid/content/DialogInterface$OnClickListener;

    const v1, 0x7f11008b

    invoke-virtual {p1, v1, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 42
    new-instance v0, Lru/rocketbank/r2d2/charges/ChargeInfoActivity$onStart$1$2;

    invoke-direct {v0, p0}, Lru/rocketbank/r2d2/charges/ChargeInfoActivity$onStart$1$2;-><init>(Lru/rocketbank/r2d2/charges/ChargeInfoActivity$onStart$1;)V

    check-cast v0, Landroid/content/DialogInterface$OnClickListener;

    const v1, 0x7f11032e

    invoke-virtual {p1, v1, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 46
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method
