.class Lru/rocketbank/r2d2/activities/MainActivity$8;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/rocketbank/r2d2/activities/MainActivity;->showJointRequest()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lru/rocketbank/r2d2/activities/MainActivity;

.field final synthetic val$jointAccount:Lru/rocketbank/core/model/JointAccount;


# direct methods
.method constructor <init>(Lru/rocketbank/r2d2/activities/MainActivity;Lru/rocketbank/core/model/JointAccount;)V
    .locals 0

    .line 481
    iput-object p1, p0, Lru/rocketbank/r2d2/activities/MainActivity$8;->this$0:Lru/rocketbank/r2d2/activities/MainActivity;

    iput-object p2, p0, Lru/rocketbank/r2d2/activities/MainActivity$8;->val$jointAccount:Lru/rocketbank/core/model/JointAccount;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .line 484
    iget-object p1, p0, Lru/rocketbank/r2d2/activities/MainActivity$8;->this$0:Lru/rocketbank/r2d2/activities/MainActivity;

    iget-object p2, p0, Lru/rocketbank/r2d2/activities/MainActivity$8;->this$0:Lru/rocketbank/r2d2/activities/MainActivity;

    invoke-virtual {p2}, Lru/rocketbank/r2d2/activities/MainActivity;->getRocketApi()Lru/rocketbank/core/network/api/RocketAPI;

    move-result-object p2

    iget-object v0, p0, Lru/rocketbank/r2d2/activities/MainActivity$8;->val$jointAccount:Lru/rocketbank/core/model/JointAccount;

    invoke-virtual {v0}, Lru/rocketbank/core/model/JointAccount;->getId()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const-string v1, ""

    invoke-interface {p2, v0, v1}, Lru/rocketbank/core/network/api/RocketAPI;->jointСonfirm(ILjava/lang/String;)Lrx/Observable;

    move-result-object p2

    invoke-static {p1, p2}, Lru/rocketbank/r2d2/activities/MainActivity;->access$800(Lru/rocketbank/r2d2/activities/MainActivity;Lrx/Observable;)V

    return-void
.end method
