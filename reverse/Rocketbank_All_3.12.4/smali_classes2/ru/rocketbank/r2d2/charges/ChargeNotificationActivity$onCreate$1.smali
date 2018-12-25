.class final Lru/rocketbank/r2d2/charges/ChargeNotificationActivity$onCreate$1;
.super Ljava/lang/Object;
.source "ChargeNotificationActivity.kt"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


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

    iput-object p1, p0, Lru/rocketbank/r2d2/charges/ChargeNotificationActivity$onCreate$1;->this$0:Lru/rocketbank/r2d2/charges/ChargeNotificationActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 0

    .line 76
    iget-object p1, p0, Lru/rocketbank/r2d2/charges/ChargeNotificationActivity$onCreate$1;->this$0:Lru/rocketbank/r2d2/charges/ChargeNotificationActivity;

    invoke-static {p1, p2}, Lru/rocketbank/r2d2/charges/ChargeNotificationActivity;->access$setPenaltyTaxNotificationEnabled$p(Lru/rocketbank/r2d2/charges/ChargeNotificationActivity;Z)V

    .line 77
    iget-object p1, p0, Lru/rocketbank/r2d2/charges/ChargeNotificationActivity$onCreate$1;->this$0:Lru/rocketbank/r2d2/charges/ChargeNotificationActivity;

    invoke-static {p1}, Lru/rocketbank/r2d2/charges/ChargeNotificationActivity;->access$updateNextButton(Lru/rocketbank/r2d2/charges/ChargeNotificationActivity;)V

    return-void
.end method
