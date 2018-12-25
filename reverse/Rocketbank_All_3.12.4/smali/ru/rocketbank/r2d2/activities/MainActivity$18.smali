.class Lru/rocketbank/r2d2/activities/MainActivity$18;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Lcom/mikepenz/materialdrawer/Drawer$OnDrawerItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lru/rocketbank/r2d2/activities/MainActivity;->createMoneyMenu(Lru/rocketbank/core/model/UserModel;)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lru/rocketbank/r2d2/activities/MainActivity;

.field final synthetic val$depositModel:Lru/rocketbank/core/model/DepositModel;


# direct methods
.method constructor <init>(Lru/rocketbank/r2d2/activities/MainActivity;Lru/rocketbank/core/model/DepositModel;)V
    .locals 0

    .line 1310
    iput-object p1, p0, Lru/rocketbank/r2d2/activities/MainActivity$18;->this$0:Lru/rocketbank/r2d2/activities/MainActivity;

    iput-object p2, p0, Lru/rocketbank/r2d2/activities/MainActivity$18;->val$depositModel:Lru/rocketbank/core/model/DepositModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/view/View;ILcom/mikepenz/materialdrawer/model/interfaces/IDrawerItem;)Z
    .locals 0

    .line 1313
    iget-object p1, p0, Lru/rocketbank/r2d2/activities/MainActivity$18;->this$0:Lru/rocketbank/r2d2/activities/MainActivity;

    iget-object p2, p0, Lru/rocketbank/r2d2/activities/MainActivity$18;->val$depositModel:Lru/rocketbank/core/model/DepositModel;

    invoke-virtual {p1, p2}, Lru/rocketbank/r2d2/activities/MainActivity;->showDeposit(Lru/rocketbank/core/model/DepositModel;)V

    .line 1314
    iget-object p1, p0, Lru/rocketbank/r2d2/activities/MainActivity$18;->this$0:Lru/rocketbank/r2d2/activities/MainActivity;

    invoke-static {p1}, Lru/rocketbank/r2d2/activities/MainActivity;->access$1200(Lru/rocketbank/r2d2/activities/MainActivity;)Lcom/mikepenz/materialdrawer/Drawer;

    move-result-object p1

    invoke-virtual {p1}, Lcom/mikepenz/materialdrawer/Drawer;->closeDrawer()V

    const/4 p1, 0x1

    return p1
.end method
