.class final Lru/rocketbank/r2d2/charges/ChargeNotificationActivity$onCreate$3;
.super Ljava/lang/Object;
.source "ChargeNotificationActivity.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/rocketbank/r2d2/charges/ChargeNotificationActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lru/rocketbank/r2d2/charges/ChargeNotificationActivity;


# direct methods
.method constructor <init>(Lru/rocketbank/r2d2/charges/ChargeNotificationActivity;)V
    .locals 0

    iput-object p1, p0, Lru/rocketbank/r2d2/charges/ChargeNotificationActivity$onCreate$3;->this$0:Lru/rocketbank/r2d2/charges/ChargeNotificationActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 0

    .line 85
    iget-object p1, p0, Lru/rocketbank/r2d2/charges/ChargeNotificationActivity$onCreate$3;->this$0:Lru/rocketbank/r2d2/charges/ChargeNotificationActivity;

    invoke-static {p1}, Lru/rocketbank/r2d2/charges/ChargeNotificationActivity;->access$checkCharges(Lru/rocketbank/r2d2/charges/ChargeNotificationActivity;)V

    return-void
.end method
